from PyQt6.QtCore import QMarginsF, QPoint
from PyQt6.QtGui import QPainter, QPageSize, QPdfWriter, QPageLayout, QColor, QRegion
from PyQt6.QtWidgets import QWidget

from views.page_elements import InvoiceListItem, PaymentFormPopup, ConfirmDialog, ReceiptPopup


class PaymentController:
    def __init__(self, payment_page, mainWindow_controller):
        self.page = payment_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.invoice_widgets = []
        self.populate_invoice_list()
        self.setup()

    def setup(self):
        self.page.paid_button.clicked.connect(lambda: self.sort_status_invoice('Paid'))
        self.page.pending_button.clicked.connect(lambda: self.sort_status_invoice('Pending'))
        self.page.search_input.textChanged.connect(self.search_invoice)
        self.page.clear_button.clicked.connect(lambda: self.populate_invoice_list())

    def populate_invoice_list(self):
        self.invoice_widgets.clear()
        while self.page.invoice_list.count():
            widget = self.page.invoice_list.takeAt(0).widget()
            if widget:
                widget.deleteLater()
        list = self.db.invoices_db.get_invoice_list()
        for item in list:
            l = InvoiceListItem()
            l.id_label.setText(str(item[0]))
            l.name_label.setText(str(item[1]) + '\n' + str(item[2]))
            l.service_label.setText(str(item[3]))
            l.date_label.setText(str(item[4]))
            l.amount_label.setText(str(item[5]))
            l.status_label.setText(str(item[6]))

            def handle_status_variations():
                if str(item[6]) == 'Paid':
                    l.cont6.setStyleSheet('#cont6 {background-color: #F0FDFA; border: 1px solid #B8E0DD; border-radius: 15px;}')
                    l.status_label.setStyleSheet('background-color: #F0FDFA; color: #2E6B66;')
                    l.action_button.setText('View\nReceipt')
                    l.action_button.setStyleSheet('#action_button{color:#367d77;background:transparent;border:0px;}#action_button:hover{text-decoration:underline;}')

            handle_status_variations()
            id = item[0]

            if str(item[6]) == 'Paid':
                l.action_button.clicked.connect(lambda _, invid=id: self.show_receipt_preview(invid))
            else:
                l.action_button.clicked.connect(lambda _, invid=id: self.show_payment_form(invid))

            self.page.invoice_list.addWidget(l)
            self.invoice_widgets.append(l)
        self.page.invoice_list.addStretch(1)

    def search_invoice(self, text):
        for widget in self.invoice_widgets:
            if text.lower() in widget.name_label.text().lower():
                widget.show()
            else:
                widget.hide()

    def sort_status_invoice(self, text):
        for widget in self.invoice_widgets:
            if text.lower() in widget.status_label.text().lower():
                widget.show()
            else:
                widget.hide()

    def show_payment_form(self, id):
        form = PaymentFormPopup(self.page)
        form.show()
        details = self.db.invoices_db.get_invoice_details(id)

        form.invoiceid_label.setText(str(details[0]))
        form.name_label.setText(details[1])
        form.service_label.setText(details[2])
        form.date_label.setText(str(details[3]))
        form.amount_label.setText(str(details[4]) + ' PHP')

        def check_amount(text):
            try:
                amount = float(text)
            except ValueError:
                form.feedback_label.setText('Invalid amount.')
                form.save_button.hide()
                return

            if amount > float(details[4]):
                form.feedback_label.setText('Amount exceeded.')
                form.save_button.hide()
            elif amount <= 0:
                form.feedback_label.setText('Invalid amount.')
                form.save_button.hide()
            elif amount < (float(details[4])):
                form.feedback_label.setText('Amount insufficient.')
                form.save_button.hide()
            else:
                form.feedback_label.setText('')
                form.save_button.show()

        def get_data():
            return [
                details[0],
                float(form.amount_field.text()),
                form.method_field.currentText()
                ]

        form.amount_field.setText(str(details[4]))
        form.amount_field.textChanged.connect(check_amount)
        form.save_button.clicked.connect(lambda _, : self.dialog_add_payment(form, get_data()))
        form.cancel_button.clicked.connect(lambda: form.close())

    def dialog_add_payment(self, form, data=None):
        prompt = ConfirmDialog(form)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.invoices_db.pay_invoice(*data)
            prompt.close()
            form.close()
            self.populate_invoice_list()

    def show_receipt_preview(self, id):
        popup = ReceiptPopup(self.page)
        popup.show()
        details = self.db.invoices_db.get_invoice_receipt(id)

        popup.paymentid_label.setText(str(details[0]))
        popup.paymentdate_label.setText(str(details[1]))
        popup.paymenttime_label.setText(str(details[2]))
        popup.patientid_label.setText(str(details[3]))
        popup.patientname_label.setText(str(details[4]))
        popup.service_label.setText(str(details[5]))
        popup.dentist_label.setText(str(details[6]))
        popup.servicedate_label.setText(str(details[7]))
        popup.totalamount_label.setText('PHP ' + str(details[8]))
        popup.method_label.setText(str(details[9]))
        popup.amountpaid_label.setText('PHP ' + str(details[10]))

        popup.export_button.clicked.connect(lambda: self.export_widget_to_pdf(popup.receipt_container, 'receipt.pdf'))
        popup.close_button.clicked.connect(lambda: popup.close())

    def export_widget_to_pdf(self, widget, filename):
        writer = QPdfWriter(filename)
        writer.setPageSize(QPageSize(QPageSize.PageSizeId.A4))
        writer.setResolution(300)
        writer.setPageLayout(QPageLayout(
            QPageSize(QPageSize.PageSizeId.A4),
            QPageLayout.Orientation.Portrait,
            QMarginsF(10, 10, 10, 10)
        ))
        painter = QPainter(writer)

        try:
            # 1. Scaling
            pdf_rect = writer.pageLayout().paintRectPixels(writer.resolution())
            scale_x = pdf_rect.width() / widget.width()
            scale_y = pdf_rect.height() / widget.height()
            scale_factor = min(scale_x, scale_y)
            painter.scale(scale_factor, scale_factor)

            painter.fillRect(widget.rect(), QColor("white"))

            widget.render(
                painter,
                QPoint(0, 0),
                QRegion(),
                QWidget.RenderFlag.DrawChildren
            )
        finally:
            painter.end()
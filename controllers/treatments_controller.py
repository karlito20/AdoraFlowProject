from datetime import datetime, date

from views.page_elements import TreatmentsListItem, ConfirmDialog, ErrorDialog


class TreatmentsController:
    def __init__(self, treatment_page, mainWindow_controller):
        self.page = treatment_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.treatments_widgets = []
        self.populate_treatments_list()
        self.setup()

    def setup(self):
        self.page.search_input.textChanged.connect(self.search_treatments)

    def populate_treatments_list(self):
        self.treatments_widgets.clear()
        while self.page.treatment_list_contents.count():
            widget = self.page.treatment_list_contents.takeAt(0).widget()
            if widget:
                widget.deleteLater()

        max_cols = 2
        details = self.db.appointments_db.get_upcoming_appointments_name_datetime()
        options = self.db.treatments_db.get_services_id_list()
        for i, item in enumerate(details):
            row = i // max_cols
            col = i % max_cols
            t = TreatmentsListItem()

            t.name_label.setText(str(item[0]))
            f = datetime.strptime(str(item[2]), "%H:%M:%S")
            t.datetime_label.setText(str(item[1]) + ' | ' + f.strftime('%I:%M %p'))

            for o in options:
                t.service_field.addItem(str(o[0]), int(o[1]))
                t.service_field.setCurrentIndex(-1)

            t.save_button.clicked.connect( lambda _, t=t, item=item: self.dialog_add_treatment(item, t))
            self.page.treatment_list_contents.addWidget(t, row, col)
            self.treatments_widgets.append(t)

    def refresh_treatments_list(self):
        while self.page.treatment_list_contents.count():
            item = self.page.treatment_list_contents.takeAt(0)
            widget = item.widget()
            if widget is not None:
                widget.setParent(None)

        self.populate_treatments_list()

    def dialog_add_treatment(self, item, t):
        prompt = ConfirmDialog(self.page)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            print(item[4], self.mainWindow_controller.userid, item[3], date.today(), t.notes_field.toPlainText(),
                  int(t.service_field.currentData()))
            try:
                self.db.treatments_db.handle_add_treatment(
                    int(item[4]),
                    int(self.mainWindow_controller.userid),
                    int(item[3]),
                    str(date.today()),
                    t.notes_field.toPlainText(),
                    int(t.service_field.currentData()))
            except TypeError:
                err = ErrorDialog(self.page)
                prompt.close()
                err.show()
                return
            prompt.close()
            self.refresh_treatments_list()

    def search_treatments(self, text):
        for widget in self.treatments_widgets:
            if text.lower() in widget.name_label.text().lower():
                widget.show()
            else:
                widget.hide()

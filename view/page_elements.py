from PyQt6.QtCore import Qt, pyqtSignal
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import QWidget, QDialog, QGraphicsDropShadowEffect
from PyQt6.uic import loadUi

from resources import resource_path


class ErrorDialog(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_error.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)
        self.close_button.clicked.connect(lambda: self.close())

class ConfirmDialog(QDialog):
    confirm = pyqtSignal()
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/confirm_dialog.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

        self.confirm_button.clicked.connect(lambda: self.confirm.emit())
        self.cancel_button.clicked.connect(lambda: self.close())

class DashboardListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_dashboard.ui'), self)

class PatientsListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_patients.ui'), self)

class PatientDetailsPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_patientdetails.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class PatientFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_patientform.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class AppointmentsListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_appointments.ui'), self)

class AppointmentFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_appointmentform.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class ReschedulePopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_resched.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class RemoveAppointmentPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_cancelapt.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class UserAccessListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_useraccess.ui'), self)

class UserAccessFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_useraccessform.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class TreatmentsListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_treatment.ui'), self)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

        apply_shadow(self.container)

class InvoiceListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/item_invoice.ui'), self)

class PaymentFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_payment.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class ReceiptPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_receipt.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class CardPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi(resource_path('ui/popup_card.ui'), self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

        self.setup()

    def setup(self):
        self.label1.hide()
        self.label2.hide()
        self.label3.hide()
        self.label4.hide()
        self.val1.hide()
        self.val2.hide()
        self.val3.hide()
        self.val4.hide()

def apply_shadow(widget):
    shadow = QGraphicsDropShadowEffect()
    shadow.setBlurRadius(10)
    shadow.setXOffset(1)
    shadow.setYOffset(5)
    shadow.setColor(QColor(Qt.GlobalColor.gray))
    widget.setGraphicsEffect(shadow)



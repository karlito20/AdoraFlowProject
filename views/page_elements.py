from PyQt6.QtCore import Qt, pyqtSignal
from PyQt6.QtWidgets import QWidget, QDialog
from PyQt6.uic import loadUi

class ConfirmDialog(QDialog):
    confirm = pyqtSignal()
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/confirm_dialog.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

        self.confirm_button.clicked.connect(lambda: self.confirm.emit())
        self.cancel_button.clicked.connect(lambda: self.close())

class DashboardListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/item_dashboard.ui', self)

class PatientsListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/item_patients.ui', self)

class PatientDetailsPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/popup_patientdetails.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class PatientFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/popup_patientform.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class AppointmentsListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/item_appointments.ui', self)

class AppointmentFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/popup_appointmentform.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class ReschedulePopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/popup_resched.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)

class UserAccessListItem(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/item_useraccess.ui', self)

class UserAccessFormPopup(QDialog):
    def __init__(self, parent=None):
        super().__init__(parent)
        loadUi('ui/popup_useraccessform.ui', self)
        self.setWindowFlags(Qt.WindowType.Dialog | Qt.WindowType.FramelessWindowHint)
        self.setAttribute(Qt.WidgetAttribute.WA_TranslucentBackground)






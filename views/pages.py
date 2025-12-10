from PyQt6.QtWidgets import QWidget
from PyQt6.uic import loadUi


class DashboardPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageDashboard.ui', self)

class PatientsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PagePatients.ui', self)

class AppointmentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageAppointments.ui', self)

class TreatmentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageTreatments.ui', self)

class PaymentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PagePayments.ui', self)

class ReportsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageReports.ui', self)

class UserAccessPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageUserAccess.ui', self)



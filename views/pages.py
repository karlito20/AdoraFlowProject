from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor
from PyQt6.QtWidgets import QWidget, QGraphicsDropShadowEffect
from PyQt6.uic import loadUi

class DashboardPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageDashboard.ui', self)

        apply_shadow(self.card1)
        apply_shadow(self.card2)
        apply_shadow(self.card3)
        apply_shadow(self.card4)
        apply_shadow(self.sched_overview)

class PatientsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PagePatients.ui', self)

        apply_shadow(self.records_container)

class AppointmentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageAppointments.ui', self)

        apply_shadow(self.table_container)
        apply_shadow((self.calendar_container))

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

def apply_shadow(widget):
    shadow = QGraphicsDropShadowEffect()
    shadow.setBlurRadius(10)
    shadow.setXOffset(1)
    shadow.setYOffset(1)
    shadow.setColor(QColor(Qt.GlobalColor.gray))
    widget.setGraphicsEffect(shadow)
from PyQt6.QtCharts import QChart, QChartView, QPieSlice, QPieSeries, QCategoryAxis
from PyQt6.QtCore import Qt, QMargins
from PyQt6.QtGui import QColor, QPainter
from PyQt6.QtWidgets import QWidget, QGraphicsDropShadowEffect, QLineEdit
from PyQt6.uic import loadUi

class DashboardPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageDashboard.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.card1)
        apply_shadow(self.card2)
        apply_shadow(self.card3)
        apply_shadow(self.card4)
        apply_shadow(self.sched_overview)

class PatientsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PagePatients.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.records_container)
        apply_shadow(self.register_button)
        apply_shadow(self.search_input)

class AppointmentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageAppointments.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.table_container)
        apply_shadow(self.calendar_container)
        apply_shadow(self.add_appointment_button)
        apply_shadow(self.search_input)

class TreatmentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageTreatments.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.search_input)
        apply_shadow(self.info_box)

class PaymentsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PagePayments.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.container)
        apply_shadow(self.search_input)

class ReportsPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageReports.ui', self)

        self.setup()
        self.setup_piechart()
        self.setup_linegraph()

    def setup(self):
        apply_shadow(self.piechart_container)

    def setup_piechart(self):
        self.piechart = QChart()
        self.piechart.setTitle("Payments")
        self.piechart.legend().setVisible(True)
        self.piechart.legend().setAlignment(Qt.AlignmentFlag.AlignBottom)
        self.piechart.setMargins(QMargins(0, 0, 0, 0))
        self.payments_pie = QPieSeries()
        self.piechart.addSeries(self.payments_pie)

        chart_view = QChartView(self.piechart)
        chart_view.setStyleSheet("background:white;")
        chart_view.setRenderHint(QPainter.RenderHint.Antialiasing)
        chart_view.setContentsMargins(QMargins(0, 0, 0, 0))
        self.piechart_layout.addWidget(chart_view)

    def setup_linegraph(self):
        self.linegraph = QChart()
        self.linegraph.setTitle("Monthly Revenue")
        self.linegraph.legend().setVisible(True)
        self.linegraph.legend().setAlignment(Qt.AlignmentFlag.AlignBottom)
        self.linegraph.setMargins(QMargins(0, 0, 0, 0))
        chart_view = QChartView(self.linegraph)
        chart_view.setStyleSheet("background:white;")
        chart_view.setRenderHint(QPainter.RenderHint.Antialiasing)
        chart_view.setContentsMargins(QMargins(0, 0, 0, 0))
        self.linegraph_layout.addWidget(chart_view)

class UserAccessPage(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/PageUserAccess.ui', self)

        self.setup()

    def setup(self):
        apply_shadow(self.add_button)
        apply_shadow(self.container)

def apply_shadow(widget):
    shadow = QGraphicsDropShadowEffect()
    shadow.setBlurRadius(10)
    shadow.setXOffset(1)
    shadow.setYOffset(1)
    shadow.setColor(QColor(Qt.GlobalColor.gray))
    widget.setGraphicsEffect(shadow)
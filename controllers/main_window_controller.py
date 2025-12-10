from PyQt6.QtCore import QDateTime, QTimer

from controllers.appointments_controller import AppointmentsController
from controllers.dashboard_controller import DashboardController
from controllers.patients_controller import PatientsController
from views import *


class MainWindowController:
    def __init__(self, mainWindow_page, db, application, userid, usertype):
        self.mainWindow_page = mainWindow_page
        self.db = db
        self.application = application
        self.userid = userid
        self.usertype = usertype

        self.pages = None
        self.setup_labels()
        self.setup_buttons()
        self.setup_pages()

        self.dashboard_controller = DashboardController(self.pages[0], self)
        self.patients_controller = PatientsController(self.pages[1], self)
        self.appointments_controller = AppointmentsController(self.pages[2], self)

    def setup_labels(self):
        # Welcome message
        self.mainWindow_page.current_user_label.setText(
            'Welcome!  ID:' + str(self.userid) + ' [' + str(self.usertype) + ']')

        # Date/Time display
        def start_clock():
            def update_display():
                time = QDateTime.currentDateTime()
                self.mainWindow_page.system_time_label.setText(time.toString('hh:mm:ss'))
                self.mainWindow_page.system_date_label.setText(time.toString('yyyy/dd/MM'))
            update_display()
            self.timer = QTimer()
            self.timer.timeout.connect(update_display)
            self.timer.start(1000)
        start_clock()

    def setup_buttons(self):
        nav_buttons = [self.mainWindow_page.nav_dashboard, self.mainWindow_page.nav_patients, self.mainWindow_page.nav_appointments, self.mainWindow_page.nav_treatments,
                       self.mainWindow_page.nav_payments, self.mainWindow_page.nav_reports, self.mainWindow_page.nav_access]
        for i, b in enumerate(nav_buttons): b.clicked.connect(
            lambda checked, index=i: self.mainWindow_page.mainstack_pages.setCurrentIndex(index))

        self.mainWindow_page.nav_logout_button.clicked.connect(lambda: self.application.logout())
        self.hide_buttons()

    def setup_pages(self):
        self.pages = [
            DashboardPage(),
            PatientsPage(),
            AppointmentsPage(),
            TreatmentsPage(),
            PaymentsPage(),
            ReportsPage(),
            UserAccessPage()
        ]
        for page in self.pages:
            self.mainWindow_page.mainstack_pages.addWidget(page)

    def hide_buttons(self):
        # improve this
        if self.usertype == 'Receptionist':
            self.mainWindow_page.nav_treatments.hide()
            self.mainWindow_page.nav_access.hide()
        elif self.usertype == 'Dentist':
            self.mainWindow_page.nav_appointments.hide()
            self.mainWindow_page.nav_payments.hide()
            self.mainWindow_page.nav_access.hide()
        elif self.usertype == 'Assistant':
            self.mainWindow_page.nav_appointments.hide()
            self.mainWindow_page.nav_treatments.hide()
            self.mainWindow_page.nav_payments.hide()
            self.mainWindow_page.nav_access.hide()

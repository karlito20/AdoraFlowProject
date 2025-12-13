from PyQt6.QtCore import QDateTime, QTimer

from controllers.appointments_controller import AppointmentsController
from controllers.dashboard_controller import DashboardController
from controllers.patients_controller import PatientsController
from controllers.treatments_controller import TreatmentsController
from controllers.user_access_controller import UserAccessController
from views import *
from views.page_elements import ConfirmDialog


class MainWindowController:
    def __init__(self, mainWindow_page, db, application, userid, usertype):
        self.page = mainWindow_page
        self.db = db
        self.application = application
        self.userid = userid
        self.usertype = usertype

        self.pages = None
        self.setup_pages()

        self.dashboard_controller = DashboardController(self.pages[0], self)
        self.patients_controller = PatientsController(self.pages[1], self)
        self.appointments_controller = AppointmentsController(self.pages[2], self)
        self.useraccess_controller = UserAccessController(self.pages[6], self)
        self.treatments_controller = TreatmentsController(self.pages[3], self)

        self.setup_labels()
        self.setup_buttons()

    def setup_labels(self):
        # Welcome message
        self.page.current_user_label.setText(
            'Welcome!  ID:' + str(self.userid) + ' [' + str(self.usertype) + ']')

        # Date/Time display
        def start_clock():
            def update_display():
                time = QDateTime.currentDateTime()
                self.page.system_time_label.setText(time.toString('hh:mm:ss'))
                self.page.system_date_label.setText(time.toString('yyyy-MM-dd'))
            update_display()
            self.timer = QTimer()
            self.timer.timeout.connect(update_display)
            self.timer.start(1000)
        start_clock()

    def setup_buttons(self):
        nav_buttons = [self.page.nav_dashboard, self.page.nav_patients, self.page.nav_appointments, self.page.nav_treatments,
                       self.page.nav_payments, self.page.nav_reports, self.page.nav_access]
        for i, b in enumerate(nav_buttons): b.clicked.connect(
            lambda checked, index=i: self.page.mainstack_pages.setCurrentIndex(index))

        self.page.nav_logout_button.clicked.connect(lambda: attempt_logout())
        self.hide_buttons()

        def attempt_logout():
            prompt = ConfirmDialog(self.page)
            prompt.show()
            prompt.confirm.connect(lambda: conf())
            def conf():
                self.application.logout()

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
            self.page.mainstack_pages.addWidget(page)

    def hide_buttons(self):
        # improve this
        if self.usertype == 'Receptionist':
            self.page.nav_treatments.hide()
            self.page.nav_access.hide()
        elif self.usertype == 'Dentist':
            self.page.nav_payments.hide()
            self.page.nav_access.hide()
            self.dashboard_controller.page.viewall_button.hide()
            self.appointments_controller.page.add_appointment_button.hide()
        elif self.usertype == 'Assistant':
            self.page.nav_appointments.hide()
            self.page.nav_treatments.hide()
            self.page.nav_payments.hide()
            self.page.nav_access.hide()

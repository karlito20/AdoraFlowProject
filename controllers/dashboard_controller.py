from views import DashboardListItem


class DashboardController:
    def __init__(self, dashboard_page, mainWindow_controller):
        self.page = dashboard_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.setup()
        self.set_card_values()
        self.populate_appointments_today_list()

    def setup(self):
        self.page.viewall_button.clicked.connect(lambda:
            self.mainWindow_controller.page.nav_appointments.click()
        )

    def set_card_values(self):
        self.page.card1_val.setText(str(self.db.patients_db.get_total_patients()))
        self.page.card2_val.setText(str(self.db.appointments_db.get_total_appointments_today()))
        self.page.card3_val.setText(f'{self.db.appointments_db.get_total_revenue_thismonth():,}')

    def populate_appointments_today_list(self):
        list = self.db.appointments_db.get_appointments_today_summary()

        for item in list:
            a = DashboardListItem()
            a.time_label.setText(str(item[0]))
            a.name_label.setText(item[1])
            a.status_label.setText(item[2])
            self.page.sched_list_contents.addWidget(a)

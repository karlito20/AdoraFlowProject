from datetime import datetime
from views import DashboardListItem
from views.page_elements import CardPopup


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
        self.page.card1_val.clicked.connect(self.popup_card1)
        self.page.card2_val.clicked.connect(lambda: self.popup_card2())
        self.page.card3_val.clicked.connect(lambda: self.popup_card3())
        self.page.card4_val.clicked.connect(lambda: self.popup_card4())

    def set_card_values(self):
        self.page.card1_val.setText(str(self.db.patients_db.get_total_patients()))
        self.page.card2_val.setText(str(self.db.appointments_db.get_total_appointments_today()))
        self.page.card3_val.setText(f'{self.db.appointments_db.get_total_revenue_thismonth():,}')
        self.page.card4_val.setText(str(self.db.treatments_db.get_treatments_count_this_month()))

    def populate_appointments_today_list(self):
        list = self.db.appointments_db.get_appointments_today_summary()

        for item in list:
            a = DashboardListItem()
            t = datetime.strptime(str(item[0]), '%H:%M:%S')
            a.time_label.setText(t.strftime('%I:%M %p'))
            a.name_label.setText(item[1])
            a.phone_label.setText('Phone: ' + item[2] or '(No phone number.)')
            a.status_label.setText(item[3])
            self.page.sched_list_contents.addWidget(a)
        self.page.sched_list_contents.addStretch(1)

    def popup_card1(self):
        popup = CardPopup(self.page)
        popup.label1.setText('New Patients this month: '); popup.label1.show()
        popup.val1.setText(str(self.db.patients_db.get_new_patients_this_month())); popup.val1.show()
        popup.show()

    def popup_card2(self):
        popup = CardPopup(self.page)
        popup.label1.setText('Scheduled: '); popup.label1.show()
        popup.val1.setText(str(self.db.appointments_db.get_scheduled_appointment_today_count())); popup.val1.show()
        popup.label2.setText('Completed: '); popup.label2.show()
        popup.val2.setText(str(self.db.appointments_db.get_completed_appointment_today_count())); popup.val2.show()
        popup.label3.setText('Cancelled: '); popup.label3.show()
        popup.val3.setText(str(self.db.appointments_db.get_cancelled_appointment_today_count())); popup.val3.show()
        popup.label4.setText('No Show: '); popup.label4.show()
        popup.val4.setText(str(self.db.appointments_db.get_noshow_appointment_today_count())); popup.val4.show()
        popup.show()

    def popup_card3(self):
        popup = CardPopup(self.page)
        popup.label1.setText('Overall Revenue (PHP): '); popup.label1.show()
        popup.val1.setText(str(self.db.reports.get_overall_revenue())); popup.val1.show()
        popup.show()

    def popup_card4(self):
        popup = CardPopup(self.page)
        popup.label1.setText("Overall treatment count: "); popup.label1.show()
        popup.val1.setText(str(self.db.treatments_db.get_treatments_count())); popup.val1.show()
        popup.show()
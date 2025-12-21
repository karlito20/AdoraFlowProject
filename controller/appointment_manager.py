from datetime import datetime

from PyQt6.QtCore import QDate, QTime

from view.page_elements import AppointmentsListItem, AppointmentFormPopup, ConfirmDialog, ReschedulePopup, \
    RemoveAppointmentPopup, FeedbackPopupDialog


class AppointmentsController:
    def __init__(self, appointment_page, mainWindow_controller):
        self.page = appointment_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.appointment_widgets = []
        self.setup()
        self.populate_appointments_list()

    def setup(self):
        self.page.calendar_widget.selectionChanged.connect(lambda: self.filter_appointments_list())
        self.page.restore_button.clicked.connect(lambda: self.populate_appointments_list())
        self.page.add_appointment_button.clicked.connect(lambda: self.show_appointment_form())
        self.page.search_input.textChanged.connect(self.search_appointments)

    def populate_appointments_list(self, list_filtered=None):
        self.appointment_widgets.clear()
        while self.page.appointments_list.count():
            widget = self.page.appointments_list.takeAt(0).widget()
            if widget:
                widget.deleteLater()

        if list_filtered is None:
            list = self.db.appointments_db.get_short_upcoming_appointments()
        else:
            list = list_filtered

        for item in list:
            p = AppointmentsListItem()
            p.name_label.setText(item[0])
            st = datetime.strptime(str(item[1]), '%H:%M:%S')
            et = datetime.strptime(str(item[2]), '%H:%M:%S')
            p.start_label.setText(st.strftime('%I:%M %p - ') + et.strftime('%I:%M %p'))
            d = datetime.strptime(str(item[3]), '%Y-%m-%d')
            p.date_label.setText(d.strftime('%Y, %B %d'))
            id = item[4]
            p.resched_button.clicked.connect(lambda _, pid=id: self.show_resched_popup(pid))
            p.remove_button.clicked.connect(lambda _, pid=id: self.dialog_remove_appointment(pid))
            self.page.appointments_list.addWidget(p)
            self.appointment_widgets.append(p)

        self.page.appointments_list.addStretch(1)

    def filter_appointments_list(self):
        self.clear_list()
        date = (self.page.calendar_widget.selectedDate()).toString('yyyy-MM-dd')
        list = self.db.appointments_db.get_short_upcoming_appointments_specificdate(date)
        self.populate_appointments_list(list)
        
    def clear_list(self):
        while self.page.appointments_list.count():
            item = self.page.appointments_list.takeAt(0)
            widget = item.widget()
            if widget is not None:
                widget.setParent(None)

    def show_appointment_form(self):
        form = AppointmentFormPopup(self.page)
        form.show()

        self.set_appointment_form_options(form)

        def get_fields_data():
            data = []
            data.append(form.dentist_field.currentData())
            data.append(form.patient_field.currentData())
            data.append(form.date_field.text())
            start = (datetime.strptime(str(form.starttime_field.text()), "%I:%M %p")).strftime("%H:%M:%S")
            end = (datetime.strptime(str(form.endtime_field.text()), "%I:%M %p")).strftime("%H:%M:%S")
            data.append(start)
            data.append(end)
            return data

        def clearFields():
            form.patient_field.setCurrentIndex(-1)
            form.date_field.setDate(QDate(2000, 1, 1))
            form.time_field.setTime(QTime(12, 30, 0))
            form.type_field.setCurrentIndex(-1)
            form.dentist_field.setCurrentIndex(-1)

        form.savebutton.clicked.connect(lambda: self.dialog_new_appointment(form, get_fields_data()))
        form.cancelbutton.clicked.connect(lambda: form.close())
        form.clearbutton.clicked.connect(lambda: clearFields())

    def set_appointment_form_options(self, form):
        patients = self.db.patients_db.get_patient_id_list()
        for p in patients:
            form.patient_field.addItem(p[0], p[1])
        form.patient_field.setCurrentIndex(-1)

        dentists = self.db.dentists_db.get_dentist_id_list()
        for d in dentists:
            form.dentist_field.addItem(d[0], d[1])
        form.dentist_field.setCurrentIndex(-1)

        form.date_field.setDate(self.page.calendar_widget.selectedDate())

    def dialog_new_appointment(self, form, data):
        prompt = ConfirmDialog(form)
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.appointments_db.add_new_appointment(*data)
            prompt.close()
            form.close()
            fb = FeedbackPopupDialog(self.page)
            fb.message_label.setText(f'New appointment added for PatientID: {data[1]}')
            self.populate_appointments_list()

    def show_resched_popup(self, id):
        form = ReschedulePopup(self.page)
        form.show()
        data = self.db.appointments_db.get_appointment_date_time(id)

        form.date_field.setDate(QDate.fromString(str(data[0]), 'yyyy-MM-dd'))
        form.starttime_field.setTime(QTime.fromString(str(data[1]), 'HH:mm:ss'))
        form.endtime_field.setTime(QTime.fromString(str(data[2]), 'HH:mm:ss'))

        def get_fields_data():
            data = []
            data.append(form.date_field.text())
            data.append((datetime.strptime(form.starttime_field.text().replace("\u202f", " "), "%I:%M %p")).strftime("%H:%M:%S"))
            data.append((datetime.strptime(form.endtime_field.text().replace("\u202f", " "), "%I:%M %p")).strftime("%H:%M:%S"))
            return data

        form.cancel_button.clicked.connect(lambda: form.close())
        form.save_button.clicked.connect(lambda: self.dialog_update_appointment_date_time(form, id, get_fields_data()))

    def dialog_update_appointment_date_time(self, form, id, data):
        prompt = ConfirmDialog(form)
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.appointments_db.update_appointment_date_time(id, *data)
            prompt.close()
            form.close()
            fb = FeedbackPopupDialog(self.page)
            fb.message_label.setText(f'Rescheduled PatientID: {id}')
            self.populate_appointments_list()

    def dialog_remove_appointment(self, id):
        popup = RemoveAppointmentPopup(self.page)
        popup.show()
        reason = popup.reason_input.currentText()
        popup.save_button.clicked.connect(lambda: conf())
        popup.cancel_button.clicked.connect(lambda: popup.hide())
        def conf():
            self.db.appointments_db.update_appointment_status(id, reason)
            popup.close()
            fb = FeedbackPopupDialog(self.page)
            fb.message_label.setText(f'Removed appointment for PatientID: {id}')
            self.populate_appointments_list()

    def search_appointments(self, text):
        for widget in self.appointment_widgets:
            if text.lower() in widget.name_label.text().lower():
                widget.show()
            else:
                widget.hide()

from datetime import datetime

from PyQt6.QtCore import QDate, QTime

from views.page_elements import AppointmentsListItem, AppointmentFormPopup, ConfirmDialog


class AppointmentsController:
    def __init__(self, appointment_page, mainWindow_controller):
        self.page = appointment_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.setup()
        self.populate_appointments_list()

    def setup(self):
        self.page.calendar_widget.selectionChanged.connect(lambda: self.filter_appointments_list())
        self.page.restore_button.clicked.connect(lambda: self.populate_appointments_list())
        self.page.add_appointment_button.clicked.connect(lambda: self.show_appointment_form())

    def populate_appointments_list(self, list_filtered=None):
        self.clear_list()
        if list_filtered is None:
            list = self.db.appointments_db.get_short_upcoming_appointments()
        else:
            list = list_filtered

        for item in list:
            p = AppointmentsListItem()
            p.name_label.setText(item[0])
            t = datetime.strptime(str(item[1]), '%H:%M:%S')
            p.time_label.setText(t.strftime('%I:%M %p'))
            p.service_label.setText(item[2])
            d = datetime.strptime(str(item[3]), '%Y-%m-%d')
            p.date_label.setText(d.strftime('%Y, %B %d'))
            self.page.appointments_list.addWidget(p)

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

        types = self.db.treatments_db.get_treatments_list()
        for t in types:
            form.type_field.addItem(t[0], t[1])
        form.type_field.setCurrentIndex(-1)

        dentists = self.db.dentists_db.get_dentist_id_list()
        for d in dentists:
            form.dentist_field.addItem(d[0], d[1])
        form.dentist_field.setCurrentIndex(-1)

    def dialog_new_appointment(self, form, data):
        prompt = ConfirmDialog(form)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.appointments_db.add_new_appointment(*data)
            form.close()

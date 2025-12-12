from PyQt6.QtCore import QDate

from views import PatientsListItem
from views.page_elements import PatientDetailsPopup, PatientFormPopup, ConfirmDialog


class PatientsController:
    def __init__(self, patients_page, mainWindow_controller):
        self.page = patients_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.setup()
        self.populate_patients_list()

    def setup(self):
        self.page.register_button.clicked.connect(lambda: self.show_patient_form(self.page))
        self.page.refresh_button.clicked.connect(lambda: self.refresh_patients_list())

    def populate_patients_list(self):
        list = self.db.patients_db.get_short_allpatients_details()

        for item in list:
            p = PatientsListItem()
            p.patient_id_label.setText('ID: ' + str(item[0]))
            p.patient_name_label.setText(item[1])
            p.patient_phone_label.setText(item[2])
            p.patient_email_label.setText(item[3])
            p.patient_bdate_label.setText(str(item[4]))
            p.patient_sex_label.setText(item[5])
            patient_id = item[0]
            p.viewdetails_button.clicked.connect(lambda _, pid=patient_id: self.show_patient_details(pid))

            self.page.records_list_contents.addWidget(p)

    def refresh_patients_list(self):
        while self.page.records_list_contents.count():
            item = self.page.records_list_contents.takeAt(0)
            widget = item.widget()
            if widget is not None:
                widget.setParent(None)

        self.populate_patients_list()

    def show_patient_details(self, patient_id):
        popup = PatientDetailsPopup(self.page)
        details = self.db.patients_db.get_full_patient_details(patient_id)

        print(details)
        popup.id_label.setText(str(details[0]))
        popup.name_label.setText(details[1] + ' ' + (details[2] or ' ') + ' ' + details[3])
        popup.bdate_label.setText(str(details[4]))
        popup.gender_label.setText(details[5])
        popup.bloodtype_label.setText(details[6])
        popup.phone_label.setText('Phone: ' + details[7])
        popup.email_label.setText('Email: ' + details[8])
        popup.address_label.setText('Address: ' + details[9])
        popup.show()

        popup.edit_button.clicked.connect(lambda: self.show_patient_form(popup, True, details[0]))
        popup.delete_button.clicked.connect(lambda: self.dialog_delete_patient(popup, details[0]))
        popup.close_button.clicked.connect(lambda: popup.close())

    def show_patient_form(self, parent, edit=None, id=None):
        form = PatientFormPopup(parent)
        form.show()

        def clearFields():
            form.fname_field.clear()
            form.midname_field.clear()
            form.lastname_field.clear()
            form.date_field.setDate(QDate(2000, 1, 1))
            form.gender_field.setCurrentIndex(-1)
            form.blood_field.setCurrentIndex(-1)
            form.phone_field.clear()
            form.email_field.clear()
            form.address_field.clear()

        def get_fields_data():
            data = []
            data.append(id)
            data.append(form.fname_field.text())
            data.append(form.midname_field.text())
            data.append(form.lastname_field.text())
            data.append(form.date_field.text())
            data.append(form.gender_field.currentText())
            data.append(form.blood_field.currentText())
            data.append(form.phone_field.text())
            data.append(form.email_field.text())
            data.append(form.address_field.text())
            return data

        def load_data_to_fields():
            data = self.db.patients_db.get_full_patient_details(id)
            form.fname_field.setText(data[1])
            form.midname_field.setText(data[2])
            form.lastname_field.setText(data[3])
            form.date_field.setDate(QDate.fromString(str(data[4]), 'yyyy-MM-dd'))
            form.gender_field.setCurrentText(data[5])
            form.blood_field.setCurrentText(data[6])
            form.phone_field.setText(data[7])
            form.email_field.setText(data[8])
            form.address_field.setText(data[9])

        if edit:
            load_data_to_fields()
            form.save_button.clicked.connect(lambda: self.dialog_edit_patient(form, get_fields_data()))
        else:
            form.save_button.clicked.connect(lambda: self.dialog_add_patient(form, get_fields_data()))

        form.clear_button.clicked.connect(lambda: clearFields())
        form.cancel_button.clicked.connect(lambda: form.close())

    def dialog_delete_patient(self, popup, id):
        prompt = ConfirmDialog(popup)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.patients_db.delete_patient(id)
            self.page.feedback_label.setText('Deleted PatientID: ' + str(id))
            popup.close()

    def dialog_add_patient(self, form, data):
        prompt = ConfirmDialog(form)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.patients_db.add_patient(*data)
            self.page.feedback_label.setText('Added patient: ' + data[1] + ' ' + data[2] + '.')
            form.close()

    def dialog_edit_patient(self, form, data):
        prompt = ConfirmDialog(form)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.patients_db.edit_patient(*data)
            self.page.feedback_label.setText('PatientID: ' + str(data[0]) + ' details changed.')
            form.close()
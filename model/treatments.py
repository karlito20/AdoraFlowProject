from model.appointments import Appointments
from model.patients import Patients


class Treatments:
    def __init__(self, db):
        self.db = db

    def get_treatments_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT service_name, serviceID FROM services'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_services_id_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT service_name, serviceID FROM services'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def handle_add_treatment(self, patientID, dentistID, appointmentID, date, notes, serviceID):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO treatments (patientID, dentistID, appointmentID, treatment_date, notes) VALUES '
            '(%s, %s, %s, %s, %s)', (patientID, dentistID, appointmentID, date, notes)
        )
        treatmentID = cursor.lastrowid

        cursor.execute(
            'INSERT INTO treatment_service (treatmentID, serviceID, price) '
            'SELECT %s, s.serviceID, s.default_price '
            'FROM services s '
            'WHERE s.serviceID = %s ', (treatmentID, serviceID)
        )

        cursor.execute(
            'UPDATE appointments '
            'SET status = "Completed" '
            'WHERE appointmentID = %s ', (appointmentID,)
        )

        cursor.execute(
            'SELECT default_price FROM services WHERE serviceID = %s ', (serviceID,)
        )
        default_price = cursor.fetchone()[0]

        cursor.execute(
            'INSERT INTO invoices (patientID, treatmentID, invoice_date, total_amount, status) VALUES '
            '(%s, %s, CURDATE(), %s, "Unpaid") ', (patientID, treatmentID, default_price)
        )
        cursor.close()
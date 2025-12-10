from model.appointments import Appointments
from model.patients import Patients


class Treatments:
    def __init__(self, db):
        self.db = db

    def get_treatments_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT treatment_name, treatmentID FROM treatments'
        )
        result = cursor.fetchall()
        cursor.close()
        return result
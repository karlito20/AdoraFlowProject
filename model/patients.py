

class Patients():
    def __init__(self, db):
        self.db = db

    def get_total_patients(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT COUNT(*) FROM patients '
        )
        result = cursor.fetchone()
        cursor.close()
        return result[0]

    def get_short_allpatients_details(self):
        cursor = self.db.cursor()
        cursor.execute(
        'SELECT patientID, CONCAT(first_name, " ", last_name), phone, email, birthdate, sex FROM patients WHERE status <> "Archived" ORDER BY first_name'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_full_patient_details(self, patientID):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT * FROM patients WHERE patientID = %s', (patientID, )
        )
        result = cursor.fetchone()
        cursor.close()
        return result

    def archive_patient(self, patientID):
        cursor = self.db.cursor()
        cursor.execute(
            'UPDATE patients SET status = "Archived" WHERE patientID = %s', (patientID, )
        )
        cursor.close()

    def add_patient(self, id, fname, mname, lname, bdate, sex, blood, phone, email, address):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO patients (first_name, middle_name, last_name, birthdate, sex, blood_type, phone, email, address, date_registered) VALUES'
            '(%s, %s, %s, %s, %s, %s, %s, %s, %s, CURDATE())', (fname, mname, lname, bdate, sex, blood, phone, email, address)
        )

    def edit_patient(self, id, fname, mname, lname, bdate, sex, blood, phone, email, address):
        cursor = self.db.cursor()
        cursor.execute(
            'UPDATE patients SET '
            'first_name = %s, '
            'middle_name = %s, '
            'last_name = %s, '
            'birthdate = %s, '
            'sex = %s, '
            'blood_type = %s, '
            'phone = %s, '
            'email = %s, '
            'address = %s '
            'WHERE patientID = %s',
            (fname, mname, lname, str(bdate), sex, blood, phone, email, address, id))
        cursor.close()

    def get_patient_id_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT CONCAT(first_name, " ", last_name), patientID FROM patients WHERE status <> "Archived"'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_new_patients_this_month(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT COUNT(*) FROM patients WHERE MONTH(date_registered) = MONTH(CURDATE())',
        )
        result = cursor.fetchone()
        cursor.close()
        return result[0]


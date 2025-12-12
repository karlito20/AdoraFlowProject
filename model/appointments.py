class Appointments:
    def __init__(self, db):
        self.db = db

    def get_total_appointments_today(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT COUNT(*) FROM appointments WHERE appointment_date = CURDATE()'
        )
        result = cursor.fetchone()
        cursor.close()
        return result[0]

    def get_total_revenue_thismonth(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT SUM(amount_paid) FROM payments WHERE MONTH(payment_date) = MONTH(CURDATE())'
        )
        result = cursor.fetchone()
        cursor.close()
        return result[0]

    def get_appointments_today_summary(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT a.start_time, CONCAT(p.first_name, " ", p.last_name), a.status '
            'FROM appointments a  '
            'LEFT JOIN patients p ON p.patientID = a.patientID '
            'WHERE a.appointment_date = CURDATE()'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_short_upcoming_appointments(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT CONCAT(p.first_name, " ", p.last_name), a.start_time, t.treatment_name, a.appointment_date, a.appointmentID '
            'FROM appointments a '
            'LEFT JOIN patients p ON (p.patientID=a.patientID) '
            'LEFT JOIN appointment_treatment ap ON (ap.appointmentID=a.appointmentID) '
            'LEFT JOIN treatments t ON (ap.treatmentID=t.treatmentID) '
            'WHERE a.appointment_date >= CURDATE() '
            'ORDER BY a.appointment_date, a.start_time'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_short_upcoming_appointments_specificdate(self, date):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT CONCAT(p.first_name, " ", p.last_name), a.start_time, t.treatment_name, a.appointment_date, a.appointmentID '
            'FROM appointments a '
            'LEFT JOIN patients p ON (p.patientID=a.patientID) '
            'LEFT JOIN appointment_treatment ap ON (ap.appointmentID=a.appointmentID) '
            'LEFT JOIN treatments t ON (ap.treatmentID=t.treatmentID) '
            'WHERE a.appointment_date = %s ' 
            'ORDER BY a.appointment_date', (date,)
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def add_new_appointment(self, dentistID, patientID, date, start, end):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO appointments (dentistID, patientID, appointment_date, start_time, end_time, status) VALUES'
            '(%s, %s, %s, %s, %s, %s)', (dentistID, patientID, date, start, end, "Scheduled")
        )
        id = cursor.lastrowid
        cursor.close()
        return id

    def set_appointment_treatment(self, appointmentID, treatmentID, quantity):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO appointment_treatment VALUES (%s, %s, %s)', (appointmentID, treatmentID, quantity)
        )
        cursor.close()

    def get_appointment_date_time(self, id):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT appointment_date, start_time, end_time FROM appointments WHERE appointmentID = %s', (id,)
        )
        result = cursor.fetchone()
        cursor.close()
        return result

    def update_appointment_date_time(self, id, date, start, end):
        cursor = self.db.cursor()
        cursor.execute(
            'UPDATE appointments SET appointment_date = %s, start_time = %s, end_time = %s WHERE appointmentID = %s',
            (date, start, end, id)
        )
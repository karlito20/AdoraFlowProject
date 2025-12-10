class Dentists:
    def __init__(self, db):
        self.db = db

    def get_dentist_id_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT CONCAT(e.emp_first_name, " ", e.emp_last_name), d.dentistID '
            'FROM dentists d '
            'LEFT JOIN employees e ON (d.dentistID=e.employeeID)'
        )
        result = cursor.fetchall()
        cursor.close()
        return result
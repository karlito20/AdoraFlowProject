import mysql.connector
from sqlalchemy import create_engine

from model.appointments import Appointments
from model.dentists import Dentists
from model.invoices import Invoices
from model.patients import Patients
from model.reports import Reports
from model.treatments import Treatments
from model.users import Users


class Database:
    def __init__(self):
        self.db = self._createConnection()
        self.engine = create_engine("mysql+mysqlconnector://root:@localhost/DentalClinicDB_2")

        if self.db is not None:
            self.patients_db = Patients(self.db)
            self.appointments_db = Appointments(self.db)
            self.treatments_db = Treatments(self.db, self)
            self.dentists_db = Dentists(self.db)
            self.users_db = Users(self.db)
            self.invoices_db = Invoices(self.db)
            self.reports = Reports(self.db, self)

    def _createConnection(self):
        db = None
        try:
            db = mysql.connector.connect(
                host="localhost", user="root", passwd="", database="DentalClinicDB_2", autocommit=True
            )
        except mysql.connector.errors.InterfaceError:
            db = None
            print("Database connection failed.")

        return db

    def validate_login(self, user, pswd):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT employeeID, password FROM user_credentials '
            'WHERE employeeID = %s AND password = %s',
            (user, pswd)
        )
        result = cursor.fetchone()
        cursor.close()

        if result is None: return False
        else: return True

    def get_user_type(self, employeeID):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT er.role_name '
            'FROM employees e '
            'LEFT JOIN employee_roles er ON (e.roleID=er.roleID) '
            'WHERE e.employeeID = %s',
            (int(employeeID),)
        )
        result = cursor.fetchone()
        cursor.close()
        return result[0]

import pandas as pd


class Reports:
    def __init__(self, db, database):
        self.db = db
        self.database = database

    def payment_methods_used(self):
        query = """
        SELECT payment_method, COUNT(payment_method) AS count
        FROM payments
        GROUP BY payment_method
        """
        df = pd.read_sql(query, self.database.engine)
        return df

    def monthly_revenue(self):
        query = """
        SELECT MONTH(payment_date) AS month, SUM(amount_paid) AS revenue 
        FROM payments 
        GROUP BY MONTH(payment_date)
        """
        df = pd.read_sql(query, self.database.engine)
        return df

    def get_overall_revenue(self):
        cursor = self.db.cursor()
        cursor.execute("SELECT SUM(amount_paid) AS revenue FROM payments")
        result = cursor.fetchone()
        cursor.close()
        return result[0]

    def invoice_summary(self, start_date, end_date):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT '
            '   COUNT(a.appointmentID) AS total_appointments, '
            '   COUNT(t.treatmentID) AS total_treatments, '
            '   COUNT(i.invoiceID) AS total_invoices, '
            '   COALESCE(SUM(py.amount_paid), 0) AS total_revenue '
            'FROM invoices i '
            '   LEFT JOIN payments py ON py.invoiceID=i.invoiceID '
            '   LEFT JOIN treatments t ON t.treatmentID=i.treatmentID '
            '   LEFT JOIN appointments a ON a.appointmentID=t.appointmentID '
            'WHERE i.invoice_date BETWEEN %s AND %s ', (start_date, end_date)
        )
        result = cursor.fetchone()
        cursor.close()

        return {
            'total_appointments': result[0],
            'total_treatments': result[1],
            'total_invoices': result[2],
            'total_revenue': result[3],
        }

    def revenue_by_service(self, start_date, end_date):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT '
            '   s.service_name AS service_name, '
            '   COALESCE(SUM(py.amount_paid), 0) AS total_revenue '
            'FROM invoices i '
            '   LEFT JOIN treatments t ON i.treatmentID=t.treatmentID '
            '   LEFT JOIN treatment_service ts ON ts.treatmentID=t.treatmentID '
            '   LEFT JOIN services s ON s.serviceID=ts.serviceID '
            '   LEFT JOIN payments py ON py.invoiceID=i.invoiceID '
            'WHERE i.invoice_date BETWEEN %s AND %s '
            'GROUP BY s.service_name '
            'ORDER BY total_revenue DESC ', (start_date, end_date)
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def     appointments_by_status(self, start_date, end_date):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT '
            '   a.status AS appointment_status, '
            '   COUNT(*) AS total_appointments '
            'FROM appointments a '
            'WHERE a.appointment_date BETWEEN %s AND %s '
            'GROUP BY a.status', (start_date, end_date)
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def most_performed_service(self, start_date, end_date):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT '
            '   s.service_name AS service_name, '
            '   COUNT(s.service_name) AS total_appointments '
            'FROM treatments t '
            '   LEFT JOIN treatment_service ts ON ts.treatmentID=t.treatmentID '
            '   LEFT JOIN services s ON s.serviceID=ts.serviceID '
            'WHERE t.treatment_date BETWEEN %s AND %s '
            'GROUP BY s.service_name '
            'ORDER BY total_appointments DESC ', (start_date, end_date)
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_full_report_data(self, start_date, end_date):
        return {
            'summary': self.invoice_summary(start_date, end_date),
            'revenue_by_service': self.revenue_by_service(start_date, end_date),
            'appointments_by_status': self.appointments_by_status(start_date, end_date),
            'most_performed_services': self.most_performed_service(start_date, end_date)
        }


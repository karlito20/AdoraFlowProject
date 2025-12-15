

class Invoices:
    def __init__(self, db):
        self.db = db

    def get_invoice_list(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT i.invoiceID, p.first_name, p.last_name, s.service_name, i.invoice_date, i.total_amount, i.status '
            'FROM invoices i '
            'LEFT JOIN patients p ON (p.patientID=i.patientID) '
            'LEFT JOIN treatment_service ts ON (ts.treatmentID=i.treatmentID) '
            'LEFT JOIN services s ON (s.serviceID=ts.serviceID) '
            'ORDER BY i.invoice_date DESC'
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_invoice_details(self, id):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT i.invoiceID, CONCAT(p.first_name, " ", p.last_name), s.service_name, i.invoice_date, i.total_amount '
            'FROM invoices i '
            'LEFT JOIN patients p ON (p.patientID=i.patientID) '
            'LEFT JOIN treatment_service ts ON (ts.treatmentID=i.treatmentID) '
            'LEFT JOIN services s ON (s.serviceID=ts.serviceID) '
            'WHERE i.invoiceID=%s ', (id,)
        )
        result = cursor.fetchone()
        cursor.close()
        return result

    def pay_invoice(self, invoice_id, amount, method):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO payments (invoiceID, payment_date, payment_time, amount_paid, payment_method) VALUES'
            '(%s, CURDATE(), CURTIME(), %s, %s)', (invoice_id, amount, method)
        )

        cursor.execute(
            'UPDATE invoices SET status = "Paid" WHERE invoiceID = %s', (invoice_id,)
        )

        cursor.close()

    def get_invoice_receipt(self, invoice_id):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT '
            'py.paymentID, '
            'py.payment_date, '
            'py.payment_time, '
            'p.patientID, '
            'CONCAT(p.first_name, " ", p.last_name), '
            's.service_name, '
            'CONCAT(e.emp_first_name, " ", e.emp_last_name), '
            't.treatment_date, '
            'i.total_amount, '
            'py.payment_method, '
            'py.amount_paid '
            'FROM invoices i '
            'LEFT JOIN payments py ON py.invoiceID = i.invoiceID '
            'LEFT JOIN patients p ON p.patientID = i.patientID '
            'LEFT JOIN treatments t ON t.treatmentID = i.treatmentID '
            'LEFT JOIN dentists d ON t.dentistID = d.dentistID '
            'LEFT JOIN employees e ON e.employeeID = d.dentistID '
            'LEFT JOIN treatment_service ts ON ts.treatmentID = t.treatmentID '
            'LEFT JOIN services s ON s.serviceID = ts.serviceID '
            'WHERE i.invoiceID = %s ', (invoice_id,)
        )
        result = cursor.fetchone()
        cursor.close()
        return result
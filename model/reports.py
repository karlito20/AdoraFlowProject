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
class Users:
    def __init__(self, db):
        self.db = db

    def get_employees_user_credentials(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT e.emp_first_name, e.emp_last_name, r.role_name, u.employeeID '
            'FROM user_credentials u '
            'LEFT JOIN employees e ON (e.employeeID=u.employeeID) '
            'LEFT JOIN employee_roles r ON (e.roleID=r.roleID) '
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def get_employees_without_user(self):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT e.employeeID, e.emp_first_name, e.emp_last_name '
            'FROM employees e '
            'LEFT JOIN user_credentials u ON (e.employeeID=u.employeeID) '
            'WHERE u.employeeID IS NULL '
        )
        result = cursor.fetchall()
        cursor.close()
        return result

    def add_new_user(self, userid, passwd):
        cursor = self.db.cursor()
        cursor.execute(
            'INSERT INTO user_credentials VALUES (%s, %s)', (userid, passwd)
        )
        cursor.close()

    def remove_user(self, userid):
        cursor = self.db.cursor()
        cursor.execute(
            'DELETE FROM user_credentials WHERE employeeID=%s', (userid,)
        )
        cursor.close()

    def get_user_credentials(self, userid):
        cursor = self.db.cursor()
        cursor.execute(
            'SELECT employeeID, password '
            'FROM user_credentials '
            'WHERE employeeID=%s', (userid,)
        )
        result = cursor.fetchone()
        cursor.close()
        return result

    def update_user_credentials(self, userid, password):
        cursor = self.db.cursor()
        print(userid, password)
        cursor.execute(
            'UPDATE user_credentials SET password=%s WHERE employeeID=%s', (password, userid)
        )
        cursor.close()

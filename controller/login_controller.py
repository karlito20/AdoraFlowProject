from PyQt6.QtCore import QDateTime, QTimer

from controller.auth import verify_password
from model.database import Database


class LoginController:
    def __init__(self, login_page, db, application):
        self.page = login_page
        self.db = db
        self.application = application

        self.userid = None
        self.passwd = None
        self.usertype = None

        self.page.login_button.clicked.connect(lambda: self.attempt_login())
        self.start_clock()

    def attempt_login(self):
        self.db = Database()
        if self.db.db is None:
            self.page.login_feedback.setText('Connection error.')
            self.page.login_feedback.setStyleSheet('color: rgb(220, 0, 0);')
            return
        self.userid = self.page.login_user_field.text()
        self.passwd = self.page.login_pass_field.text() # from UI plain text

        if verify_password(self.passwd, self.db.users_db.get_hashed_pw(self.userid)): self.login_success()
        else: self.login_fail()

    def login_success(self):
        self.usertype = self.db.users_db.get_user_type(self.userid)
        self.page.close()
        self.application.show_mainwindow(self.userid, self.usertype) # Pass user id and type

    def login_fail(self):
        self.page.login_feedback.setText('Invalid credentials.')
        self.page.login_feedback.setStyleSheet('color: rgb(220, 0, 0)')

    def start_clock(self):
        def update_display():
            time = QDateTime.currentDateTime()
            self.page.login_sys_time.setText(time.toString('hh:mm:ss'))
            self.page.login_sys_date.setText(time.toString('yyyy/dd/MM'))

        update_display()
        self.timer = QTimer()
        self.timer.timeout.connect(update_display)
        self.timer.start(1000)

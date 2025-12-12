from PyQt6.QtCore import QDateTime, QTimer

from model.database import Database


class LoginController:
    def __init__(self, login_page, db, application):
        self.login_page = login_page
        self.db = db
        self.application = application

        self.userid = None
        self.passwd = None
        self.usertype = None

        self.login_page.login_button.clicked.connect(lambda: self.attempt_login())
        self.start_clock()

    def attempt_login(self):
        self.userid = self.login_page.login_user_field.text()
        self.passwd = self.login_page.login_pass_field.text()
        if self.db.validate_login(self.userid, self.passwd): self.login_success()
        else: self.login_fail()

    def login_success(self):
        self.usertype = self.db.get_user_type(self.userid)
        self.login_page.close()
        self.application.show_mainwindow(self.userid, self.usertype) # Pass user id and type

    def login_fail(self):
        self.login_page.login_feedback.setText('Invalid credentials.')
        self.login_page.login_feedback.setStyleSheet('color: rgb(220, 0, 0)')

    def start_clock(self):
        def update_display():
            time = QDateTime.currentDateTime()
            self.login_page.login_sys_time.setText(time.toString('hh:mm:ss'))
            self.login_page.login_sys_date.setText(time.toString('yyyy/dd/MM'))

        update_display()
        self.timer = QTimer()
        self.timer.timeout.connect(update_display)
        self.timer.start(1000)

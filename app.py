import sys

from PyQt6.QtWidgets import QApplication
from controller import LoginController, MainWindowController
from model.database import Database
from view.login import Login
from view.main_window import MainWindow


class Application:
    def __init__(self):
        # Initialize main components in application
        self.app = QApplication(sys.argv)
        self.db = Database()
        self.login_page = None
        self.mainWindow_page = None
        self.login_controller = None
        self.mainWindow_controller = None

        self.show_login()

    def show_login(self):
        self.login_page = Login()
        self.login_controller = LoginController(self.login_page, self.db, self)
        self.login_page.show()

    def show_mainwindow(self, userid, usertype):
        self.mainWindow_page = MainWindow()
        self.mainWindow_controller = MainWindowController(self.mainWindow_page, self.db, self, userid, usertype)
        self.mainWindow_page.show()

    def logout(self):
        self.mainWindow_page.close()
        self.show_login()

    def run(self):
        sys.exit(self.app.exec())

if __name__ == '__main__':
    app = Application()
    app.run()


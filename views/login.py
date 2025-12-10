from PyQt6.QtWidgets import QWidget
from PyQt6.uic import loadUi


class Login(QWidget):
    def __init__(self):
        super().__init__()
        loadUi('ui/LoginPage.ui', self)
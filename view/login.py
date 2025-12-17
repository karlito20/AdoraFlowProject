from PyQt6.QtWidgets import QWidget
from PyQt6.uic import loadUi

from resources import resource_path


class Login(QWidget):
    def __init__(self):
        super().__init__()
        loadUi(resource_path('ui/LoginPage.ui'), self)
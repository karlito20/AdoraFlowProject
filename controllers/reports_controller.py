class ReportsController:
    def __init__(self, reports_page, mainWindow_controller):
        self.page = reports_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db


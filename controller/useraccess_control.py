from PyQt6.QtCore import Qt
from PyQt6.QtWidgets import QApplication

from view.page_elements import UserAccessListItem, UserAccessFormPopup, ConfirmDialog


class UserAccessController:
    def __init__(self, useraccess_page, mainWindow_controller):
        self.page = useraccess_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.setup()
        self.populate_useraccess_list()

    def setup(self):
        self.page.add_button.clicked.connect(lambda: self.show_user_credentials_form())

    def populate_useraccess_list(self):
        list = self.db.users_db.get_employees_user_credentials()

        for item in list:
            p = UserAccessListItem()
            p.name_label.setText(item[0] + ' ' + item[1] + ' (' + item[2] + ')')
            self.page.user_access_contents.addWidget(p, alignment=Qt.AlignmentFlag.AlignTop)
            id = item[3]
            p.delete_button.clicked.connect(lambda _, pid=id: self.dialog_delete_user(pid))
            p.edit_button.clicked.connect(lambda _, pid=id: self.show_modify_user_form(pid))

    def clear_list(self):
        while self.page.user_access_contents.count():
            item = self.page.user_access_contents.takeAt(0)
            widget = item.widget()
            if widget is not None:
                widget.setParent(None)

    def show_user_credentials_form(self):
        form = UserAccessFormPopup(self.page)
        form.show()
        self.set_useraccess_form_options(form)

        def get_field_data():
            data = []
            data.append(form.user_field.currentData())
            data.append(form.pass_field.text())
            return data

        form.save_button.clicked.connect(lambda: self.dialog_add_user_credentials(form, get_field_data()))
        form.cancel_button.clicked.connect(lambda: form.close())

    def show_modify_user_form(self, id):
        form = UserAccessFormPopup(self.page)
        form.show()
        data = self.db.users_db.get_user_credentials(id)
        form.pass_field.setText(data[1])
        form.user_field.setDisabled(True)
        form.user_field.setEditable(True)
        form.user_field.setCurrentText(str(id))

        def get_pwdfield_data():
            return form.pass_field.text()

        form.save_button.clicked.connect(lambda: self.dialog_modify_user_credentials(form, id, get_pwdfield_data()))
        form.cancel_button.clicked.connect(lambda: form.close())

    def set_useraccess_form_options(self, form):
        employees = self.db.users_db.get_employees_without_user()
        for e in employees:
            form.user_field.addItem(e[1] + ' ' + e[2] + ' - ' + str(e[0]), e[0])
        form.user_field.setCurrentIndex(-1)

    def dialog_add_user_credentials(self, form, data):
        prompt = ConfirmDialog(form)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.users_db.add_new_user(*data)
            form.close()
            self.clear_list()
            self.populate_useraccess_list()

    def dialog_delete_user(self, id):
        prompt = ConfirmDialog(self.page)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            prompt.close()
            self.db.users_db.remove_user(id)
            self.clear_list()
            self.populate_useraccess_list()

    def dialog_modify_user_credentials(self, form, id, pwd):
        prompt = ConfirmDialog(self.page)
        prompt.show()
        prompt.confirm.connect(lambda: conf())
        def conf():
            self.db.users_db.update_user_credentials(id, pwd)
            prompt.close()
            form.close()
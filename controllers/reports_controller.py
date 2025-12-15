from PyQt6.QtCharts import QPieSlice
from PyQt6.QtGui import QColor


class ReportsController:
    def __init__(self, reports_page, mainWindow_controller):
        self.page = reports_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.set_piechart_values()

    def set_piechart_values(self):
        df = self.db.invoices_db.payment_method_count()
        total_count = df['count'].sum()

        for _, row in df.iterrows():
            tag = row['payment_method']
            value = float(row['count'])
            percent = value / total_count * 100
            slice_ = QPieSlice(f"{tag}: {percent:.1f}%", value)
            slice_.setLabelVisible(True)
            slice_.setLabel(f"{percent:.1f}%")
            slice_.setLabelPosition(QPieSlice.LabelPosition.LabelInsideHorizontal)
            self.page.payments_pie.append(slice_)
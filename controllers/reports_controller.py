from PyQt6.QtCharts import QPieSlice, QCategoryAxis, QLineSeries, QValueAxis
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont


class ReportsController:
    def __init__(self, reports_page, mainWindow_controller):
        self.page = reports_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.update_piechart()
        self.update_linegraph()
        self.setup_labels()

    def setup_labels(self):
        self.page.card1_val.setText(str(self.db.treatments_db.get_treatments_count()))
        self.page.card2_val.setText(str(f'{self.db.reports.get_overall_revenue():,}'))

    def get_payment_method_percentages(self):
        df = self.db.treatments_db.get_service_count()
        total_count = df['count'].sum()
        return [(row['service'], float(row['count']), float(row['count'])/total_count*100 )for _, row in df.iterrows()]

    def update_piechart(self):
        self.page.payments_pie.clear()
        for tag, value, percent in self.get_payment_method_percentages():
            slice_ = QPieSlice(f'{tag}: {percent:.1f}%', value)
            slice_.setLabelVisible(True)
            slice_.setLabel(f'{percent:.1f}%')
            slice_.setLabelColor(QColor.fromRgb(255, 255, 255   ))
            slice_.setLabelFont(QFont('Slate', 7))
            slice_.setLabelPosition(QPieSlice.LabelPosition.LabelInsideHorizontal)
            self.page.payments_pie.append(slice_)

            for marker in self.page.piechart.legend().markers(self.page.payments_pie):
                if marker.slice() is slice_:
                    marker.setLabel(tag)
                    break

    def update_linegraph(self):
        df = self.db.reports.monthly_revenue()
        monthly_revenue = [0] * 12
        for _, row in df.iterrows(): # populate monthly revenue
            month_index = int(row['month']) - 1
            monthly_revenue[month_index] = row['revenue']

        series = QLineSeries()
        series.setName('Revenue')

        for i, revenue in enumerate(monthly_revenue, start=1):
            series.append(i, revenue)
        self.page.linegraph.addSeries(series)

        axis_x = QCategoryAxis()
        axis_x.setTitleText("Month")
        axis_x.setLabelsFont(QFont('Slate', 7))
        months = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
        for i, month in enumerate(months, start=1):
            axis_x.append(month, i)
        self.page.linegraph.addAxis(axis_x, Qt.AlignmentFlag.AlignBottom)
        series.attachAxis(axis_x)

        axis_y = QValueAxis()
        axis_y.setTitleText("Amount (PHP)")
        axis_y.setLabelsFont(QFont('Slate', 7))
        self.page.linegraph.addAxis(axis_y, Qt.AlignmentFlag.AlignLeft)
        series.attachAxis(axis_y)

    def refresh_page(self):
        self.update_piechart()
        self.setup_labels()
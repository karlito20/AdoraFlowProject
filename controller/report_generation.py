import datetime

from PyQt6.QtCharts import QPieSlice, QCategoryAxis, QLineSeries, QValueAxis
from PyQt6.QtCore import Qt
from PyQt6.QtGui import QColor, QFont
from PyQt6.QtWidgets import QFileDialog
from reportlab.graphics.shapes import Line, Drawing
from reportlab.lib.colors import HexColor
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.pagesizes import A4
from reportlab.lib import colors



class ReportsController:
    def __init__(self, reports_page, mainWindow_controller):
        self.page = reports_page
        self.mainWindow_controller = mainWindow_controller
        self.db = self.mainWindow_controller.db

        self.update_piechart()
        self.update_linegraph()
        self.setup()

    def setup(self):
        self.page.card1_val.setText(str(self.db.treatments_db.get_treatments_count()))
        self.page.card2_val.setText(str(f'{self.db.reports.get_overall_revenue():,}'))
        self.page.generate_button.clicked.connect(lambda: self.generate_full_report())

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
        self.setup()

    def generate_full_report(self):
        date_period = [str(self.page.start_date.text()), str(self.page.end_date.text())]
        path, _ = QFileDialog.getSaveFileName(
            self.page,
            "Save Report",
            f"Clinic_Report_{date_period[0]}-{date_period[1]}.pdf",
            "PDF Files (*.pdf)"
        )
        if not path:
            return

        self.full_report_to_pdf(
            path,
            self.db.reports.get_full_report_data(date_period[0], date_period[1]),
            [date_period[0], date_period[1]]
        )

    def full_report_to_pdf(self, path, data, date_range):

        theme_color = HexColor('#367D77')  # headers
        acc_color = HexColor('#DBF0EE')  # secondary
        header_text_color = colors.whitesmoke

        doc = SimpleDocTemplate(
            path, pagesize=A4, rightMargin=36, leftMargin=36, topMargin=36, bottomMargin=36
        )

        styles = getSampleStyleSheet()

        title_style = ParagraphStyle(
            'CustomTitle',
            parent=styles['Heading1'],
            fontSize=24,
            leading=28,
            textColor=theme_color,
            spaceAfter=10
        )
        subtitle_style = ParagraphStyle(
            'CustomSubtitle',
            parent=styles['Normal'],
            fontSize=10,
            textColor=colors.gray,
        )
        section_header_style = ParagraphStyle(
            'SectionHeader',
            parent=styles['Heading2'],
            fontSize=14,
            textColor=theme_color,
            spaceBefore=15,
            spaceAfter=10,
            borderPadding=5,
            borderColor=colors.lightgrey,
            backColor=None
        )

        elements = []

        # Header
        clinic_name = "AdoraFlow Dental Clinic Management System"
        emp_name = self.db.users_db.get_employee_name(self.mainWindow_controller.userid)
        emp_id = self.mainWindow_controller.userid
        gen_date = datetime.datetime.now().strftime("%Y/%m/%d %I:%M:%S %p")

        # Left side of header
        header_left = [
            Paragraph("FULL REPORT", title_style),
            Paragraph(f"Source: {clinic_name}", subtitle_style),
        ]

        # Right side of header
        meta_style = ParagraphStyle('Meta', parent=styles['Normal'], alignment=2, fontSize=9)  # Right align
        header_right = [
            Paragraph(f"<b>Date Range:</b> {date_range[0]} - {date_range[1]}", meta_style),
            Paragraph(f"<b>Generated On:</b> {gen_date}", meta_style),
            Paragraph(f"<b>Generated By:</b> {emp_name} [ID: {emp_id}]", meta_style),
        ]

        header_data = [[header_left, header_right]]

        header_table = Table(header_data, colWidths=[300, 220])
        header_table.setStyle(TableStyle([
            ('VALIGN', (0, 0), (-1, -1), 'TOP'),
            ('LEFTPADDING', (0, 0), (-1, -1), 0),
            ('RIGHTPADDING', (0, 0), (-1, -1), 0),
        ]))

        elements.append(header_table)
        elements.append(Spacer(1, 10))

        # Decorative Line
        d = Drawing(520, 1)
        d.add(Line(0, 0, 520, 0, strokeColor=theme_color, strokeWidth=2))
        elements.append(d)
        elements.append(Spacer(1, 20))

        # Summary
        invoice_summary = data['summary']
        invoice_summary_table_data = [
            ['Key Metric', 'Value'],
            ['Total Appointments', invoice_summary['total_appointments']],
            ['Total Treatments', invoice_summary['total_treatments']],
            ['Total Invoices', invoice_summary['total_invoices']],
            ['Total Revenue', f'{invoice_summary["total_revenue"]:,.2f} PHP'],
        ]

        summary_table = Table(invoice_summary_table_data, colWidths=[260, 260])
        summary_table.hAlign = 'LEFT'

        standard_tbl_style = TableStyle([
            ('BACKGROUND', (0, 0), (-1, 0), theme_color),
            ('TEXTCOLOR', (0, 0), (-1, 0), header_text_color),
            ('ALIGN', (0, 0), (-1, -1), 'LEFT'),
            ('ALIGN', (1, 1), (-1, -1), 'RIGHT'),
            ('FONTNAME', (0, 0), (-1, 0), 'Helvetica-Bold'),
            ('FONTSIZE', (0, 0), (-1, 0), 10),
            ('BOTTOMPADDING', (0, 0), (-1, 0), 8),
            ('TOPPADDING', (0, 0), (-1, 0), 8),
            ('GRID', (0, 0), (-1, -1), 0.5, colors.lightgrey),
            ('ROWBACKGROUNDS', (0, 1), (-1, -1), [colors.white, acc_color]),
            ('FONTNAME', (0, 1), (-1, -1), 'Helvetica'),
            ('FONTSIZE', (0, 1), (-1, -1), 9),
        ])

        summary_table.setStyle(standard_tbl_style)

        elements.append(Paragraph('Summary', section_header_style))
        elements.append(summary_table)
        elements.append(Spacer(1, 20))

        # Revenue by service
        elements.append(Paragraph('Financial Performance: Top Treatments', section_header_style))

        services_data = [['Service Name', 'Total Revenue (PHP)']]
        for row in data['revenue_by_service']:
            services_data.append([row[0], row[1]])

        rev_table = Table(services_data, colWidths=[350, 170])
        rev_table.hAlign = 'LEFT'
        rev_table.setStyle(standard_tbl_style)

        elements.append(rev_table)
        elements.append(Spacer(1, 20))

        # Service by volume
        elements.append(Paragraph('Operational Volume: Most Performed Services', section_header_style))

        popular_services_data = [['Service Name', 'Volume (Count)']]
        for row in data['most_performed_services']:
            popular_services_data.append([row[0], row[1]])

        pop_table = Table(popular_services_data, colWidths=[350, 170])
        pop_table.hAlign = 'LEFT'
        pop_table.setStyle(standard_tbl_style)

        elements.append(pop_table)
        elements.append(Spacer(1, 20))

        # Appointment by status
        elements.append(Paragraph('Appointment Status Breakdown', section_header_style))

        apt_status_data = [['Current Status', 'Total Count']]
        for row in data['appointments_by_status']:
            apt_status_data.append([row[0], row[1]])

        status_table = Table(apt_status_data, colWidths=[350, 170])
        status_table.hAlign = 'LEFT'
        status_table.setStyle(standard_tbl_style)

        elements.append(status_table)
        elements.append(Spacer(1, 30))

        footer_text = Paragraph(
            "<i>* This report contains confidential medical and financial data. Please handle with care.</i>",
            styles['Italic']
        )
        elements.append(footer_text)

        doc.build(elements)
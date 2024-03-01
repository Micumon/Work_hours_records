import datetime
import sys
from PyQt6.QtWidgets import QApplication, QTableWidget, QMainWindow, QVBoxLayout, QTableWidgetItem
from PyQt6.QtCore import QSize
from PyQt6.QtGui import QPalette, QColor
import calendar


def weekday_translator(weekday):
    match weekday:
        case "Monday":
            return "Poniedziałek"
        case "Tuesday":
            return "Wtorek"
        case "Wednesday":
            return "Środa"
        case "Thursday":
            return "Czwartek"
        case "Friday":
            return "Piątek"
        case "Saturday":
            return "Sobota"
        case "Sunday":
            return "Niedziela"


app = QApplication(sys.argv)

month = [i for i in calendar.Calendar().itermonthdates(2024, 3) if i.month == 3]

v_headers = [month[i].strftime("%d.%m") + f" ({weekday_translator(calendar.day_name[month[i].weekday()])})"
             for i in range(len(month))]

widget = QTableWidget()
widget.setColumnCount(3)
widget.setRowCount(len(month))
widget.setHorizontalHeaderLabels(["Ja", "Ty", "Oni"])
widget.setVerticalHeaderLabels(v_headers)


for i in range(len(v_headers)):
    if v_headers[i].find("Sobota") != -1:
        for col in range(3):
            item = QTableWidgetItem()
            item.setBackground(QColor("red"))
            widget.setItem(i, col, item)
    elif v_headers[i].find("Niedziela") != -1:
        for col in range(3):
            item = QTableWidgetItem()
            item.setBackground(QColor("dark red"))
            widget.setItem(i, col, item)


window = QMainWindow()

window.setCentralWidget(widget)
window.setMinimumSize(QSize(600, 600))

window.show()
app.exec()

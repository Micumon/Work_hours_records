import datetime

from PyQt6.QtWidgets import QTableWidget, QTableWidgetItem
from PyQt6.QtCore import QSize
from Func_Classes.db_connector import my_cursor
from Func_Classes.WorkersClasses import Worker, WorkerList
from mariadb import Cursor


class MainTable(QTableWidget):
    def __init__(self, worker: Worker, db_cursor: Cursor, current_month: datetime.date):
        super().__init__()
        self.worker = worker
        self.__db_cursor = db_cursor
        self.today_date = current_month
        self.column_headers = ["Wejście", "Wyjście", "+/-", "Spec. Okazje"]

        self.setColumnCount(len(self.column_headers))
        self.setHorizontalHeaderLabels(self.column_headers)
        self.setRowCount(10)

    @staticmethod
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

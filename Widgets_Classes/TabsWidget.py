from PyQt6.QtWidgets import QTabWidget, QWidget, QLabel, QVBoxLayout
from Func_Classes.db_connector import my_cursor
from Func_Classes.WorkersClasses import WorkerList, Worker
from Widgets_Classes.TableWidget import MainTable
from Widgets_Classes.MyFonts import BigHeaderFont
import datetime


class TabsWidget(QTabWidget):
    def __init__(self):
        super().__init__()

        self.setTabPosition(self.TabPosition.North)

        self.tabs_builder()

    def tabs_builder(self):
        # Getting Worker list
        worker_list = WorkerList(my_cursor)
        current_date = datetime.date.today()

        for worker_id in worker_list.workers:
            # Getting worker
            worker = worker_list[worker_id]

            # Creating and organising inside widgets
            # Label
            name_label = QLabel()
            name_label.setText(f"{worker.name} {worker.last_name}".upper())
            name_label.setFont(BigHeaderFont())
            name_label.setStyleSheet("color: green")

            # Table
            worker_table = MainTable(worker_id, my_cursor, current_date)

            # Layout
            layout_vertical = QVBoxLayout()
            layout_vertical.addWidget(name_label)
            layout_vertical.addWidget(worker_table)

            # Box
            in_tab_widget_box = QWidget()
            in_tab_widget_box.setLayout(layout_vertical)

            # Creating tab for worker
            self.addTab(in_tab_widget_box, f"{worker.name} {worker.last_name}")

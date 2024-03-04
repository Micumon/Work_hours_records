from PyQt6.QtWidgets import QMainWindow, QVBoxLayout, QWidget
from PyQt6.QtCore import QSize
from Widgets_Classes.TabsWidget import TabsWidget


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        # Window parameters
        self.setWindowTitle("Lista Obecności")
        self.setMinimumSize(QSize(600, 600))

        # Menu bar
        # File bar
        menu_bar_file = self.menuBar()
        menu_bar_file.addMenu("Plik")

        # Workers bar
        menu_bar_workers = self.menuBar()
        menu_bar_workers.addMenu("Pracownicy")

        # Admin bar
        menu_bar_admin = self.menuBar()
        menu_bar_admin.addMenu("Administracja")

        # Reports bar
        menu_bar_reports = self.menuBar()
        menu_bar_reports.addMenu("Raporty")

        # Layout of widgets
        layout = QVBoxLayout()
        layout.addWidget(TabsWidget())  # Adding Tabs

        # Creating main layout container
        layout_box = QWidget()
        layout_box.setLayout(layout)

        # Setting central widget
        self.setCentralWidget(layout_box)

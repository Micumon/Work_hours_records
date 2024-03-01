from PyQt6.QtWidgets import QMainWindow, QVBoxLayout, QWidget
from PyQt6.QtCore import QSize


class MainWindow(QMainWindow):
    def __init__(self):
        super().__init__()

        # Window parameters
        self.setWindowTitle("Lista Obecności")
        self.setMinimumSize(QSize(600, 600))

        # Layout of widgets
        layout = QVBoxLayout()
        layout_box = QWidget()
        layout_box.setLayout(layout)

        # Setting central widget
        self.setCentralWidget(layout_box)

import sys
from PyQt6.QtWidgets import QApplication
from Widgets_Classes.MainWindow import MainWindow


app = QApplication(sys.argv)

window = MainWindow()
window.show()

app.exec()

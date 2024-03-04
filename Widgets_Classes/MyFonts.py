from PyQt6.QtGui import QFont, QColor, QTextFormat



class BigHeaderFont(QFont):
    def __init__(self):
        super().__init__()

        self.setBold(True)
        self.setUnderline(True)
        self.setPixelSize(25)


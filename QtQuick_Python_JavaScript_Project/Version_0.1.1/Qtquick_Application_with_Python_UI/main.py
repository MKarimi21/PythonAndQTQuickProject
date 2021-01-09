# This Python file uses the following encoding: utf-8
import sys
import os

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal

class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

    # Signal Set Name
    setName = Signal(str)


    # Function set Name to Lable
    @Slot(str)
    def welcomeText(self, name):
        self.setName.emit("Wlcome, {0}".format(name))




if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # GET CONTEXT
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # Load Qml File
    engine.load(os.path.join(os.path.dirname(__file__), "qml/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())

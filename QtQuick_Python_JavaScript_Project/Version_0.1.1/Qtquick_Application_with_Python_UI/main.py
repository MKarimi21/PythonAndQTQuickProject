# This Python file uses the following encoding: utf-8
import sys
import os
import datatime

from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot, Signal, QTimer

class MainWindow(QObject):
    def __init__(self):
        QObject.__init__(self)

    # QTimer - Run Timer
    self.timer = QTimer()
    self.timer.timeout.connect(lambda: self.setTime())
    self.timer.start(1000)

    # Signal Set Data
    printTime = Signal(str)



    # Set Timer Function
    def setTime(self):
        now = datatime.datatime.now()
        formatDate = now.strftime("Now is {0}:{1}:{2} {3} of {4}{5}{6}".format(H, M, S, p, Y, m, d))

        print(formatDate)
        self.printTime.emit(formatDate)


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

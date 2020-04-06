import os
import sys

from PySide2.QtCore import QUrl, QCoreApplication, Qt
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtWidgets import QApplication

if __name__ == '__main__':
    # Gnome _ wayland
    os.environ["XDG_SESSION_TYPE"] = ""
    os.environ["QT_QPA_PLATFORM"] = "xcb"

    # Setup the application window
    QCoreApplication.setAttribute(Qt.AA_EnableHighDpiScaling)
    app = QApplication(sys.argv)

    # Load QML file
    qml_file = os.path.join(os.path.dirname(os.path.dirname(__file__)), 'qml/main.qml')
    url = QUrl.fromLocalFile(os.path.abspath(qml_file))
    engine = QQmlApplicationEngine()
    engine.load(url)

    # Execute and cleanup
    app.exec_()

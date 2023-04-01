#include <QGuiApplication>
#include <qt6/QtQml/qqmlapplicationengine.h>
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine(QUrl(QStringLiteral("qrc:/src/qml/main.qml")));
    return app.exec();
}

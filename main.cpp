#include "hydraulics_channel_gvf.h"
#include <QApplication>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QApplication::setApplicationName("Hydraulics channel GVF");
    QApplication::setOrganizationName("org.hafsoftdz");
    QCoreApplication::setOrganizationName("org.hafsoftdz");
    QCoreApplication::setApplicationVersion(__VERSION__);

    QGuiApplication::setDesktopFileName(QStringLiteral("io.github.hafmed.Hydraulics-Channel-GVF"));
    QPixmap pixmap = QPixmap (":/icons/hydraulics-channel-gvf.ico");

    // Setup and load translator for localization
    //-----
    QTranslator translator;
    //QString locale = QLocale::system().name();
    QString locale = QString(QLocale::system().name()).left(2);
    if (locale.length() < 2) locale = "en";
    //qDebug()<<"locale="<<QLocale::system().name();
    if (locale!="fr")
    {
        locale="en";
        if(translator.load(QString(":/translations/qt_") + locale))
            app.installTranslator(&translator);
    }
    //-----
    hydraulics_channel_gvf w;
    w.setWindowIcon(QIcon(pixmap));
    w.show();
    return app.exec();
}

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSurfaceFormat>

#include "common/AppInfo.h"
#include "common/SwitchPage.h"
#include "common/MySerialport.h"
#include "common/qmlplot.h"

#include <QSystemSemaphore>
#include <QSharedMemory>

#include "SlBase.h"


int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);

    QSystemSemaphore semaphore("YourAppNameSemaphore", 1);  // 创建信号量
       semaphore.acquire();  // 获取资源

   #ifndef Q_OS_WIN32
       // 在 Unix/Linux 上，我们需要特别处理，因为在程序崩溃时，共享内存不会自动释放
       QSharedMemory nix_fix_shmem("YourAppNameSharedMemory");
       if(nix_fix_shmem.attach()){
           nix_fix_shmem.detach();
       }
   #endif

       QSharedMemory sharedMemory("YourAppNameSharedMemory");  // 创建共享内存
       bool isRunning;  // 是否已经有一个实例在运行
       if (sharedMemory.attach()) {  // 尝试附加到共享内存
           isRunning = true;
       } else {
           sharedMemory.create(1);  // 创建共享内存
           isRunning = false;
       }
       semaphore.release();  // 释放资源

       // 如果已经有一个实例在运行，则显示警告并退出
       if (isRunning) {
           QMessageBox::warning(nullptr, "警告", "应用程序已经在运行！");
           return 1;  // 退出程序
       }

    // antialiasing for shapes
    QSurfaceFormat format;
    format.setSamples( 8 );
    QSurfaceFormat::setDefaultFormat( format );

    //SlApp init
    SlApp::init( "UTF-8", "1.0.0.0" );
    SlLog::purgeExpiredFiles();

    //tets
    if( 1 )
    {
        SlLog_logFunc();
        SlLog_trace( "012汉字abc ");

        SlLog::test();
        SlTime::test();
        SlIni::test();

        //SlBase
        {
            SlBase slb;
            qDebug( "SlBase::add( 3 + 4 ) = %d", slb.add(3, 4) );
            qDebug( "SlBase::getTime() = %s", slb.getTime().toUtf8().data() );
        }
    }

    //engine
    QQmlApplicationEngine engine;
    {
        qmlRegisterType<SwitchPage>( "SerialPortDemo.SWitchpage", 1, 0, "TypePage");
        qmlRegisterType<MySerialPort>("MySerialPort", 1, 0, "SerialPort");
        qmlRegisterType<CustomPlotItem>("CustomPlot", 1, 0, "CustomPlotItem");
        qRegisterMetaType<SwitchPage::SWITCH_PAGE>( "SWITCH_PAGE" );

        QQmlContext* pContext = engine.rootContext();
        pContext->setContextProperty( "pAppInfo", AppInfo::getInstance() );
        pContext->setContextProperty( "pSwitchPage", new SwitchPage );


    }
    const QUrl url(SwitchPage::getPathQml(SwitchPage::SWITCH_PAGE::PAGE_MAIN) );
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    // exec
    int ret = app.exec();
    SlApp::exit( ret );
    return ret;
}

#include "qmlplot.h"
#include "qcustomplot.h"
#include <QDebug>
#pragma execution_character_set("utf-8")
DDuiBasePlotItem::DDuiBasePlotItem( QQuickItem* parent ) : QQuickPaintedItem( parent )
    , m_CustomPlot( new QCustomPlot() )
{
    setFlag( QQuickItem::ItemHasContents, true );
    setAcceptedMouseButtons( Qt::AllButtons );
    setAcceptHoverEvents(true);


    //游标的槽连接语句
    connect( getPlot(), SIGNAL(mousePress(QMouseEvent*)), this, SLOT(mousePressEvent(QMouseEvent*)));


    connect( this, &QQuickPaintedItem::widthChanged, this, &DDuiBasePlotItem::updateCustomPlotSize );
    connect( this, &QQuickPaintedItem::heightChanged, this, &DDuiBasePlotItem::updateCustomPlotSize );
}

DDuiBasePlotItem::~DDuiBasePlotItem()
{
    delete m_CustomPlot;
    m_CustomPlot = nullptr;
}

void DDuiBasePlotItem::paint( QPainter* painter )
{
    if (m_CustomPlot)
    {
        QPixmap    picture( boundingRect().size().toSize() );
        QCPPainter qcpPainter( &picture );

        m_CustomPlot->toPainter( &qcpPainter );

        painter->drawPixmap( QPoint(), picture );
    }
}

QCustomPlot *DDuiBasePlotItem::getPlot()
{
    if( !m_CustomPlot){
        m_CustomPlot = new QCustomPlot;
    }
    return m_CustomPlot;
}

void DDuiBasePlotItem::mousePressEvent( QMouseEvent* event )
{
    int x = getPlot()->xAxis->pixelToCoord(event->pos().x());

    tracer->setGraph(getPlot()->graph(0)); //将游标和该曲线图层想连接
    tracer->setGraphKey(x); //将游标横坐标设置成刚获得的横坐标数据x
    tracer->setInterpolating(true); //游标的纵坐标可以通过曲线数据线性插值自动获得
    tracer->updatePosition(); //使得刚设置游标的横纵坐标位置生效
    //更新游标说明的内容
    int xValue = tracer->position->key();
    int yValue = tracer->position->value();
    tracerLabel->setText(QString("(%1, %2)").arg(xValue).arg(yValue));

    tracer2->setGraph(getPlot()->graph(1)); //将游标和该曲线图层想连接
    tracer2->setGraphKey(x); //将游标横坐标设置成刚获得的横坐标数据x
    tracer2->setInterpolating(true); //游标的纵坐标可以通过曲线数据线性插值自动获得
    tracer2->updatePosition(); //使得刚设置游标的横纵坐标位置生效
    //更新游标说明的内容
    int xValue2 = tracer2->position->key();
    int yValue2 = tracer2->position->value();
    tracerLabel2->setText(QString("(%1, %2)").arg(xValue2).arg(yValue2));

    getPlot()->replot();//绘制器一定要重绘，否则看不到游标位置更新情况

    qDebug() << Q_FUNC_INFO;
    routeMouseEvents( event );
}

void DDuiBasePlotItem::mouseReleaseEvent( QMouseEvent* event )
{
    qDebug() << Q_FUNC_INFO;
    routeMouseEvents( event );
}

void DDuiBasePlotItem::mouseMoveEvent( QMouseEvent* event )
{
    qDebug() << Q_FUNC_INFO;
    routeMouseEvents( event );
}

void DDuiBasePlotItem::mouseDoubleClickEvent( QMouseEvent* event )
{
    qDebug() << Q_FUNC_INFO;
    routeMouseEvents( event );
}

void DDuiBasePlotItem::wheelEvent( QWheelEvent *event )
{
    routeWheelEvents( event );
}
void DDuiBasePlotItem::graphClicked( QCPAbstractPlottable* plottable )
{
    qDebug() << Q_FUNC_INFO << QString( "Clicked on graph '%1 " ).arg( plottable->name() );
}

void DDuiBasePlotItem::routeMouseEvents( QMouseEvent* event )
{
    if (m_CustomPlot)
    {
        QMouseEvent* newEvent = new QMouseEvent( event->type(), event->localPos(), event->button(), event->buttons(), event->modifiers() );
        QCoreApplication::postEvent( m_CustomPlot, newEvent );
    }
}

void DDuiBasePlotItem::routeWheelEvents( QWheelEvent* event )
{
    if (m_CustomPlot)
    {
        QWheelEvent* newEvent = new QWheelEvent( event->pos(), event->delta(), event->buttons(), event->modifiers(), event->orientation() );
        QCoreApplication::postEvent( m_CustomPlot, newEvent );
    }
}

void DDuiBasePlotItem::hoverMoveEvent(QHoverEvent *event)
{
    //qDebug() << Q_FUNC_INFO<<event->pos();
}

void DDuiBasePlotItem::updateCustomPlotSize()
{
    if (m_CustomPlot)
    {
        m_CustomPlot->setGeometry(0, 0, (int)width(), (int)height());
        m_CustomPlot->setViewport(QRect(0, 0, (int)width(), (int)height()));
    }
}

void DDuiBasePlotItem::onCustomReplot()
{
    //qDebug() << Q_FUNC_INFO;
    update();
}


////
/// \brief CustomPlotItem::CustomPlotItem
/// \param parent
///
CustomPlotItem::CustomPlotItem( QQuickItem* parent ) : DDuiBasePlotItem( parent )
{
}

CustomPlotItem::~CustomPlotItem()
{
}

void CustomPlotItem::initCustomPlot(int plotIndex)
{
    initializeThreshold(threshold);
    m_aisle = plotIndex;
    updateCustomPlotSize();
    getPlot()->addGraph();
    getPlot()->graph( 0 )->setPen( QPen( Qt::blue ) );
    getPlot()->xAxis->setLabel( "通道"  + QString::number(plotIndex + 1));
    getPlot()->xAxis->setRange( 0, 100 );
    getPlot()->yAxis->setRange( 0, 100 );
    getPlot() ->setInteractions( QCP::iRangeDrag | QCP::iRangeZoom );

    xCenter = (getPlot()->xAxis->range().upper + getPlot()->xAxis->range().lower) / 2.0;
    yCenter = getPlot()->yAxis->range().upper - (getPlot()->yAxis->range().size() * 0.15);  // 15% 从上部开始

    connect( getPlot(), &QCustomPlot::afterReplot, this, &CustomPlotItem::onCustomReplot );

    getPlot()->replot();
}



void CustomPlotItem::upAisleData()
{

    if( t < checkedData.count()  )
    {
        UImag = checkedData[t][m_aisle];
        if (abs(UImag) > 30) {
            UImag = 0;
        }

        //UReal = checkedDataReal[t][m_aisle];

//            maxValue = qMax( qMax( (int)UImag, (int)UReal), maxValue) ;
//            minValue = qMin( qMin( (int)UImag, (int)UReal), minValue) ;
        if (!m_turnedRed){
            if (qAbs(UImag) > qAbs(threshold)) {
                getPlot()->graph( 0 )->setPen( QPen( Qt::red ) );  // 设置线段颜色为红色
                // 添加或更新文本标签
                m_turnedRed = true;            // 标记线段已变为红色
            } else {
                getPlot()->graph( 0 )->setPen( QPen( Qt::blue ) ); // 设置线段颜色为蓝色
            }
        }



        if( UImag > maxValue )
            maxValue = UImag + 20;
        if( UImag < minValue )
            minValue = UImag - 20 ;
        getPlot()->graph(0)->addData(t, UImag);
        //getPlot()->graph(1)->addData(t, UReal);
        t++;


        // 计算曲线的最大值和最小值
        if( t > 100 )
            getPlot()->xAxis->setRange( t-100, t);
        else {
            getPlot()->xAxis->setRange( 0, 100);
        }
        if( maxValue > minValue )
          getPlot()->yAxis->setRange(minValue - 10, maxValue + 10);



        getPlot()->replot();

    }
}


void CustomPlotItem::clearData()
{
    checkedDataImag.clear();
    checkedDataReal.clear();
    t = 0;
    maxValue = -99999, minValue = 99999;
    getPlot()->yAxis->setRange(- 50, + 50);
    getPlot()->replot();
}

void CustomPlotItem::clearPlot()
{

    //清除数据
    checkedData.clear();

    //清除线条颜色变红，以及提示标签
    getPlot()->graph(0)->setPen(QPen(Qt::blue));
    m_turnedRed = false; //重新判断曲线颜色
    //隐藏文字标签
//    if (m_crackWarningText) {
//        m_crackWarningText->setVisible(false);
//    }

    t = 0;
    maxValue = -99999, minValue = 99999;
    getPlot()->graph(0)->data().data()->clear();
    getPlot()->replot();
}

void CustomPlotItem::thresholdSetting(double thresholdTmp)
{
    threshold = thresholdTmp;
}

void CustomPlotItem::saveData()
{

    QString filePathData = QFileDialog::getSaveFileName(NULL, "保存数据文件", "", "文本文件 (*.txt);;所有文件 (*)");

    if ( filePathData.isEmpty())
    {
        return;
    }


    saveDataToTxt(checkedData, filePathData);

    QMessageBox::information(NULL, tr("保存成功"), tr("数据已保存至文件: %1").arg(filePathData));


//    QString filePath = "C:/data.txt";
    //    saveDataToTxt(checkedData, filePath);
}

void CustomPlotItem::saveDataToTxt(const QVector<QVector<double> > &data, const QString &filePath)
{
    QFile file(filePath);
    if (!file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        qDebug() << "Failed to open file for writing: " << filePath;
        return;
    }

    QTextStream out(&file);
    for (int i = 0; i < data.size(); i++) {
        out << QString::number(data[i][m_aisle]) << " ";
    }

    if (file.flush()) {
            // 成功
            QMessageBox::information(NULL, tr("保存成功"), tr("数据已保存至文件: %1").arg(filePath));
        } else {
            // 失败
            QMessageBox::warning(NULL, tr("保存失败"), tr("数据保存失败，请重试"));
        }

    file.close();
    qDebug() << "Data saved to file: " << filePath;


}

void CustomPlotItem::initializeThreshold(double &threshold)
{
    // 1. 检查文件夹是否存在，如果不存在则创建
        QDir dir(folderPath);
        if (!dir.exists()) {
            dir.mkpath(folderPath);
        }

        // 2. 检查配置文件是否存在
        QFile file(filePath);
        if (!file.exists()) {
            // 如果不存在则创建配置文件并写入默认值
            if (file.open(QIODevice::WriteOnly | QIODevice::Text)) {
                QTextStream out(&file);
                out << "35";  // 默认值
                file.close();
                threshold = 35;
            } else {
                // 处理文件打开失败的情况
                qWarning() << "Could not open config file for writing.";
                threshold = 35;  // 默认值
            }
        } else {
            // 3. 读取配置文件并更新 threshold 值
            if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
                QTextStream in(&file);
                threshold = in.readLine().toDouble();
                file.close();
            } else {
                // 处理文件打开失败的情况
                qWarning() << "Could not open config file for reading.";
                threshold = 35;  // 默认值
            }
        }
}









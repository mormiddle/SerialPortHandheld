#ifndef QMLPLOT_H
#define QMLPLOT_H

#include <QtQuick>
#include "Globals.h"
#include "qcustomplot.h"
#include <QMessageBox>
#pragma execution_character_set("utf-8")


class QCustomPlot;
class QCPAbstractPlottable;


class DDuiBasePlotItem : public QQuickPaintedItem
{
    Q_OBJECT
public:
    DDuiBasePlotItem( QQuickItem* parent = 0 );
    virtual ~DDuiBasePlotItem();
    void paint( QPainter* painter );
    virtual void initCustomPlotUI(){}

    QCustomPlot *getPlot();
protected:
    virtual void hoverMoveEvent(QHoverEvent *event);
    virtual void mousePressEvent( QMouseEvent* event );
    virtual void mouseReleaseEvent( QMouseEvent* event );
    virtual void mouseMoveEvent( QMouseEvent* event );
    virtual void mouseDoubleClickEvent( QMouseEvent* event );
    virtual void wheelEvent( QWheelEvent *event );

    void routeMouseEvents( QMouseEvent* event );
    void routeWheelEvents( QWheelEvent* event );
public slots:
    void graphClicked( QCPAbstractPlottable* plottable );
    void onCustomReplot();
    void updateCustomPlotSize();
private:
    QCustomPlot*    m_CustomPlot;
    QCPItemTracer *tracer;
    QCPItemText *tracerLabel;

    QCPItemTracer *tracer2;
    QCPItemText *tracerLabel2;

};

class CustomPlotItem : public DDuiBasePlotItem
{
    Q_OBJECT
public:
    CustomPlotItem( QQuickItem* parent = 0 );
    virtual ~CustomPlotItem();
    Q_INVOKABLE void initCustomPlot(int plotIndex);
    Q_INVOKABLE void upAisleData();
    Q_INVOKABLE void clearData();
    Q_INVOKABLE void clearPlot();
    Q_INVOKABLE void thresholdSetting(double thresholdTmp);
    Q_INVOKABLE void saveData();    //保存数据
    void saveDataToTxt(const QVector<QVector<double>>& data, const QString& filePath);  //数据转化为文本
    void initializeThreshold(double& threshold); //初始化阈值


private:
    int m_aisle = 0;
//    int m_plural = 0;
    int maxValue = -99999, minValue = 99999;
    double t = 0, UImag = 0, UReal = 0;
    double threshold = 35;  // 设定的阈值
    bool m_turnedRed = false;  // 判别是否已经超过阈值，默认为 false
    QCPItemText *m_crackWarningText = nullptr;//一个提示是否有裂纹的标签
    double xCenter;//用于设定标签的位置
    double yCenter;
    const QString folderPath = "D:/涡流探伤配置";
    const QString filePath = folderPath + "/config.txt";



};


#endif // QMLPLOT_H

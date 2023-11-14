#ifndef MYSERIALPORT_H
#define MYSERIALPORT_H

#include <QtQuick>
#include <QObject>
#include <QSerialPort>
#include <QColor>
#include <vector>
#include <QMessageBox>

#include "Globals.h"

#define ASIIC_TYPE true
#define HEX_TYPE false
#pragma execution_character_set("utf-8")

class MySerialPort : public QObject
{
    Q_OBJECT

public:
    explicit MySerialPort(QObject *parent = nullptr);
    ~MySerialPort();
    QSerialPort *myPort;

public:
    QByteArray buffer;
    int start = 0;
    int framesReceived = 0;
    double calibrationValue[10] = {0.0};
    bool isCalibrate = false;
    const QString folderPath = "D:/涡流探伤配置";
    const QString filePath = folderPath + "/config.txt";

signals:
    void portNameSignal(QString portName);
    void displayRecDataSignal( QString );
    void autorChanged();
    void returnOpenResultSignal( bool );

public slots:
    void setPort();
    void initPort();
    void openPort( QString value );
    void readData_slot();
    bool readIsMyPortOpen();
    quint8 CRC8(QByteArray buffer, int start, int length);
    //void showData(QVector<QVector<double>>&);
    int toIntData(quint8 lowByte, quint8 highByte);
    Q_INVOKABLE void parameterCalibration();
    Q_INVOKABLE bool updateThresholdValue(double newValue); //更新阈值
    Q_INVOKABLE double readThresholdValue();//更新对话框中阈值

};

#endif // MYSERIALPORT_H

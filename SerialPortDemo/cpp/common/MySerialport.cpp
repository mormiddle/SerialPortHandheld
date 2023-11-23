#include "MySerialport.h"
#include <QSerialPortInfo>
#include <QDebug>
#include <QTime>
#pragma execution_character_set("utf-8")

int count = 0;

MySerialPort::MySerialPort(QObject *parent) : QObject(parent)
{
    myPort = new QSerialPort;
}

MySerialPort::~MySerialPort()
{
    delete myPort;
}

void MySerialPort::setPort()
{

}


void MySerialPort::initPort()
{
    foreach( const QSerialPortInfo &info, QSerialPortInfo::availablePorts() )
    {
        qDebug() << "Name : " << info.portName();
        emit portNameSignal( info.portName() );
    }
    myPort->setBaudRate(115200);
    myPort->setDataBits(QSerialPort::Data8);
    myPort->setParity(QSerialPort::NoParity);
    myPort->setStopBits(QSerialPort::OneStop);
}

void MySerialPort::openPort( QString value)
{
    qDebug() << " openPort is working ";
    QStringList list = value.split('/');
    int btnState = list[0].toInt();
    QString port = list[1];

    if( btnState == 1 )     //1 串口打开标志
    {
        //设置串口名字
        myPort->setPortName( port );
        if( myPort->open( QIODevice::ReadWrite ) )
        {
            connect( myPort, &QSerialPort::readyRead, this, &MySerialPort::readData_slot );
            qDebug() << myPort->portName() << myPort->baudRate() << myPort->dataBits()
                     << myPort->parity() << myPort->stopBits();
        }
        else
        {

        }
    }
    else
    {
        if( btnState == 0 )
        {
            myPort->close();
        }
        emit returnOpenResultSignal( myPort->isOpen() );
    }
}

void MySerialPort::readData_slot()
{
    int num = myPort->bytesAvailable();
    if( num == 0) {
        return;
    }

    QByteArray buff;
    buff = myPort->readAll();

    buffer.append(buff);//缓存数据

    int count = buffer.count();
    int bytesIgnored = 0;

    while ( start + 44 <= count ) {

        if( buffer[start] != static_cast<char>(0xaa) || buffer[start + 1] != static_cast<char>(0x29) || buffer[start + 43] != static_cast<char>(0x80)) {
            ++start;
            ++bytesIgnored;
            continue;
        }

        if( CRC8(buffer, start + 2, 40) !=static_cast<unsigned char>(buffer[start + 42]) ){
            ++start;
            ++bytesIgnored;
            continue;
        }


        //appen data
        {

            QVector<double> squareRootData;
            double tmpImage, tmpReal, tmp;
            for (int i = start + 2; i < start + 42; i += 4)
            {           
                tmpImage = toIntData(buffer[i + 2], buffer[i + 3]);
                tmpReal = toIntData(buffer[i + 0], buffer[i + 1]);
//                tmp = sqrt(tmpImage * tmpImage + tmpReal * tmpReal);
                squareRootData.append(tmpReal*1.5);
            }

            //判断是否进行了标定
            if( isCalibrate )
            {
                for(int i = 0; i < squareRootData.size(); ++i)
                {
                    calibrationValue[i] = squareRootData[i];
                }
                isCalibrate = false;
            }

            //实际值减去标定值
            for(int i = 0; i < squareRootData.size(); ++i)
            {
                squareRootData[i] = squareRootData[i] - calibrationValue[i];
            }


            checkedData.append(squareRootData);
            squareRootData.clear();

        }


        start += 44;
        ++framesReceived;

}
    if( bytesIgnored > 0) {
        QDateTime dt = QDateTime::currentDateTime();
        qDebug() << QString("%1:%2:%3.%4 %5 frames received, %6 bytes ignored")
                            .arg(dt.time().hour()).arg(dt.time().minute())
                            .arg(dt.time().second()).arg(dt.time().msec())
                            .arg(framesReceived).arg(bytesIgnored);
                framesReceived = 0;
    }

    if( start < count ) {
        buffer = buffer.mid(start, count - start);
    }
    else {
        buffer.clear();
    }
    start = 0;
    //测试数据传输，将其显示出来
    //showData(checkedData);


}

bool MySerialPort::readIsMyPortOpen()
{
    qDebug() << myPort->isOpen();
    return myPort->isOpen();
}

quint8 MySerialPort::CRC8(QByteArray buffer, int start, int length)
{
    quint8 crc = 0; // Initial value

       for (int j = start; j < start + length; j++)
       {
           crc ^= buffer[j];
           for (int i = 0; i < 8; i++)
           {
               if ((crc & 0x80) != 0)
               {
                   crc <<= 1;
                   crc ^= 0x07;
               }
               else
               {
                   crc <<= 1;
               }
           }
       }
       return crc;
}


int MySerialPort::toIntData(quint8 lowByte, quint8 highByte)
{
    qint16 rawValue = (qint16)((highByte << 8) | lowByte); // convert to signed short
    int signedValue = static_cast<int>(rawValue); // convert to signed int
    return signedValue;
}

void MySerialPort::parameterCalibration()
{
    isCalibrate = true;
}


bool MySerialPort::updateThresholdValue(double newValue)
{
    QFile file(filePath);
    if (file.open(QIODevice::WriteOnly | QIODevice::Text)) {
        QTextStream out(&file);
        out << newValue;
        file.close();
        return true;  // 更新成功
    } else {
        // 处理文件打开失败的情况
        qWarning() << "Could not open config file for writing.";
        return false;  // 更新失败
    }
}

double MySerialPort::readThresholdValue()
{
    const QString filePath = "D:/涡流探伤配置/config.txt";
    QFile file(filePath);
    if (file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        QTextStream in(&file);
        double threshold = in.readLine().toDouble();
        file.close();
        return threshold;
    } else {
        return 35.0;  // 默认值
    }
}


















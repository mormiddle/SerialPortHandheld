/****************************************************************************
** Meta object code from reading C++ file 'qmlplot.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.14.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../cpp/common/qmlplot.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'qmlplot.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.14.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_DDuiBasePlotItem_t {
    QByteArrayData data[7];
    char stringdata0[99];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DDuiBasePlotItem_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DDuiBasePlotItem_t qt_meta_stringdata_DDuiBasePlotItem = {
    {
QT_MOC_LITERAL(0, 0, 16), // "DDuiBasePlotItem"
QT_MOC_LITERAL(1, 17, 12), // "graphClicked"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 21), // "QCPAbstractPlottable*"
QT_MOC_LITERAL(4, 53, 9), // "plottable"
QT_MOC_LITERAL(5, 63, 14), // "onCustomReplot"
QT_MOC_LITERAL(6, 78, 20) // "updateCustomPlotSize"

    },
    "DDuiBasePlotItem\0graphClicked\0\0"
    "QCPAbstractPlottable*\0plottable\0"
    "onCustomReplot\0updateCustomPlotSize"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DDuiBasePlotItem[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x0a /* Public */,
       5,    0,   32,    2, 0x0a /* Public */,
       6,    0,   33,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void DDuiBasePlotItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DDuiBasePlotItem *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->graphClicked((*reinterpret_cast< QCPAbstractPlottable*(*)>(_a[1]))); break;
        case 1: _t->onCustomReplot(); break;
        case 2: _t->updateCustomPlotSize(); break;
        default: ;
        }
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        switch (_id) {
        default: *reinterpret_cast<int*>(_a[0]) = -1; break;
        case 0:
            switch (*reinterpret_cast<int*>(_a[1])) {
            default: *reinterpret_cast<int*>(_a[0]) = -1; break;
            case 0:
                *reinterpret_cast<int*>(_a[0]) = qRegisterMetaType< QCPAbstractPlottable* >(); break;
            }
            break;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject DDuiBasePlotItem::staticMetaObject = { {
    QMetaObject::SuperData::link<QQuickPaintedItem::staticMetaObject>(),
    qt_meta_stringdata_DDuiBasePlotItem.data,
    qt_meta_data_DDuiBasePlotItem,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *DDuiBasePlotItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DDuiBasePlotItem::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_DDuiBasePlotItem.stringdata0))
        return static_cast<void*>(this);
    return QQuickPaintedItem::qt_metacast(_clname);
}

int DDuiBasePlotItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QQuickPaintedItem::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    }
    return _id;
}
struct qt_meta_stringdata_CustomPlotItem_t {
    QByteArrayData data[10];
    char stringdata0[112];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_CustomPlotItem_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_CustomPlotItem_t qt_meta_stringdata_CustomPlotItem = {
    {
QT_MOC_LITERAL(0, 0, 14), // "CustomPlotItem"
QT_MOC_LITERAL(1, 15, 14), // "initCustomPlot"
QT_MOC_LITERAL(2, 30, 0), // ""
QT_MOC_LITERAL(3, 31, 9), // "plotIndex"
QT_MOC_LITERAL(4, 41, 11), // "upAisleData"
QT_MOC_LITERAL(5, 53, 9), // "clearData"
QT_MOC_LITERAL(6, 63, 9), // "clearPlot"
QT_MOC_LITERAL(7, 73, 16), // "thresholdSetting"
QT_MOC_LITERAL(8, 90, 12), // "thresholdTmp"
QT_MOC_LITERAL(9, 103, 8) // "saveData"

    },
    "CustomPlotItem\0initCustomPlot\0\0plotIndex\0"
    "upAisleData\0clearData\0clearPlot\0"
    "thresholdSetting\0thresholdTmp\0saveData"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_CustomPlotItem[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    1,   44,    2, 0x02 /* Public */,
       4,    0,   47,    2, 0x02 /* Public */,
       5,    0,   48,    2, 0x02 /* Public */,
       6,    0,   49,    2, 0x02 /* Public */,
       7,    1,   50,    2, 0x02 /* Public */,
       9,    0,   53,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Void, QMetaType::Int,    3,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Double,    8,
    QMetaType::Void,

       0        // eod
};

void CustomPlotItem::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CustomPlotItem *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->initCustomPlot((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 1: _t->upAisleData(); break;
        case 2: _t->clearData(); break;
        case 3: _t->clearPlot(); break;
        case 4: _t->thresholdSetting((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->saveData(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject CustomPlotItem::staticMetaObject = { {
    QMetaObject::SuperData::link<DDuiBasePlotItem::staticMetaObject>(),
    qt_meta_stringdata_CustomPlotItem.data,
    qt_meta_data_CustomPlotItem,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *CustomPlotItem::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *CustomPlotItem::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CustomPlotItem.stringdata0))
        return static_cast<void*>(this);
    return DDuiBasePlotItem::qt_metacast(_clname);
}

int CustomPlotItem::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = DDuiBasePlotItem::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 6)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 6;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 6)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 6;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE

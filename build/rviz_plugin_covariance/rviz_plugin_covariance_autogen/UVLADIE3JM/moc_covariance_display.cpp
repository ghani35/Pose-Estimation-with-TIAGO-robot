/****************************************************************************
** Meta object code from reading C++ file 'covariance_display.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.5)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/rviz_plugin_covariance/src/covariance_display.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'covariance_display.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.5. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay_t {
    QByteArrayData data[8];
    char stringdata0[145];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay_t qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay = {
    {
QT_MOC_LITERAL(0, 0, 41), // "rviz_plugin_covariance::Covar..."
QT_MOC_LITERAL(1, 42, 19), // "updateColorAndAlpha"
QT_MOC_LITERAL(2, 62, 0), // ""
QT_MOC_LITERAL(3, 63, 11), // "updateScale"
QT_MOC_LITERAL(4, 75, 14), // "updateShowAxis"
QT_MOC_LITERAL(5, 90, 18), // "updateShowPosition"
QT_MOC_LITERAL(6, 109, 21), // "updateShowOrientation"
QT_MOC_LITERAL(7, 131, 13) // "updateUse6DOF"

    },
    "rviz_plugin_covariance::CovarianceDisplay\0"
    "updateColorAndAlpha\0\0updateScale\0"
    "updateShowAxis\0updateShowPosition\0"
    "updateShowOrientation\0updateUse6DOF"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_rviz_plugin_covariance__CovarianceDisplay[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       6,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   44,    2, 0x08 /* Private */,
       3,    0,   45,    2, 0x08 /* Private */,
       4,    0,   46,    2, 0x08 /* Private */,
       5,    0,   47,    2, 0x08 /* Private */,
       6,    0,   48,    2, 0x08 /* Private */,
       7,    0,   49,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void rviz_plugin_covariance::CovarianceDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        CovarianceDisplay *_t = static_cast<CovarianceDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updateColorAndAlpha(); break;
        case 1: _t->updateScale(); break;
        case 2: _t->updateShowAxis(); break;
        case 3: _t->updateShowPosition(); break;
        case 4: _t->updateShowOrientation(); break;
        case 5: _t->updateUse6DOF(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

const QMetaObject rviz_plugin_covariance::CovarianceDisplay::staticMetaObject = {
    { &rviz::MessageFilterDisplay<geometry_msgs::PoseWithCovarianceStamped>::staticMetaObject, qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay.data,
      qt_meta_data_rviz_plugin_covariance__CovarianceDisplay,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *rviz_plugin_covariance::CovarianceDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *rviz_plugin_covariance::CovarianceDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_rviz_plugin_covariance__CovarianceDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<geometry_msgs::PoseWithCovarianceStamped>::qt_metacast(_clname);
}

int rviz_plugin_covariance::CovarianceDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<geometry_msgs::PoseWithCovarianceStamped>::qt_metacall(_c, _id, _a);
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

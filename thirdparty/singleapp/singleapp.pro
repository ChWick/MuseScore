TEMPLATE = lib

CONFIG += staticlib

QT += widgets network

SOURCES += \
    src/qtlocalpeer.cpp \
    src/qtsingleapplication.cpp \

#    src/qtsinglecoreapplication.cpp \
#    src/qtlockedfile.cpp \

HEADERS += \
    src/qtlocalpeer.h \
    src/qtsingleapplication.h \

#    src/qtlockedfile.h \
#    src/qtsinglecoreapplication.h \

#unix:SOURCES += src/qtlockedfile_unix.cpp
#win32:SOURCES += src/qtlockedfile_win.cpp

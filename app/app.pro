TEMPLATE = app

INCLUDEPATH += $$OUT_PWD/../mscore
include(../config.pri)
include(../MuseScore.pri)

SOURCES += $$PWD/main.cpp

LIBS += -L$$OUT_PWD/../mscore -lmscore

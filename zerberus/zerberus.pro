TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += \
    channel.cpp \
    instrument.cpp \
    sfz.cpp \
    voice.cpp \
    zerberus.cpp \
    zerberusgui.cpp \
    zone.cpp \

HEADERS += \
    channel.h \
    instrument.h \
    sample.h \
    voice.h \
    zerberusgui.h \
    zerberus.h \
    zone.h \

FORMS += \
    zerberus_gui.ui

# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

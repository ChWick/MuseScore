TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += midifile.cpp midiinstrument.cpp

HEADERS += \
    midifile.h \
    midiinstrument.h \


# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

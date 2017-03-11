TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += event.cpp msynthesizer.cpp synthesizergui.cpp

HEADERS += \
    event.h \
    midipatch.h \
    msynthesizer.h \
    synthesizergui.h \
    synthesizer.h \

# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += effect.cpp effectgui.cpp
HEADERS += effectgui.h effect.h

SOURCES += \
    compressor/compressor.cpp \
    compressor/compressorgui.cpp \
    noeffect/noeffect.cpp \
    zita1/zita.cpp \
    zita1/zitagui.cpp \

HEADERS += \
    chorus/cs_chorus.h \
    compressor/compressor.h \
    noeffect/noeffectgui.h \
    noeffect/noeffect.h \
    zita1/zitagui.h \
    zita1/zita.h \


FORMS += compressor/compressor_gui.ui \

RESOURCES += zita1/zita.qrc


# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

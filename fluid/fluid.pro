TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += \
    chan.cpp \
    conv.cpp \
    dsp.cpp \
    fluid.cpp \
    fluidgui.cpp \
    gen.cpp \
    mod.cpp \
    sfont.cpp \
    tuning.cpp \
    voice.cpp \

#    sfont3.cpp \

HEADERS += \
    conv.h \
    fluidgui.h \
    fluid.h \
    gen.h \
    sfont.h \
    tuning.h \
    voice.h \


FORMS += fluid_gui.ui


# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

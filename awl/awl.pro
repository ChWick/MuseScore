TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += \
    aslider.cpp \
    awlplugin.cpp \
    colorlabel.cpp \
    denomspinbox.cpp \
    knob.cpp \
    ltest.cpp \
    midipanknob.cpp \
    mslider.cpp \
    panknob.cpp \
    pitchedit.cpp \
    pitchlabel.cpp \
    poslabel.cpp \
    slider.cpp \
    utils.cpp \
    volknob.cpp \
    volslider.cpp \

#    posedit.cpp \

HEADERS += \
    aslider.h \
    awlplugin.h \
    colorlabel.h \
    denomspinbox.h \
    fastlog.h \
    knob.h \
    midipanknob.h \
    mslider.h \
    panknob.h \
    pitchedit.h \
    pitchlabel.h \
    poslabel.h \
    slider.h \
    utils.h \
    volknob.h \
    volslider.h \

#    posedit.h \

# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"

    # log2 is not defined on android
    DEFINES += "\"log2\(x\)=\(log\(x\)/1.4426950408889634\)\""
}

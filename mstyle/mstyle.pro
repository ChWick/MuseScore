TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += \
    animationdata.cpp \
    animations.cpp \
    colorscheme.cpp \
    colorutils.cpp \
    comboboxdata.cpp \
    comboboxengine.cpp \
    dockseparatordata.cpp \
    dockseparatorengine.cpp \
    enabledata.cpp \
    frameshadow.cpp \
    genericdata.cpp \
    headerviewdata.cpp \
    headerviewengine.cpp \
    labeldata.cpp \
    labelengine.cpp \
    lineeditdata.cpp \
    lineeditengine.cpp \
    mconfig.cpp \
    mdiwindowdata.cpp \
    mdiwindowengine.cpp \
    menubardata.cpp \
    menubarengine.cpp \
    menuengine.cpp \
    mstyle.cpp \
    progressbardata.cpp \
    progressbarengine.cpp \
    scrollbardata.cpp \
    scrollbarengine.cpp \
    sliderdata.cpp \
    sliderengine.cpp \
    spinboxdata.cpp \
    spinboxengine.cpp \
    splitterengine.cpp \
    stackedwidgetdata.cpp \
    stackedwidgetengine.cpp \
    stylehelper.cpp \
    tabbardata.cpp \
    tabbarengine.cpp \
    tileset.cpp \
    toolbardata.cpp \
    toolbarengine.cpp \
    toolboxengine.cpp \
    transitiondata.cpp \
    transitions.cpp \
    transitionwidget.cpp \
    widgetstatedata.cpp \
    widgetstateengine.cpp \

HEADERS += \
    animationdata.h \
    animation.h \
    animationmodes.h \
    animations.h \
    baseengine.h \
    cache.h \
    colorscheme.h \
    colorutils.h \
    comboboxdata.h \
    comboboxengine.h \
    datamap.h \
    dockseparatordata.h \
    dockseparatorengine.h \
    enabledata.h \
    frameshadow.h \
    genericdata.h \
    headerviewdata.h \
    headerviewengine.h \
    labeldata.h \
    labelengine.h \
    lineeditdata.h \
    lineeditengine.h \
    mconfig.h \
    mdiwindowdata.h \
    mdiwindowengine.h \
    menubardata.h \
    menubardata_imp.h \
    menubarengine.h \
    menudata.h \
    menuengine.h \
    mstyle.h \
    progressbardata.h \
    progressbarengine.h \
    scrollbardata.h \
    scrollbarengine.h \
    sliderdata.h \
    sliderengine.h \
    spinboxdata.h \
    spinboxengine.h \
    splitterengine.h \
    stackedwidgetdata.h \
    stackedwidgetengine.h \
    stylehelper.h \
    tabbardata.h \
    tabbarengine.h \
    tileset.h \
    toolbardata.h \
    toolbarengine.h \
    toolboxengine.h \
    transitiondata.h \
    transitions.h \
    transitionwidget.h \
    widgetstatedata.h \
    widgetstateengine.h \


# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

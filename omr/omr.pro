TEMPLATE = lib
CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help

INCLUDEPATH += $$PWD/..

SOURCES += \
    importpdf.cpp \
    ocr.cpp \
    omr.cpp \
    omrpage.cpp \
    omrview.cpp \
    pattern.cpp \
    pdf.cpp \
    skew.cpp \
    utils.cpp \

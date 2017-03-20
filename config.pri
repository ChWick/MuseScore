CONFIG += precompile_header
PRECOMPILED_HEADER = $$PWD/all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help network
qtHaveModule(webenginewidgets): QT += webenginewidgets
qtHaveModule(printsupport): QT += printsupport

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/mscore
INCLUDEPATH += $$PWD/thirdparty
INCLUDEPATH += $$PWD/thirdparty/freetype/include
INCLUDEPATH += $$PWD/thirdparty/vorbis
INCLUDEPATH += $$PWD/thirdparty/vorbis/lib
INCLUDEPATH += $$PWD/thirdparty/ogg
INCLUDEPATH += $$PWD/thirdparty/openssl/include



# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
    QMAKE_CXXFLAGS += "-include android_fix.h"

    # log2 is not defined on android, included in android fix
    # DEFINES += "\"log2\(x\)=\(log\(x\)/1.4426950408889634\)\""
}

INCLUDEPATH += $$PWD
INCLUDEPATH += $$PWD/mscore
INCLUDEPATH += $$PWD/thirdparty
INCLUDEPATH += $$PWD/thirdparty/freetype/include
INCLUDEPATH += $$PWD/thirdparty/vorbis
INCLUDEPATH += $$PWD/thirdparty/vorbis/lib
INCLUDEPATH += $$PWD/thirdparty/ogg
INCLUDEPATH += $$PWD/thirdparty/openssl/include


android {
} else {
    LIBS += -lasound -lsndfile
}

LIBS += -lz

#include(awl/awl.pri)
#include(bww2mxml/bww2mxml.pri)
#include(effects/effects.pri)
#include(fluid/fluid.pri)
#include(libmscore/libmscore.pri)
#include(midi/midi.pri)
#include(mscore/mscore.pri)
#include(mstyle/mstyle.pri)
#include(synthesizer/synthesizer.pri)
#
#include(thirdparty/beatroot/beatroot.pri)
#include(thirdparty/diff/diff.pri)
#include(thirdparty/freetype/freetype.pri)
#include(thirdparty/kQOAuth/kQOAuth.pri)
#include(thirdparty/ogg/ogg.pri)
#include(thirdparty/qzip/qzip.pri)
#include(thirdparty/rtf2html/rtf2html.pri)
#include(thirdparty/singleapp/singleapp.pri)
#include(thirdparty/vorbis/vorbis.pri)

HEADERS += \
    $$PWD/android_fix.h

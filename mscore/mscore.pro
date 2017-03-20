TEMPLATE = lib
# dynamic lib

include(../config.pri)
include(mscore.pri)

LIBS_OUT = $$OUT_PWD/..
LIBS += -Wl,--start-group
LIBS += -L$$LIBS_OUT/libmscore -lmscore_core
#LIBS += -L$$LIBS_OUT/zerberus -lzerberus
LIBS += -L$$LIBS_OUT/effects -leffects
LIBS += -L$$LIBS_OUT/fluid -lfluid
LIBS += -L$$LIBS_OUT/midi -lmidi
LIBS += -L$$LIBS_OUT/awl -lawl
LIBS += -L$$LIBS_OUT/bww2mxml -lbww2mxml
LIBS += -L$$LIBS_OUT/synthesizer -lsynthesizer
LIBS += -L$$LIBS_OUT/mstyle -lmstyle
LIBS += -L$$LIBS_OUT/thirdparty/beatroot -lbeatroot
LIBS += -L$$LIBS_OUT/thirdparty/diff -ldiff
LIBS += -L$$LIBS_OUT/thirdparty/qzip -lqzip
LIBS += -L$$LIBS_OUT/thirdparty/freetype -lfreetype
LIBS += -L$$LIBS_OUT/thirdparty/rtf2html -lrtf2html
LIBS += -L$$LIBS_OUT/thirdparty/kQOAuth -lkQOAuth
LIBS += -L$$LIBS_OUT/thirdparty/singleapp -lsingleapp
LIBS += -L$$LIBS_OUT/thirdparty/vorbis -lvorbis
LIBS += -L$$LIBS_OUT/thirdparty/ogg -logg
LIBS += -Wl,--end-group

LIBS += -lasound -lsndfile
LIBS += -lz

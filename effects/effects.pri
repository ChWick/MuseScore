SOURCES += \
    $$PWD/effect.cpp \
    $$PWD/effectgui.cpp

HEADERS += \
    $$PWD/effectgui.h \
    $$PWD/effect.h

SOURCES += \
    $$PWD/compressor/compressor.cpp \
    $$PWD/compressor/compressorgui.cpp \
    $$PWD/noeffect/noeffect.cpp \
    $$PWD/zita1/zita.cpp \
    $$PWD/zita1/zitagui.cpp \

HEADERS += \
    $$PWD/chorus/cs_chorus.h \
    $$PWD/compressor/compressor.h \
    $$PWD/noeffect/noeffectgui.h \
    $$PWD/noeffect/noeffect.h \
    $$PWD/zita1/zitagui.h \
    $$PWD/zita1/zita.h \


FORMS += $$PWD/compressor/compressor_gui.ui \

RESOURCES += $$PWD/zita1/zita.qrc

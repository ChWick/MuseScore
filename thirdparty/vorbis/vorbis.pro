TEMPLATE = lib
CONFIG += staticlib

INCLUDEPATH += ../ogg
INCLUDEPATH += $$PWD/lib

SOURCES += \
    lib/analysis.c \
    lib/barkmel.c \
    lib/bitrate.c \
    lib/block.c \
    lib/codebook.c \
    lib/tone.c \
    lib/envelope.c \
    lib/floor0.c \
    lib/floor1.c \
    lib/info.c \
    lib/lookup.c \
    lib/lpc.c \
    lib/lsp.c \
    lib/mapping0.c \
    lib/mdct.c \
    lib/psy.c \
    lib/registry.c \
    lib/res0.c \
    lib/sharedbook.c \
    lib/smallft.c \
    lib/synthesis.c \
    lib/vorbisenc.c \
    lib/vorbisfile.c \
    lib/window.c \

#    lib/psytune.c \


HEADERS += 

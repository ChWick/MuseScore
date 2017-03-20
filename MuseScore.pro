TEMPLATE = subdirs

SUBDIRS += \
    app \
    awl \
    bww2mxml \
    effects \
    fluid \
    libmscore \
    midi \
    mscore \
    mstyle \
    synthesizer \
    thirdparty \

mscore.depends = awl bww2mxml effects fluid libmscore midi mstyle synthesizer thirdparty
app.depends = mscore

include(config.pri)

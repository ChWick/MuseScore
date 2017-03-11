TEMPLATE = subdirs
SUBDIRS += awl bww2mxml effects fluid libmscore midi thirdparty synthesizer mscore mstyle zerberus

synthesizer.depends += thirdparty effects
libmscore.depends += synthesizer
mscore.depends += libmscore midi awl bww2mxml mstyle fluid zerberus

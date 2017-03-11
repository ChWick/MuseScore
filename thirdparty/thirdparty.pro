TEMPLATE = subdirs
SUBDIRS += freetype qzip rtf2html kQOAuth singleapp beatroot diff ogg vorbis

vorbis.depends += ogg

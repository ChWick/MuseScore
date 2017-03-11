TEMPLATE = lib
TARGET = mscore_core

CONFIG += staticlib precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

QT += xml xmlpatterns concurrent svg quick quickwidgets help


THIRDPARTYDIR = $$PWD/../thirdparty
INCLUDEPATH += $$PWD/..
INCLUDEPATH += $$THIRDPARTYDIR/freetype/include

SOURCES += \
    accidental.cpp \
    ambitus.cpp \
    arpeggio.cpp \
    articulation.cpp \
    audio.cpp \
    bagpembell.cpp \
    barline.cpp \
    beam.cpp \
    bend.cpp \
    box.cpp \
    bracket.cpp \
    breath.cpp \
    bsp.cpp \
    bsymbol.cpp \
    check.cpp \
    chord.cpp \
    chordline.cpp \
    chordlist.cpp \
    chordrest.cpp \
    clef.cpp \
    cleflist.cpp \
    cmd.cpp \
    cursor.cpp \
    drumset.cpp \
    dsp.cpp \
    duration.cpp \
    durationtype.cpp \
    dynamic.cpp \
    edit.cpp \
    element.cpp \
    elementlayout.cpp \
    elementmap.cpp \
    excerpt.cpp \
    fifo.cpp \
    figuredbass.cpp \
    fingering.cpp \
    fraction.cpp \
    fret.cpp \
    glissando.cpp \
    groups.cpp \
    hairpin.cpp \
    harmony.cpp \
    hook.cpp \
    icon.cpp \
    image.cpp \
    imageStore.cpp \
    iname.cpp \
    input.cpp \
    instrchange.cpp \
    instrtemplate.cpp \
    instrument.cpp \
    interval.cpp \
    joinMeasure.cpp \
    jump.cpp \
    key.cpp \
    keyfinder.cpp \
    keylist.cpp \
    keysig.cpp \
    lasso.cpp \
    layoutbreak.cpp \
    layout.cpp \
    ledgerline.cpp \
    line.cpp \
    lyrics.cpp \
    marker.cpp \
    mcursor.cpp \
    measurebase.cpp \
    measure.cpp \
    midimapping.cpp \
    mscore.cpp \
    mscoreview.cpp \
    navigate.cpp \
    note.cpp \
    notedot.cpp \
    noteentry.cpp \
    noteevent.cpp \
    noteline.cpp \
    ossia.cpp \
    ottava.cpp \
    page.cpp \
    part.cpp \
    paste.cpp \
    pedal.cpp \
    pitch.cpp \
    pitchspelling.cpp \
    plugins.cpp \
    pos.cpp \
    property.cpp \
    range.cpp \
    read114.cpp \
    read206.cpp \
    read300.cpp \
    rehearsalmark.cpp \
    rendermidi.cpp \
    repeat.cpp \
    repeatlist.cpp \
    rest.cpp \
    revisions.cpp \
    score.cpp \
    scoreElement.cpp \
    scorefile.cpp \
    segment.cpp \
    segmentlist.cpp \
    select.cpp \
    shadownote.cpp \
    shape.cpp \
    sig.cpp \
    slur.cpp \
    slurtie.cpp \
    spacer.cpp \
    spanner.cpp \
    spannermap.cpp \
    splitMeasure.cpp \
    staff.cpp \
    stafflines.cpp \
    staffstate.cpp \
    stafftext.cpp \
    stafftypechange.cpp \
    stafftype.cpp \
    stafftypelist.cpp \
    stem.cpp \
    stemslash.cpp \
    stringdata.cpp \
    style.cpp \
    symbol.cpp \
    sym.cpp \
    synthesizerstate.cpp \
    system.cpp \
    systemdivider.cpp \
    systemtext.cpp \
    tempo.cpp \
    tempotext.cpp \
    text.cpp \
    textframe.cpp \
    textlinebase.cpp \
    textline.cpp \
    tie.cpp \
    timesig.cpp \
    transpose.cpp \
    tremolobar.cpp \
    tremolo.cpp \
    trill.cpp \
    tuplet.cpp \
    undo.cpp \
    utils.cpp \
    velo.cpp \
    volta.cpp \
    xmlreader.cpp \
    xmlwriter.cpp \

HEADERS += \
    accidental.h \
    ambitus.h \
    arpeggio.h \
    articulation.h \
    audio.h \
    bagpembell.h \
    barline.h \
    beam.h \
    bend.h \
    box.h \
    bracket.h \
    breath.h \
    bsp.h \
    bsymbol.h \
    chord.h \
    chordline.h \
    chordlist.h \
    chordrest.h \
    clef.h \
    cleflist.h \
    cursor.h \
    drumset.h \
    dsp.h \
    duration.h \
    durationtype.h \
    dynamic.h \
    element.h \
    elementlayout.h \
    elementmap.h \
    excerpt.h \
    fifo.h \
    figuredbass.h \
    fingering.h \
    fraction.h \
    fret.h \
    glissando.h \
    groups.h \
    hairpin.h \
    harmony.h \
    hook.h \
    icon.h \
    image.h \
    imageStore.h \
    iname.h \
    input.h \
    instrchange.h \
    instrtemplate.h \
    instrument.h \
    interval.h \
    jump.h \
    keyfinder.h \
    key.h \
    keylist.h \
    keysig.h \
    lasso.h \
    layoutbreak.h \
    layout.h \
    ledgerline.h \
    line.h \
    lyrics.h \
    marker.h \
    mcursor.h \
    measurebase.h \
    measure.h \
    mscore.h \
    mscoreview.h \
    musescoreCore.h \
    navigate.h \
    notedot.h \
    noteevent.h \
    note.h \
    noteline.h \
    ossia.h \
    ottava.h \
    page.h \
    part.h \
    pedal.h \
    pitch.h \
    pitchspelling.h \
    pitchvalue.h \
    plugins.h \
    pos.h \
    property.h \
    range.h \
    read206.h \
    rehearsalmark.h \
    repeat.h \
    repeatlist.h \
    rest.h \
    revisions.h \
    scoreElement.h \
    score.h \
    segment.h \
    segmentlist.h \
    select.h \
    sequencer.h \
    shadownote.h \
    shape.h \
    sig.h \
    slur.h \
    slurtie.h \
    spacer.h \
    spanner.h \
    spannermap.h \
    spatium.h \
    staff.h \
    stafflines.h \
    staffstate.h \
    stafftext.h \
    stafftypechange.h \
    stafftype.h \
    stafftypelist.h \
    stem.h \
    stemslash.h \
    stringdata.h \
    style.h \
    symbol.h \
    sym.h \
    synthesizerstate.h \
    systemdivider.h \
    system.h \
    systemtext.h \
    tempo.h \
    tempotext.h \
    textframe.h \
    text.h \
    textlinebase.h \
    textline.h \
    tie.h \
    tiemap.h \
    timesig.h \
    tremolobar.h \
    tremolo.h \
    trill.h \
    tuplet.h \
    tupletmap.h \
    undo.h \
    utils.h \
    velo.h \
    volta.h \
    xml.h \

# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

TEMPLATE = lib

CONFIG += precompile_header
PRECOMPILED_HEADER = $$PWD/../all.h

#QMAKE_LFLAGS += -Wl,--no-undefined -Wl,--whole-archive

QT += xml xmlpatterns concurrent svg quick quickwidgets help

# main window modifications
#DEFINES += MS_SIMPLE_VIEWER


LIBS_OUT = $$OUT_PWD/..
LIBS += -Wl,--start-group
LIBS += -L$$LIBS_OUT/libmscore -lmscore_core
LIBS += -L$$LIBS_OUT/zerberus -lzerberus
LIBS += -L$$LIBS_OUT/effects -leffects
LIBS += -L$$LIBS_OUT/fluid -lfluid
LIBS += -L$$LIBS_OUT/midi -lmidi
LIBS += -L$$LIBS_OUT/awl -lawl
LIBS += -L$$LIBS_OUT/bww2mxml -lbww2mxml
LIBS += -L$$LIBS_OUT/synthesizer -lsynthesizer
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

THIRDPARTYDIR = $$PWD/../thirdparty
INCLUDEPATH += $$PWD/..
INCLUDEPATH += $$THIRDPARTYDIR
INCLUDEPATH += $$THIRDPARTYDIR/freetype/include
INCLUDEPATH += $$THIRDPARTYDIR/vorbis
INCLUDEPATH += $$THIRDPARTYDIR/ogg

DEFINES += USE_ALSA
LIBS += -lasound

SOURCES += \
    abstractdialog.cpp \
    accessibletoolbutton.cpp \
    albummanager.cpp \
    alsa.cpp \
    articulationprop.cpp \
    bb.cpp \
    bendproperties.cpp \
    breaksdialog.cpp \
    capella.cpp \
    capxml.cpp \
    chordview.cpp \
    continuouspanel.cpp \
    debugger/debugger.cpp \
    downloadUtils.cpp \
    dragdrop.cpp \
    dragelement.cpp \
    driver.cpp \
    drumroll.cpp \
    drumtools.cpp \
    drumview.cpp \
    editdrumset.cpp \
    editelement.cpp \
    editinstrument.cpp \
    editlyrics.cpp \
    editpitch.cpp \
    editraster.cpp \
    editstaff.cpp \
    editstafftype.cpp \
    editstringdata.cpp \
    editstyle.cpp \
    enableplayforwidget.cpp \
    exampleview.cpp \
    excerptsdialog.cpp \
    exportaudio.cpp \
    exportmidi.cpp \
    exportxml.cpp \
    file.cpp \
    fotomode.cpp \
    fretproperties.cpp \
    harmonyedit.cpp \
    helpBrowser.cpp \
    help.cpp \
    icons.cpp \
    importbww.cpp \
    importgtp.cpp \
    importgtp-gp4.cpp \
    importgtp-gp5.cpp \
    importgtp-gp6.cpp \
    importmidi/importmidi_beat.cpp \
    importmidi/importmidi_chord.cpp \
    importmidi/importmidi_chordname.cpp \
    importmidi/importmidi_clef.cpp \
    importmidi/importmidi.cpp \
    importmidi/importmidi_delegate.cpp \
    importmidi/importmidi_drum.cpp \
    importmidi/importmidi_fraction.cpp \
    importmidi/importmidi_inner.cpp \
    importmidi/importmidi_instrument.cpp \
    importmidi/importmidi_key.cpp \
    importmidi/importmidi_lrhand.cpp \
    importmidi/importmidi_lyrics.cpp \
    importmidi/importmidi_meter.cpp \
    importmidi/importmidi_model.cpp \
    importmidi/importmidi_operations.cpp \
    importmidi/importmidi_panel.cpp \
    importmidi/importmidi_quant.cpp \
    importmidi/importmidi_simplify.cpp \
    importmidi/importmidi_swing.cpp \
    importmidi/importmidi_tempo.cpp \
    importmidi/importmidi_tie.cpp \
    importmidi/importmidi_tuplet.cpp \
    importmidi/importmidi_tuplet_detect.cpp \
    importmidi/importmidi_tuplet_filter.cpp \
    importmidi/importmidi_tuplet_tonotes.cpp \
    importmidi/importmidi_tuplet_voice.cpp \
    importmidi/importmidi_view.cpp \
    importmidi/importmidi_voice.cpp \
    importmxml.cpp \
    importmxmlpass1.cpp \
    importmxmlpass2.cpp \
    importove.cpp \
    importxml.cpp \
    importxmlfirstpass.cpp \
    inspector/alignSelect.cpp \
    inspector/inspectorAmbitus.cpp \
    inspector/inspectorArpeggio.cpp \
    inspector/inspectorBarline.cpp \
    inspector/inspectorBase.cpp \
    inspector/inspectorBeam.cpp \
    inspector/inspector.cpp \
    inspector/inspectorDynamic.cpp \
    inspector/inspectorElementBase.cpp \
    inspector/inspectorFingering.cpp \
    inspector/inspectorFret.cpp \
    inspector/inspectorGlissando.cpp \
    inspector/inspectorGroupElement.cpp \
    inspector/inspectorHairpin.cpp \
    inspector/inspectorImage.cpp \
    inspector/inspectorJump.cpp \
    inspector/inspectorLasso.cpp \
    inspector/inspectorMarker.cpp \
    inspector/inspectorNote.cpp \
    inspector/inspectorOttava.cpp \
    inspector/inspectorTextBase.cpp \
    inspector/inspectorText.cpp \
    inspector/inspectorTextLine.cpp \
    inspector/inspectorTrill.cpp \
    inspector/inspectorVolta.cpp \
    inspector/offsetSelect.cpp \
    inspector/scaleSelect.cpp \
    inspector/sizeSelect.cpp \
    instrdialog.cpp \
    instrwidget.cpp \
    keyb.cpp \
    keyedit.cpp \
    layer.cpp \
    logindialog.cpp \
    loginmanager.cpp \
    magbox.cpp \
    masterpalette.cpp \
    measureproperties.cpp \
    mediadialog.cpp \
    menus.cpp \
    metaedit.cpp \
    miconengine.cpp \
    mididriver.cpp \
    mixer.cpp \
    mscorePlugins.cpp \
    musedata.cpp \
    musicxmlfonthandler.cpp \
    musicxmlsupport.cpp \
    navigator.cpp \
    newwizard.cpp \
    noteGroups.cpp \
    osc.cpp \
    ove.cpp \
    pagesettings.cpp \
    paletteBoxButton.cpp \
    palettebox.cpp \
    palette.cpp \
    pathlistdialog.cpp \
    piano.cpp \
    pianoroll.cpp \
    pianotools.cpp \
    pianoview.cpp \
    playpanel.cpp \
    pluginCreator.cpp \
    pluginManager.cpp \
    preferences.cpp \
    propertymenu.cpp \
    qmledit.cpp \
    qmlplugin.cpp \
    resourceManager.cpp \
    ruler.cpp \
    savePositions.cpp \
    scoreaccessibility.cpp \
    scoreBrowser.cpp \
    scoreInfo.cpp \
    scorePreview.cpp \
    scoretab.cpp \
    scoreview.cpp \
    searchComboBox.cpp \
    sectionbreakprop.cpp \
    selectdialog.cpp \
    selectionwindow.cpp \
    selectnotedialog.cpp \
    selinstrument.cpp \
    seq.cpp \
    shortcutcapturedialog.cpp \
    shortcut.cpp \
    simplebutton.cpp \
    splitstaff.cpp \
    stafftextproperties.cpp \
    startcenter.cpp \
    svggenerator.cpp \
    symboldialog.cpp \
    synthcontrol.cpp \
    textcursor.cpp \
    textpalette.cpp \
    texttools.cpp \
    timedialog.cpp \
    timesigproperties.cpp \
    toolbarEditor.cpp \
    toolbuttonmenu.cpp \
    transposedialog.cpp \
    tremolobarprop.cpp \
    tupletdialog.cpp \
    updatechecker.cpp \
    uploadscoredialog.cpp \
    waveview.cpp \
    workspace.cpp \

#    exportly.cpp \
#    exportmp3.cpp \
#    jackaudio.cpp \
#    jackweakapi.cpp \
#    pa.cpp \
#    pm.cpp \
#    pulseaudio.cpp \
#    omrpanel.cpp \
#    webpage.cpp \


SOURCES += \
    musescore.cpp \
#    musescoreviewer.cpp \

HEADERS += \
    ../config.h \
    abstractdialog.h \
    accessibletoolbutton.h \
    albummanager.h \
    alsa.h \
    alsamidi.h \
    analyse.h \
    articulationprop.h \
    bb.h \
    bendcanvas.h \
    bendproperties.h \
    breaksdialog.h \
    capella.h \
    chordview.h \
    click.h \
    continuouspanel.h \
    debugger/debugger.h \
    downloadUtils.h \
    driver.h \
    drumroll.h \
    drumtools.h \
    drumview.h \
    editdrumset.h \
    editinstrument.h \
    editpitch.h \
    editraster.h \
    editstaff.h \
    editstafftype.h \
    editstringdata.h \
    editstyle.h \
    enableplayforwidget.h \
    exampleview.h \
    excerptsdialog.h \
    exportmidi.h \
    exportmp3.h \
    file.h \
    fretcanvas.h \
    fretproperties.h \
    globals.h \
    greendotbutton.h \
    harmonycanvas.h \
    harmonyedit.h \
    helpBrowser.h \
    help.h \
    icons.h \
    importgtp.h \
    importmidi/importmidi_beat.h \
    importmidi/importmidi_chord.h \
    importmidi/importmidi_chordname.h \
    importmidi/importmidi_clef.h \
    importmidi/importmidi_delegate.h \
    importmidi/importmidi_drum.h \
    importmidi/importmidi_fraction.h \
    importmidi/importmidi_inner.h \
    importmidi/importmidi_instrument.h \
    importmidi/importmidi_key.h \
    importmidi/importmidi_lrhand.h \
    importmidi/importmidi_lyrics.h \
    importmidi/importmidi_meter.h \
    importmidi/importmidi_model.h \
    importmidi/importmidi_operation.h \
    importmidi/importmidi_operations.h \
    importmidi/importmidi_panel.h \
    importmidi/importmidi_quant.h \
    importmidi/importmidi_simplify.h \
    importmidi/importmidi_swing.h \
    importmidi/importmidi_tempo.h \
    importmidi/importmidi_tie.h \
    importmidi/importmidi_tuplet_detect.h \
    importmidi/importmidi_tuplet_filter.h \
    importmidi/importmidi_tuplet.h \
    importmidi/importmidi_tuplet_tonotes.h \
    importmidi/importmidi_tuplet_voice.h \
    importmidi/importmidi_view.h \
    importmidi/importmidi_voice.h \
    importmxml.h \
    importmxmlpass1.h \
    importmxmlpass2.h \
    importxmlfirstpass.h \
    inspector/alignSelect.h \
    inspector/inspectorAmbitus.h \
    inspector/inspectorArpeggio.h \
    inspector/inspectorBarline.h \
    inspector/inspectorBase.h \
    inspector/inspectorBeam.h \
    inspector/inspectorDynamic.h \
    inspector/inspectorElementBase.h \
    inspector/inspectorFingering.h \
    inspector/inspectorFret.h \
    inspector/inspectorGlissando.h \
    inspector/inspectorGroupElement.h \
    inspector/inspector.h \
    inspector/inspectorHairpin.h \
    inspector/inspectorImage.h \
    inspector/inspectorJump.h \
    inspector/inspectorLasso.h \
    inspector/inspectorMarker.h \
    inspector/inspectorNote.h \
    inspector/inspectorOttava.h \
    inspector/inspectorTextBase.h \
    inspector/inspectorText.h \
    inspector/inspectorTextLine.h \
    inspector/inspectorTrill.h \
    inspector/inspectorVolta.h \
    inspector/offsetSelect.h \
    inspector/scaleSelect.h \
    inspector/sizeSelect.h \
    instrdialog.h \
    instrwidget.h \
    jackaudio.h \
    keycanvas.h \
    keyedit.h \
    layer.h \
    licence.h \
    logindialog.h \
    loginmanager.h \
    magbox.h \
    masterpalette.h \
    measureproperties.h \
    mediadialog.h \
    metaedit.h \
    miconengine.h \
    mididriver.h \
    mixer.h \
    musedata.h \
    musescore.h \
    #musescoreviewer.h \
    musicxmlfonthandler.h \
    musicxml.h \
    musicxmlsupport.h \
    navigator.h \
    newwizard.h \
    noteGroups.h \
    omrpanel.h \
    ove.h \
    pagesettings.h \
    pa.h \
    paintengine_p.h \
    paletteBoxButton.h \
    palettebox.h \
    palette.h \
    partedit.h \
    pathlistdialog.h \
    piano.h \
    pianoroll.h \
    pianotools.h \
    pianoview.h \
    playpanel.h \
    pluginCreator.h \
    pluginManager.h \
    pm.h \
    preferences.h \
    prefsdialog.h \
    qmledit.h \
    qmlplugin.h \
    recordbutton.h \
    resourceManager.h \
    revision.h \
    ruler.h \
    scoreaccessibility.h \
    scoreBrowser.h \
    scoreInfo.h \
    scorePreview.h \
    scoretab.h \
    scoreview.h \
    searchComboBox.h \
    sectionbreakprop.h \
    selectdialog.h \
    selectionwindow.h \
    selectnotedialog.h \
    selinstrument.h \
    seq.h \
    shortcutcapturedialog.h \
    shortcut.h \
    simplebutton.h \
    splitstaff.h \
    stafftextproperties.h \
    startcenter.h \
    svggenerator.h \
    symboldialog.h \
    synthcontrol.h \
    textcursor.h \
    textpalette.h \
    texttools.h \
    timedialog.h \
    timesigproperties.h \
    toolbarEditor.h \
    toolbuttonmenu.h \
    transposedialog.h \
    tremolobarcanvas.h \
    tremolobarprop.h \
    tupletdialog.h \
    updatechecker.h \
    uploadscoredialog.h \
    waveview.h \
    webpage.h \
    workspace.h \


FORMS += \
    aboutbox.ui \
    aboutmusicxmlbox.ui \
    albummanager.ui \
    articulation.ui \
    bend.ui \
    breaksdialog.ui \
    cellproperties.ui \
    debugger/accidental.ui \
    debugger/articulationbase.ui \
    debugger/barline.ui \
    debugger/beam.ui \
    debugger/box.ui \
    debugger/chordrest.ui \
    debugger/chord.ui \
    debugger/clef.ui \
    debugger/debugger.ui \
    debugger/dynamic.ui \
    debugger/element.ui \
    debugger/hairpin.ui \
    debugger/harmony.ui \
    debugger/keysig.ui \
    debugger/linesegment.ui \
    debugger/line.ui \
    debugger/lyrics.ui \
    debugger/measure.ui \
    debugger/note.ui \
    debugger/page.ui \
    debugger/rest.ui \
    debugger/segment.ui \
    debugger/slursegment.ui \
    debugger/slurtie.ui \
    debugger/spanner.ui \
    debugger/stem.ui \
    debugger/system.ui \
    debugger/textline.ui \
    debugger/text.ui \
    debugger/tiesegment.ui \
    debugger/tie.ui \
    debugger/timesig.ui \
    debugger/tremolo.ui \
    debugger/tuplet.ui \
    editdrumset.ui \
    editinstrument.ui \
    editpitch.ui \
    editraster.ui \
    editstafftype.ui \
    editstaff.ui \
    editstringdata.ui \
    editstyle.ui \
    excerptsdialog.ui \
    fretdprops.ui \
    harmonyedit.ui \
    importmidi/importmidi_panel.ui \
    insertmeasuresdialog.ui \
    inspector/align_select.ui \
    inspector/inspector_accidental.ui \
    inspector/inspector_ambitus.ui \
    inspector/inspector_arpeggio.ui \
    inspector/inspector_articulation.ui \
    inspector/inspector_barline.ui \
    inspector/inspector_beam.ui \
    inspector/inspector_bend.ui \
    inspector/inspector_bracket.ui \
    inspector/inspector_break.ui \
    inspector/inspector_caesura.ui \
    inspector/inspector_chord.ui \
    inspector/inspector_clef.ui \
    inspector/inspector_dynamic.ui \
    inspector/inspector_element.ui \
    inspector/inspector_empty.ui \
    inspector/inspector_fingering.ui \
    inspector/inspector_frametext.ui \
    inspector/inspector_fret.ui \
    inspector/inspector_glissando.ui \
    inspector/inspector_group_element.ui \
    inspector/inspector_hairpin.ui \
    inspector/inspector_hbox.ui \
    inspector/inspector_image.ui \
    inspector/inspector_iname.ui \
    inspector/inspector_jump.ui \
    inspector/inspector_keysig.ui \
    inspector/inspector_lasso.ui \
    inspector/inspector_line.ui \
    inspector/inspector_lyric.ui \
    inspector/inspector_marker.ui \
    inspector/inspector_note.ui \
    inspector/inspector_ottava.ui \
    inspector/inspector_rest.ui \
    inspector/inspector_segment.ui \
    inspector/inspector_slur.ui \
    inspector/inspector_spacer.ui \
    inspector/inspector_stafftext.ui \
    inspector/inspector_stafftypechange.ui \
    inspector/inspector_tbox.ui \
    inspector/inspector_tempotext.ui \
    inspector/inspector_textline.ui \
    inspector/inspector_text.ui \
    inspector/inspector_timesig.ui \
    inspector/inspector_tremolo.ui \
    inspector/inspector_trill.ui \
    inspector/inspector_tuplet.ui \
    inspector/inspector_vbox.ui \
    inspector/inspector_volta.ui \
    inspector/offset_select.ui \
    inspector/scale_select.ui \
    inspector/size_select.ui \
    instrdialog.ui \
    instrwidget.ui \
    instrwizard.ui \
    keyedit.ui \
    layer.ui \
    logindialog.ui \
    masterpalette.ui \
    measureproperties.ui \
    measuresdialog.ui \
    mediadialog.ui \
    metaedit.ui \
    mixer.ui \
    newwizard.ui \
    note_groups.ui \
    omrpanel.ui \
    pagesettings.ui \
    palette.ui \
    partedit.ui \
    pathlistdialog.ui \
    playpanel.ui \
    pluginCreator.ui \
    pluginManager.ui \
    prefsdialog.ui \
    resourceManager.ui \
    scoreBrowser.ui \
    scorePreview.ui \
    sectionbreak.ui \
    selectdialog.ui \
    selectinstr.ui \
    selectnotedialog.ui \
    shortcutcapturedialog.ui \
    splitstaff.ui \
    stafftext.ui \
    stafftypetemplates.ui \
    startcenter.ui \
    symboldialog.ui \
    synthcontrol.ui \
    textpalette.ui \
    timedialog.ui \
    timesigproperties.ui \
    timesigwizard.ui \
    toolbarEditor.ui \
    transposedialog.ui \
    tremolobar.ui \
    tupletdialog.ui \
    uploadscoredialog.ui \

RESOURCES += \
    musescorefonts-Bravura.qrc \
    musescorefonts-Free.qrc \
    musescorefonts-FreeSerif.qrc \
    musescorefonts-Gootville.qrc \
    musescorefonts-Mac.qrc \
    musescorefonts-MScore.qrc \
    musescorefonts-MuseJazz.qrc \
    musescore.qrc \



# android fix
android {
    CONFIG += uikit no_moc_predefs
    QMAKE_CXXFLAGS += "-include $$PRECOMPILED_HEADER"
}

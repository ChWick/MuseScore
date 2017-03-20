//=============================================================================
//  MusE
//  Linux Music Editor
//  $Id:$
//
//  Copyright (C) 2002-2010 by Werner Schweer and others
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License version 2.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program; if not, write to the Free Software
//  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
//=============================================================================

/* #undef USE_ALSA */
/* #undef USE_JACK */
/* #undef USE_PORTAUDIO */
/* #undef USE_PORTMIDI */
/* #undef USE_PULSEAUDIO */
/* #undef USE_LAME */

#define MSCORE_UNSTABLE

/* #undef HAS_MIDI */
#define SCRIPT_INTERFACE
/*#define HAS_AUDIOFILE*/
#define USE_SSE

#define MUSESCORE_NAME_VERSION  "MuseScore 3 (3.0.0 unstable)"
#define INSTALL_NAME            "mscore-3.0/"
#define INSTPREFIX              "/usr/local"
#define VERSION                 "3.0.0"

/* #undef AEOLUS */
/* #undef ZERBERUS */
/* #undef OMR */
/* #undef OCR */
/* #undef OSC */
/* #undef OPENGL */
/* #undef SOUNDFONT3 */

/* #undef Q_WS_UIKIT */

#define USE_BSP     false

// does not work on windows/mac:
//#define USE_GLYPHS  true


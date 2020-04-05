rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }


soprxi = \relative c''
{
	a2 a4 a |
	d, bes' a8 g f e |
	d e f g a f a b |
	c4 b8 a gis2 |
	a8 b c2 b8 a16 b |
	cis4 d2 cis4 |
	d2 cis |
	d a8 g a b |
	c4 b8 a gis 2|
	a2 r |
	s1 |
	d2 d4 d |
	\oneVoice
	a f' e8 d c b |
	a4 a' d, e |
	\voiceOne
	f2 e4 f~|
	f e8 d cis2 |
	d8 c bes4. bes8 a g |
	a g a b c b c d |
	e4. d8 c4. b16 c |
	d4 e c2~|
	c4 bes4. a16 g a4 ~|
	a g2 f4 |
	e2 f4 g |
	a1 |
	bes2 a |
	g f |
	e2. fis8 g |
	<fis d>1 \bar "|."
}
altoxi = \relative c'
{
	s1 s1 d2 d4 d |
	a f' e8 d c b |
	a4 a'8 g fis e16 fis g4 ~|
	g f e2 |
	f8 e f g a4. g8 |
	\voiceThree f1 |
	a4 d, \shape #'( (0 . -0.3)(0 . -0.7)(0 . -0.7)(-0.3 . -0.3)) Tie e2~|
	e  \voiceTwo  f4 g~|
	g f e2 |
	d r |
	s1 |
	s |
	r4 a' a a |
	d,_\lh bes' a8 g f e |
	d4 g4. g8 f e |
	f2 e4 a |
	gis2 a8 e a4 |
	b2~b8 e, a4~|
	a8 d, g2 f4 |
	d8 f e d cis4 d~|
	\voiceThree d cis  d2 |
	e \tieDown f~|
	f4 e f2~|
	f4 e2 \tieDown d4~|
	d cis8 b cis2 |
}
tenorxi = \relative c'
{
	\clef bass
	R1 R1 R1 R1 R1 |
	\oneVoice
	a2 a4 a |
	d, bes' \voiceOne a8 g f e|
	\showStaffSwitch
	d a' b c \change Staff="up" \voiceTwo d2 |
	
	e4 \change Staff="down" \voiceOne a, \change Staff="up" \voiceTwo b2 |
	c \change Staff="down" \voiceOne bes |
	a4 d2 c4  |
	c bes a2~|
	a g4 e'8 d |
	c4. b16 a b4 cis |
	d2 r|
	s1 |
	r2 d2 |
	\oneVoice
	d4 d a f' |
	e8 d c b a2~|
	a4 gis a4. f8 |
	bes4. g8 d'4. a8 |
	\voiceOne
	bes2 a ~|
	a \change Staff="up" \voiceTwo a4 d |
	\once \override NoteColumn.force-hshift = #0.5 cis2 d ~|
	\once \override NoteColumn.force-hshift = #0.5 d4 c2. |
	\once \override NoteColumn.force-hshift = #1 d4 e a,2~|
	a1 ~|
	a \bar "|."
}
bassxi = \relative c
{
	R1 R1 R1 R1 R1 s1 s1 |
	d2 d4 d |
	a f' e8 d c b |
	a a' g a d,4 e |
	f2 g4 a8 g |
	fis4 g2 f8 e |
	f4 d e2 |
	f2. e4 |
	d2 cis4 d |
	f g a2 |
	bes4. a16 g d2 |
	s1 s1 s1 s1 |
	r2 a2 |
	a4 a \oneVoice d, bes'4 |
	a8 g f e d d' c d |
	g,4 c f,8 f' e f |
	b,4 cis d8 d, f g |
	a1 |
	d, \bar "|."
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 11"
		\new Staff ="up" << { \soprxi  } \\ { \altoxi } >>
		\new Staff="down" << { \tenorxi } \\ { \bassxi } >>
	>>
	\layout  
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			\Score
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
		}
	}
	\midi {\tempo 4=100}
}
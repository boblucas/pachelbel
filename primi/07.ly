rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprvii = \relative c''
{
	s1*5 |
	a4. a8 f4\trill d |
	a'8 g a b c2 |
	b2 a4 d ~ |
	d cis d4. e8 |
	f2 e |
	d r |
	s1*4 |
	r2 d4. d8 |
	c4\trill a d8 c d e |
	f2 e |
	d4 c8 b c2 |
	b4\trill e4. d8 d4\trill ~ |
	d8 g, c2 b4 |
	c2 b |
	a g\trill |
	f e |
	f b\rest |
	R1*2 |
	s1*3 |
	a4. a8 f4\trill d |
	a'8 g a b c2 |
	b a |
	g4. a8 f2 ~|
	f4 e8 d cis4 d~ |
	d cis8 b cis2\trill |
	d1 \bar "|."
}
altovii = \relative c'
{
        \oneVoice
	d4. d8 c4\trill a |
	d8 c d e f2 |
	e4^\trill f8 e d4. e16 d |
	c8 b c d e4 a~|
	a g4. f8 f e16 d | 
	\voiceTwo
	e2 d |
	f4. g8 a2 |
	f8 e f g f2 |
	r8 g4 g8 f4\trill d |
	a'8 g a b c2 |
	b4. c16 b a8 c b\trill a |
	\voiceOne
	gis4 a2 g4\trill~ |
	g f e2 |
	f e4 a |
	g8 f g a bes2 |
	\voiceThree
	a2.  \voiceTwo g4 |
	a2.. g8 |
	f g a b16 a gis8 e a4~|
	a gis a8 e a4~|
	a8 g g4 f2 |
	e f |
	e4. d16 e f8 e f g~|
	g c, f2 e4 ~|
	e d e2 |
	d2 r2 |
	R1 |
	R1 |
	\voiceOne
	d4. d8 c4\trill a |
	d8 c d e f4. g16 f |
	e4 d\trill e f |
	\voiceTwo
	e2  d |
	f4. f8 e4 c |
	f8 e f g c,4 d~|
	d e f8 e d^\trill c |
	bes a bes4 a2~|
	a1 ~|
	a1 \bar "|."
}
tenorvii = \relative c'
{
	\clef bass
	R1 |
	R1 |
	\stemNeutral
	a4. a8 f4\trill d |
	a'8 g a b c4. c8 |
	b4. cis8 a4 d ~|
	d cis\trill d2 ~|
	\voiceOne
	d e^\rh |
	d^\rh c4 b8 a |
	b4 a8 g a4 r |
	\stemNeutral
	d4. d8 c4\trill a |
	d8 c d e f4 d |
	e8 d c d b4. cis16 d |
	\voiceOne
	cis8 a
	\showStaffSwitch
	\change Staff ="up" \voiceTwo
	d2 cis4\trill |
	d2 c4 f |
	e8 d e f g2~|
	g4 f8 e \change Staff ="down" \voiceOne d f e d |
	e2 d4. cis8 |
	d2. c4 |
	\stemNeutral
	b8 c16 d e4 a,2 |
	R1 |
	s1*3 |
	\voiceOne
	r2 a4. a8 |
	f4\trill d a'8 g a b |
	c4. b16 a b8 c d4 ~|
	d8 g, c4 b8 a a4~|
	a gis a2 |
	g2 f8 g a b |
	\change Staff ="up" \voiceTwo
	c4 b cis d |
	%\hideStaffSwitch
	\change Staff ="down" \voiceOne
	e8^\rh  e, a2. ~|
	a2 a2 ~|
	a4. g8 a4. g16 a |
	b4 cis d8 c bes a |
	g2~g8 f e d |
	e2. fis8 g |
	fis1 \bar "|."
}
bassvii = \relative c
{
        R1 |
        R1 |
	s1*4 |
	d4. d8 c4\trill a |
	d8 c d e f2 |
	e d |
	s1*3 |
	r2 a'4. a8 |
	f4\trill d a'8 g a b |
	c2 g8 a bes c |
	d a d c bes2 |
	a4. g8 f4. e8 |
	d2 r2 |
	s1 |
	R1 |
	d2\rest d4. d8 |
	c4\trill a d8 c d e |
	f4 a8 f c' c, e c |
	d e f d ~ d4 cis |
	d4. e8 f4. e16 d |
	e8 d e f g4. f8 |
	e4. e8 d4 c |
	b8 c16 d e8 e,8 a4. a8 |
	b4. cis8 d2 |
	e8 f g2 f8 e16 d |
	cis2 d |
	d4. d8 c4\trill a |
	d8 c d e f2 ~ |
	f4 e d2 |
	g4 g, a2 ~ |
	a1 |
	d, \bar "|."
}



\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 7"
		\new Staff ="up" << { \soprvii } \\ {\altovii} >>
		\new Staff ="down" << { \tenorvii} \\ {\bassvii} >>
	>>
	\layout  {
	\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }}
	\midi {\tempo 4=100}
}
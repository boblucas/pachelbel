soprxiii = \relative c''
{
	a8 a16 a a8 a d, bes' a g |
	a8 g16 f g8 a d, e f g |
	a4 b c b |
	c8 d16 e f8 e d e16 f e8 d |
	cis d4 cis8 d4 a8 b |
	c4 d c b |
	c2 r|
	R1 |
	d8 d16 d d8 d a f' e d |
	e d16 c d8 e a,4 d ~|
	d16 e d c b8.\trill a32 b cis8 d4 cis8 |
	f4 g cis,8 d e4 |
	f8 e16 d e8 c d e c4 |
	b2 c4 d |
	b8 c b4 c b |
	a2 s |
	s a8 a16 a a8 a |
	d, bes' a g a g16 f g8 a |
	d,4. g8 a bes16 c bes8 a |
	bes8. c16 d c bes c a4 b |
	c d gis,8 a b4 |
	c8 b16 a b8 e a,4 d ~|
	d cis d e |
	cis8 d4 c4 bes16 a bes4 ~|
	bes a g4. a16 bes |
	a8 b16 c d8 c b c16 d e8 d |
	c2 b |
	c4 d c b |
	cis8 d e4 d4. e16 d |
	cis8 b16 a d2 cis4|
	d1 |
	\bar "|."
}

altoxiii = \relative c'
{
	s1 |
	r2 d8 d16 d d8 d |
	a f' e d e d16 c d8 e |
	a,4 a'8 g f g16 a g8 f |
	e8 f e4 f2 |
	e8 a g f e4 f8 e~|
	e a16 g f8 e f4 g |
	a2 d,4 e |
	f2 d |
	R1 |
	r2 a'8 a16 a a8 a |
	d, bes' a g a g16 f g8 a |
	d, f g a f g a4 ~|
	a gis a b |
	gis8 a4 gis8 a4 \voiceThree g~|
	g8 f e4 \voiceOne f g |
	e8 f e4 \voiceThree f2 |
	s1 |
	s1 |
	\voiceTwo
	r2 d8 d16 d d8 d |
	a f' e d e d16 c d8 e |
	a, a'4 g f16 e f8 e16 d |
	e2 f4 g |
	e8 f e4 f4. g8 |
	c, d16 e f4. e16 d e4 |
	f4. e8 d4 g8 f |
	e4 a2 gis4 |
	a4 g8 f e4 f8 e~|
	e f e4 fis g ~|
	g f e2 |
	fis1
}

tenorxiii = \relative c'
{
	\clef bass
	R1 |
	R1 |
	R1 |
	R1 |
	a8 a16 a a8 a d, e f g |
	a4 b gis8 a4 gis8 |
	a4 c d8 c16 d e4 |
	f8 a, d c b a16 b cis4|
	d2. b4 ~|
	b8 a b c4 b16 c b8 a |
	gis8 a4 gis8 a2 |
	R1 |
	R1 |
	\oneVoice
	\showStaffSwitch
	e'8 e16 e e8 e a, f' e d |
	e8 d16 c d8 e a, c16 d \change Staff="up" \voiceTwo e8 b |
	cis d4 cis8 d4 e |
	cis8 d4 cis8 d4 \change Staff="down" \voiceOne f, |
	g e f e |
	fis g2 fis4 |
	g2 f |
	R1 |
	R1 |
	\oneVoice
	a8 a16 a a8 a d, bes' a g |
	a g16 f g8 a d,4. e8 |
	f4. g16 a bes8 g c4 |
	f,2 g |
	\voiceOne
	a8 b c d e4 b |
	a b gis8 a4 gis8 |
	a8 g16 f g8 a d,2 |
	e4 f8 g a2 ~ |
	a1 |
}
bassxiii = \relative c
{
	R1 |
	R1 |
	R1 |
	R1 |
	r2 d8 d16 d d8 d |
	a f' e d e d16 c d8 e |
	a,4 a'2 g8 c |
	f,2. e8 a |
	d,4. e8 f4 g |
	c,8 f4 e8 f2 |
	e a, |
	R1 |
	R1 |
	s1 |
	s1 |
	a8 a16 a a8 a d, bes' a g |
	a g16 f g8 a d,4 d'8 c |
	bes4 c f, c'~|
	c4 bes a2 |
	g8 a bes c d2 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 e8 e16 e e8 e |
	a, f' e d e d16 c d8 e |
	a, d4 c4. bes4 |
	a1 |
	d |
}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 13"
		\new Staff ="up" << { \soprxiii } \\ {\altoxiii} >>
		\new Staff ="down" << {\tenorxiii} \\ {\bassxiii} >>
	>>
	\layout {
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			\Score
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
		}
	}

	\midi {\tempo 4=100}
}
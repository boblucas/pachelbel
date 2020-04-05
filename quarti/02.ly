
soprii = \relative c'
{
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	e4. e8 a16 b a b g a g a |
	f g f g e f e f d cis d e d f e d |
	cis e d cis d f e d g a f g e g f e |
	f g e f d e c d \stemNeutral b'4. b8  |
	e16 f e f d e d e c d c d b c b c |
	a gis a b a c b a gis b a gis a b c d |
	e b c d e d c b c e d c d e f g |
	\stemUp e4 b c16 g a b c d c b |
	a4 b16 c a b g4. a8 |
	fis2 g4 b |
	a8 e' d4 c2 |
	e4 d c cis |
	d c r16 b c d c4 ~|
	c16 b c d b4 c r |
	b2\rest \stemNeutral e4. e8 |
	a16 b a b g a g a f g f g e f e f |
	d cis d e d f e d cis d e d cis a b cis |
	d f e d e a, e' g f g e f d e c d |
	b c a b gis a fis gis e b' a b gis a fis gis |
	e b' a b gis a fis gis e2 |
	\bar "|."
}

altoii = \relative c'
{
	\showStaffSwitch
	\stemNeutral
	b4. b8 e16 f e f d e d e |
	c d c d b c b c a gis a b a c b a |
	gis8 a b4 c e |
	a,8 d4 cis8 d4 f |
	e16 d e f e g f e f2 |
	e8 f16 e d4 c4. d16 c |
	\change Staff="down" \voiceOne
	b2 c8 a b c |
	d4 c b2 |
	a b4 cis |
	d8 c b a <gis b>2~ |
	b8 a4 gis8 a4 gis |
	a4 d2 c4 |
	b2 a4 b |
	\change Staff = "up"
	\voiceTwo
	c16 e d c d e f g e2 |
	fis16 g e fis dis8 b e b e4 ~ |
	e dis e fis8 gis |
	a4. gis8 a2 |
	b4 gis a g |
	f2. ~ f16 e d c |
	d4 d8. f16 e g f g e f d e |
	\change Staff = "down"
	\voiceOne
	c f e f d e c d b4 c ~|
	c8 d4 cis8 d4 c |
	b2 a ~|
	a2. b8 a |
	gis a b a gis a b a |
	gis a b a gis2 |
}

bassii = \relative c
{
	\showStaffSwitch
	\clef bass
	R1 |
	R1 |
	e4. e8 a16 b a b g a g a |
	f g f g e f e f d cis d e d f e d |
	cis4 a d16 cis d e f g a b |
	c4. b4 e,8 \voiceTwo a4 ~|
	a g f e |
	d a'2 g4 ~|
	g f e a |
	\voiceTwo
	d,2 e4 d |
	c b a e' |
	f2 e4 a ~|
	a gis a r |
	\override MultiMeasureRest #'staff-position = #2
	R1 |
	R1 |
	\stemNeutral
	b,4. b8 e16 f e f d e d e |
	c d c d b c b c a gis a b a c b a |
	gis e' d e b d c b a a' g a e g f e |
	d d' c d a c b a g4 a |
	f g c, c'8 b |
	\stemDown
	a4 b8 a gis4 a8 g |
	f4 e d a' ~|
	a gis a g |
	f cis d2 |
	e1 ~|
	e1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 2"
		\new Staff = "up" << { \soprii } \\ {\altoii} >>
		\new Staff = "down" << { \bassii} >>
	>>
	\layout 
	{
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
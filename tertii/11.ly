
soprxi = \relative c''
{
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	b2\rest r8 c c c |
	g4 r8 g a b c16 d c d |
	b c b c a b a b g8 a16 b c d e c |
	f d e f g a f g e4 ~ e16 e d c |
	d2 c |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r2 r8 g' g g |
	c,4 r8 c d e f16 g f g |
	e f e f d e d e c4 ~c16 c b a |
	g a g a b c b c d4 a16 b a b |
	c4 b a2 |
	b16 c b c d8 b c d e4 |
	d c b a |
	g f e8 g a4 |
	b c2 b4 |
	c r8 e d2 |
	c4 b c8 g a4 |
	b c~ c16 b g'8 f\trill e |
	d e16 f d8.\trill c16 b g c8 b8.\trill c16 |
	d1 |
	\bar "|."
}

altoxi = \relative c''
{
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	b2\rest b8\rest g g g |
	c,4 r8 c d e f16 g f g |
	e f e f d e d e c2 |
	s1 | 
	s1 | 
	s1 | 
	r8 g' g g c,4 r8 c |
	\stemNeutral
	d e f16 g f g e f e f d e d e |
	c d c d e f e f d e d e f g f g |
	\voiceOne
	e4 a4. g ~ |
	g4 fis g b |
	c8 d e4 d c |
	b2 a |
	\voiceTwo
	g r |
	\hideStaffSwitch
	\change Staff="down" \voiceOne
	e d |
	c4 b a8 b c d |
	\showStaffSwitch
	\change Staff="up" \voiceTwo
	e f g4 d16 e d e f4 |
	e8 fis g2 fis4 |
	g4. g8 f4 e8 a ~ |
	a g4 f e d8 ~ |
	d c4 b8 c e f4 ~|
	f8 e e d16 c d2 |
	<e g>4  r8 <g c>8 <f b>4 a |
	g4 f e fis |
	r8 g f8. e16 d8 e d c |
	b c b a g e' d8. c16 |
	b1 |
	\showStaffSwitch
}

tenorxi = \relative c'
{
	\showStaffSwitch
	\clef bass
	s1 |
	s1 |
	r8 c c c g4 r8 g |
	a b c16 d c d b c b c a b a b |
	g8 c16 b a8 d16 c b4 c8 b |
	a4 g f8 g a b |
	c4 g2 f4 ~|
	f e f e8 fis |
	g4 f e2 |
	d c8 g' c4 ~|
	c b a8 g16 f e4 |
	\stemNeutral
	f8 g a b c c, f g |
	a b c4 b8 c d4 ~ |
	d8 c b a b4. a16 g |
	\stemUp
	a2 \change Staff="up" \voiceTwo b4 g' |
	f e g4. fis8 |
	g2. \change Staff="down" \voiceOne f4 ~|
	f e d2 |
	s1 |
	s1 |
	s1 |
	\stemNeutral
	d,2\rest r8 d' d d |
	g,4 r8 g a b c16 d c d |
	b c b c a b a b g a b c f, g a b |
	e, f g a d, e f g c,8 c' b a |
	\stemUp
	g1 |
}

bassxi = \relative c'
{
	f,8\rest g g g c,4 c8\rest c |
	d e f16 g f g e f e f d e d e |
	c8. b16 c d c d e4 b |
	c8 d e fis g g, c d |
	e c f2 e4 |
	f e d2 |
	c4 b a2 |
	b4 c f,8 g a4 |
	g d'2 c4 ~|
	c b c2 |
	g' r |
	s1|
	s1|
	s1|
	r8 d d d g,4 r8 g |
	a b c16 d c d b c b c a b a b |
	g d' e fis g a b c d a b c d e a, c |
	b8 g c2 b4 |
	a8. b16 c2 b4 ~ |
	b8 a4 gis8 a r r4 |
	\once \override MultiMeasureRest #'staff-position = #2
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r2 r8 g, g g |
	\stemNeutral
	c,4 r8 c d e f16 g f g |
	e f e f d e d e c8 c' b8. a16 |
	g1 ~|
	g1 ~|
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 11"
		\new Staff = "up" << { \soprxi } \\ {\altoxi} >>
		\new Staff = "down" << {\tenorxi } \\ {\bassxi} >>
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
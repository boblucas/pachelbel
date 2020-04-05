
soprx = \relative c''
{
	\showStaffSwitch
	R1 |
	r2 r8 g fis8.\trill e32 fis |
	g4 r8 e f g16 f e8. d16 |
	c4 d r8 c' b8.\trill a32 b |
	c4 r8 b c d16 c b8. a16 |
	b4 c8 d b d16 c b g  c8 |
	a4 b c8 e, a8. g16 |
	fis2 r8 g' fis8.\trill e32 fis |
	g4 r8 e f g16 f e8 d |
	e16 f e d c b a g a b a g f e d c |
	b8 g' d16 e f g e4 d8 g |
	e8 g16 f e f e d e4 fis |
	g8 c,16 b a c b a b2 |
	r r8 c' b8.\trill a32 b |
	c4 r8 b c d16 c b8. a16 |
	b8 g d' e f4. e16 d |
	c d c d e f e f g8 f16 e d g f g |
	e f e f d e d c b4 a |
	g8 g' fis8.\trill e32 fis g4 r8 e |
	f8 g16 f e8. d16 c8 g8. c16 b c |
	a8 d8. d16 c d b8 e8. e16 d e |
	c8 d16 e f4. e16 d e8 e, |
	fis d g4. g8 fis8.\trill e32 fis g1 |
	\bar "|."
}
bassx = \relative c'
{
	\showStaffSwitch
	\clef bass
	r8 c b8.\trill a32 b c4 r8 b |
	c d16 c b8. a16 g4 a |
	b8 g c4 a g8 f |
	e8 a b8.\trill a32 b c4 d |
	r8 c d8. c32 d e4 fis |
	r8 g, fis8.\trill e32 fis g4 r8 e |
	f g16 f e8. d16 c4 r8 cis |
	d a' d8. c16 b4 a |
	g8 a16 b c4 a8 f g g, |
	c d e c f g a f |
	g4 r r8 c, b8.\trill a32 b |
	c4 r8 b c d16 c b8. a16 |
	g8 g'4 fis8 g d g f16 g |
	e c d e f g a b c4 d |
	e8. fis16 g4 e8 c d d, |
	g4. f16 e d8 e f g |
	a b c4 b2 |
	c4 r r8 g fis8.\trill e32 fis |
	g4 r8 a b g c4 |
	a8 f g f e4 c | 
	f d g e |
	a4. b8 c2 ~|
	c4 b a2 |
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 10"
		\new Staff = "up" << { \soprx } >>
		\new Staff = "down" << { \bassx} >>
	>>
	\layout 
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			%\Score
			%\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
		}
	}
	\midi {\tempo 4=100}
}
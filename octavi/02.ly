
soprii = \relative c''
{
	d16 e d e c d c d b8 b e16 f e f |
	d e d e c d c d b4 d |
	c f e d |
	c8 g8. g16 f e f g e f d f e d |
	e2 r |
	g16 a g a f g f g e8 e a16 b a b |
	g a g a f g f g e8 g a b |
	c8 e16 d c d b c a c b c a b g a |
	fis2 g4 ~ g16 a g a |
	f g f g e f e f d8 e16 f g f e d |
	e4 r d'16 e d e c d c d |
	b8 b e16 f e f d e d e c d c d |
	c4 b c16 g' f e f g f g |
	e f e f d e d c b4 r |
	g'16 a g a f g f g e8 e a16 b a b |
	g a g a f g f g e f e f e f e d |
	c b c d c e d c b c b c a b a g |
	fis4 r d'16 e d e c d c d |
	b8 b e16 f e f d e d e c d c d |
	b d e f g d e f e g c, g' d g b, g' |
	e g c, g' d g b, g' e g c, g' d g b, g' |
	e f e d c d c b e f e d c d c b |
	e f d e c d b d c d b c a b g a |
	fis4 g ~ g16 fis g a g8.\trill fis16 |
	g1 |
	\bar "|."
}

bassii = \relative c'
{
	\clef bass
	R1 |
	r2 g16 a g a f g f g |
	e8 e a16 b a b g a g a f g f g |
	e4 a d, g |
	c,8 g' a b c b16 c d c b a |
	b2 c4. a8 |
	e' c d g, c4 b |
	a2 r2 |
	d,16 e d e c d c d b8 b e16 f e f |
	d e d e c d c d b4 g |
	c16 g' a b c b a g fis2 |
	g4 c b e |
	d8 g, g'8. f16 e4 d |
	c r g16 a g a f g f g |
	e8 e a16 b a b g a g a f g f g |
	e4 a8 b c g c d |
	e c e fis g4 r |
	d16 e d e c d c d b8 b e16 f e f |
	d e d e c d c d b4 e |
	d8 c b4 c8 a b g |
	c a b g c a b g |
	c b e b c b e d |
	c b e d e d c b |
	a16 c b a b g a b a8 c, d4 |
	g,1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 2"
		\new Staff = "up" << { \soprii } >>
		\new Staff = "down" << {\bassii} >>
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
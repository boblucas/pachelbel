soprx = \relative c''
{
	R1 r2 r4 a8 g|
	f e f cis d e f g |
	a b c d b2 |
	a4. b8 c2 |
	r4 e8 d c b c gis |
	a b c d e d c b |
	a b c d b4 cis |
	d4. e8 f4. e16 d |
	c8 a d c bes c a4 |
	g4. f8 f2 |
	e8 f g2 f4 |
	e2 r4 a'8 g |
	f e f cis d e f g |
	a b c c, b c d c |
	b2 a4. b8 |
	c2 g8 a b c |
	d2 r4 e8 d |
	c b c gis a b c a |
	b c d e cis2 |
	d4 d,8 e f g a4 |
	e8 f g4 d8 e f4 ~ |
	f8 f e d cis4 d |
	e f e4.\trill d8 |
	d1\fermata \bar "|."
}

bassx = \relative c'
{
	\clef bass
	r4 a8 g f e f cis |
	d e f g a4 cis, |
	d4. e8 f4 d |
	c a r e'8 d |
	c b c gis a b c d |
	e fis gis4  a e |
	f e8 d c d e c |
	f2 r4 a8 g |
	f e f cis d e f g |
	a4 bes8 a g e f a |
	bes g c c, f g a bes |
	c4 bes8 c16 bes a8 d, d'4~|
	d cis8 b cis b cis a |
	d cis d e f4 d |
	c a d2 |
	r4 e8 d c b c gis |
	a b c d e2 |
	f8 e d c b a gis4 |
	a8 gis a b c d e f |
	g2 r4 a,8 g |
	f e f cis d e f g |
	a4 e8 f g4 d8 e |
	f4 g a8 e f d |
	cis a d g, a2 |
	d1 \bar "|."
}


\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 10"
		\new Staff { \soprx}
		\new Staff {\bassx }
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
rh = \markup { \postscript # "0.20 setlinewidth 0.5 -2.0 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprvi = \relative c'
{
	\key d \minor

	d2 g4 bes |
	fis g a8 a16 bes c8 a |
	bes2 f16 g a4 g16 f |
	e8 a4 bes8 c4 bes |
	a8 a16 bes c2 bes4 |
	a2 bes8 c d4 ~ |
	d8 c bes4 c2 |
	f,4 g f8 g a4 ~ |
	a8 g f4 g2 |
	R1 |
	\stemNeutral
	b2.\rest g4 |
	d' f cis d |
	e8 e16 f g8 e f4. ees16 d |
	ees8 f16 ees d8 c d4 c~|
	\stemUp
	c8 c bes a bes bes16 c d4 ~|
	d8 c bes g' f4 ees8 d16 c |
	d4 e f e8 d |
	e4 f g2 ~|
	g4 f2 ees4 ~|ees d c2 |
	bes2 a |
	bes8 c d4. c8 bes4 |
	c2. bes4 ~|
	bes bes2 a4 |
	bes2 r |
	R1 |
	R |
	s|
	s|
	s|
	s |
	g2.\rest d4 |
	g bes fis g |
	a8 a16 bes c8 a b4 c ~|
	c bes2 a4 |
	g2 f |
	e f8 g a4 ~ |
	a4. b8 cis2 |
	d8 c16 bes a8 d bes2 ~ |
	bes4 a8 g fis4 g ~|
	g fis8 e fis2 |
	g1
	\bar "|."
}

altovi = \relative c'
{
	s1 |
	s |
	r4 g d' f |
	cis d e8 e16 f g8 e |
	f4 e d8 e16 fis g4 ~|
	g fis g4. fis16 g |
	a4 g f ees |
	d2.. cis16 d |
	e4 d c bes |
	a8 c d ees f4 r |
	s1 |
	s |
	s |
	s |
	r4 d g bes |
	fis g a8 a16 bes c8 a |
	bes4. c16 bes a2 ~ |
	a g4 bes8 c16 bes |
	a2 g4. a8 |
	bes f bes2 a4~|
	a g2 fis4 |
	g2 a4 g |
	f ees d2 ~|
	d4 c2. |
	d2 r |
	R1 |
	R |
        \stemNeutral
	r4 a d f |
	cis d e8 e16 f g8 e |
	f2 ees4. d16 c |
	d2 c |
	\stemDown
	bes a |
	d1 |
	c2 d4 ees |
	d4. e16 f e8 c f4 ~ |
	f e2 d4~|
	d cis d4. e16 f |
	e4 f g2 |
	d~d8 ees16 f g8 d |
	ees2 d ~|
	d1 ~|
	<d b>1 |
}

tenorvi = \relative c
{
	\clef bass
	\key d \minor
	R1 |
	R |
	R |
	R |
	R |
	d2 g4 bes |
	fis g a8 a16 bes c8 a |
	bes4.^\rh a16 g a2 ~|
	a g |
	f r8 d'8 bes d16 c |
	d4 c8 bes16 a bes2 |
	a4. d8 e4 d ~|
	d cis d8 d16 c bes4 ~ |
	bes a bes a8 g |
	fis2 r |
	R1 |
	\stemNeutral
	r4 g d' f |
	cis d e8 e16 f g8 e |
	f e d c bes4 c |
	d4. c16 bes ees8 d16 ees f8 ees |
	\stemUp
	d8 c16 d ees8 bes c a d4^\rh ~|
	d1 
	c2^\rh f, |
	g f |
	r4 d g bes |
	fis g a8 a16 bes c8 a |
	bes4. a8 g  a16 bes a8 g |
	f4. e8 f g a4 |
	g f e2 |
	r8 f16 g a8 f g4 a |
	bes2. a4 ~|
	a g2 fis4 |
	d g a g ~|
	g f2 ees8 f |
	\stemNeutral
	g2 c,4 d8\rest f |
	bes a16 bes c8 g a8 g16 a bes8 f |
	\stemUp
	g e a4 a2 ~|
	a g |
	a g ~|
	g8 a16 bes c2 bes4 |
	a2. b8 c |

}
bassvi = \relative c
{
	R1 |
	R |
	R |
	R |
	R |
	s |
	s |
	r4 g d' f |
	cis d e8 e16 f g8 e |
	f4 ees d g8 a |
	bes d, e fis g2 |
	f8 e d4 a'8 g f4 |
	e2 d4 g |
	c, f bes, c |
	d2 r |
	R1 |
	s |
	s |
	s |
	s |
	r2. d,4 |
	g bes fis g |
	a8 a16 bes c8 a d d16 e f8 d |
	ees4 e f f, |
	bes2 r4 g |
	d' ees c8 d ees c |
	d g, g' f ees4 c |
	d1 |
	e4 d2 cis4 |
	d2. c4 |
	r8 bes16 c d8 bes ees8 d16 ees f8 ees |
	d8 c16 d ees8 d c4 d8 c |
	bes a g4 d'8 c bes4 |
	a2 g |
	s1 |
	s |
	r4 a d f |
	cis d e8 e16 f g8 e |
	f4 fis g bes, |
	c2 d ~|
	d1 |
	<g, g'> |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 6"
		\new Staff = "up" << { \soprvi } \\ {\altovi} >>
		\new Staff = "down" << {\tenorvi} \\ {\bassvi} >>
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
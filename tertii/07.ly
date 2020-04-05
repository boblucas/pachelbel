rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }


soprvii = \relative c''
{
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	d4 b c16 d c b a b c a |
	b c b a g a b g a4 d, |
	g2 ~ g16 a g fis g8 d' |
	c16 d c b a b c d b4 c |
	a d g, c ~|
	c b c r |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 g'4 e |
	f16 g f e d e f d e f e d c d e c |
	d4 g, c16 d c b a b c a |
	b2 a |
	g4 b c c16 d a c |
	b4 r16 g c8 d2 |
	r16 g, a b c d e f g g, c b a d c d |
	b4 c a2 |
	g4 c2 b4 |
	r16 c r d r e r d r c r b r a r g |
	fis4 g2 fis4 |
	g1 |
	\bar "|."
}

altovii = \relative c''
{
	\showStaffSwitch
	R1 | 
	R1 | 
	\stemNeutral
	g4 e f16 g f e d e f d |
	e f e d c d e c d4 g, |
	c4. d8 e fis g a16 g |
	\stemDown
	fis4 g a8 g fis4 |
	g b, c4. b16 a |
	b4 c c d |
	e fis g2 |
	c,4 f b, e |
	f4. e16 d e8 g16 f e f e d |
	\stemNeutral
	c d e d c d c b c d c d e f e f |
	d e d e f g f g e f e f g4 |
	fis g e a |
	d, g2 fis4 |
	g s s2 |
	\stemDown
	s1 |
	s1 |
	s1 |
	r4 g2 fis4 |
	g2 ~ g16 a e g f4 ~|
	f16 g d f e4 r16 d e f e8.\trill d16 |
	e2. fis4 |
	g g2 f4 ~|
	f e f2 |
	e8 f g f e d c b |
	a4 d8 b a2 |
	d1 |
}

tenorvii = \relative c'
{
	\showStaffSwitch
	\clef bass
	\stemNeutral
	d4 b c16 d c b a b c a |
	b c b a g a b g a4 d, |
	g8 a16 b c4 a b |
	c8 b a g f4 e8 d |
	c4 a'8 b c d e4 |
	d e c d |
	g,2. f4 ~|
	f e a b |
	\stemUp
	c d2 g,4 |
	a2 g4 a ~|
	a8 g16 a g4 ~ g4. f8 |
	e f e d e f g4 |
	f8 g a b c4. b8 |
	a4 g g c^\rh |
	fis, \change Staff="up" \voiceTwo b c4. b16 a |
	b8 d16 c b c a b c4. \change Staff="down" \voiceOne b8 |
	a8 b c d16 c b4 c ~|
	c b c2 ~|
	c4 b a2 |
	d4 b \stemNeutral c16 d c b a b c a |
	b c b a g a b g a4 d, |
	g c2 b4 |
	c4. d8 e4 r |
	s1 |
	s1 |
	s1 |
	s1 |
	\voiceOne
	b1 |
}

bassvii = \relative c'
{
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r2 g4 e |
	f16 g f e d e f d e f e d c d e c |
	d4 g, c2 |
	R1 |
	R1 |
	d4 b c16 d c b a b c a |
	b c b a g a b g a4 d, |
	g g'8 f e c16 d e f g e |
	f2 g4 a d, g c, e8 c |
	g'2. fis4 |
	g2 s2 |
	s1 | 
	s1 | 
	s1 | 
	\stemNeutral
	g4 e f16 g f e d e f d 
	e f e d c d e c d4 g, |
	c1 ~ |
	c16 c d c b8 e c16 e d c d8 d, |
	\voiceTwo
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 7"
		\new Staff = "up" << { \soprvii } \\ {\altovii} >>
		\new Staff = "down" << {\tenorvii } \\ {\bassvii} >>
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
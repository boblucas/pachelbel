rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

sopri = \relative c''
{
	g2 a4 c~|
	c c c2 |
	b4 a8 b c a d4 |
	g, c2 b4 |
	a g c8 d e f |
	g e d8. c16 b4 c |
	d8 b c d c e d c |
	b4 a8 b c2 |
	a8 c b a d4 e |
	d2 c |
	b16 g c d b c a b g a f g e f d e |
	c c' b c a b c d e8 d c16 b c d |
	e e f g a g f g e f d e c e d f |
	e8 c16 e g, c c e g,8 e16 g g c e, g |
	e8 g16 g e8 g e4 f8 e16 d |
	c8 e16 d c d e f g8 d16 e f8 c16 d |
	e8 f16 g a b c d e d e f g f e d |
	c4 ~ c16 c b a g8 e16 f g8 fis16 g |
	a b a g a c b d c b c d c e d c |
	b c b c d e f e32 d g4 f |
	
	e d \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie c ~ c16 e d c |
	b1 |
	\bar "|."
}

altoi = \relative c'
{
	s1 |
	r2. c4 |
	d f2 f4 ~ |
	f8 e d c d4. e8 |
	f4. e16 d e8 f g a |
	e4_\lh fis g2 ~|
	g4 f e8 g f e |
	d4 c4. d16 e f4 ~ |
	f2 g |
	a4 g a2 |
	\showStaffSwitch
	d,8 e  d c \change Staff ="down" \voiceOne b a g f |
	e4 f r16 g f g e g a b |
	c c d e \change Staff="up" \voiceTwo f g a b c8 g e g |
	c g e g e c e c |
	\change Staff ="down" \voiceOne \stemNeutral
	g4 r4. c16 c a8 c |
	a4. a8 g16 a b c d8 a16 b |
	\stemUp
	c g a e f g a b c8 d e c |
	\change Staff="up" \voiceTwo
	f8 e16 d c8 d e c16 d e8 d |
	c b c d e d e fis |
	g4 f e8. d32 c d4 ~ |
	d16 c32 b  c4 b8 a2 |
	\change Staff="down" \voiceOne
	g1 |
}
ending = \relative c''
{
	s1*19|
	s2 s16 g [ c8.] d16 b8 |
	g4 ~ g16[ d g8.] g16 fis e fis4 |
	\voiceTwo
	<g d>1 |
}

tenori = \relative c
{
	R1 |
	R1 |
	R1 |
	\stemNeutral
	d2\rest g2 |
	a4 c2 c4 |
	c d d8\rest e d8. c16 |
	\stemUp
	b8 g a b c2 |
	f,8 g a4. g8 a b |
	c a d c b4 c~ |
	c b a2 |
	g8 s2.. | 
}

bassi = \relative c
{
	\clef bass
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	r2 c2 |
	d4 f2 f4 |
	f2. e4 |
	fis g2 fis4 |
	g,1 |
	a2 c ~|
	c c |
	c1 |
	s1 |
	s1 |
	c2 c |
	a c |
	a2. a4 |
	\voiceTwo
	g1 ~|
	g ~|
	g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 1"
		\new Staff = "up" << { \sopri } \\ {\altoi} \\ {\ending} >>
		\new Staff = "down" << {\tenori } \\ {\bassi} >>
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
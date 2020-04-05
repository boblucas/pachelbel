
soprvii = \relative c''
{
	\time 12/8
	b8 e b gis a b e, fis gis gis a b |
	c2. c8 d e e4. |
	a,8 b c c d e f4. e4 d8 |
	e f e d e c b2. |
	e4. ~ e4 d8 c4. r |
	s1. |
	s1. |
	r2. e8 a e c d e | \pageBreak
	a, b c c d e f4. e | \noPageBreak
	d c b2. | \noPageBreak
	e4. ~ e4 d8 c4. b | \noPageBreak
	c b4.\rest b2.\rest | \noPageBreak
	s1. |  \noPageBreak
	s1. |  \noPageBreak
	b8 e b gis a b e, fis gis gis a b | \noPageBreak
	c b a d e b c a a' g a e | \noPageBreak
	f4. e8 f e d e c b c a | \noPageBreak
	gis2. r4 e'8 d e b | \noPageBreak
	c b a gis a b a gis a fis gis a | \noPageBreak
	gis fis e fis e dis e2. | \noPageBreak
	\bar "|."
}

altovii = \relative c'
{
	\showStaffSwitch
	s1. |
	e8 a e c d e a, b c c d e |
	f4. e d8 e f g a b |
	c d c b c a gis2. ~ |
	gis4. b e, ~ e4 b8 |
	c4. e r2. |
	r b'8 e b gis a b |
	e, fis gis gis a b c4. a4 g8 |
	f4. e d8 a' b c g a |
	b fis gis a e fis gis2. |
	gis8 a b b4. a ~ a4 g8 |
	a4. s s2. |
}

tenorvii = \relative c'
{
	\showStaffSwitch
	\clef bass
	R1. |
	R1. |
	R1. |
	r2. b8 e b gis a b |
	e, fis gis gis a b c4. a4 gis8 |
	a4. ~ a4 g8 a b c d e f |
	e d c b c a gis4. b |
	gis8 a b b4. a r |
	R1. |
	s1. |
	s1. |
	e'8 a e c d e a, b c c d e |
	\change Staff = "up"
	\voiceTwo
	\stemNeutral
	f g e d g f e4. fis |
	g8 b g fis a fis e g e dis e fis |
	\change Staff = "down"
	\voiceOne
	e2. gis,8 a b b4. |
	a4. ~ a4 gis8 a2. |
	a4 d8 c4. b4 a8 d4 c8 |
	b4 e8 d e b c4. b4 gis8 |
	a b c b c d c b c a b c |
	b a gis a gis fis gis2. |
}

bassvii = \relative c
{
	R1. |
	R1. |
	R1. |
	s1. |
	r2. e8 a e c d e |
	a, b c c d e f4 e8 d4. |
	c d e2. ~ |
	e4. e8 fis gis a4. r |
	R1. |
	r2. b,8 e b gis a b |
	e, fis gis gis a b c b a d b e |
	a,4. a'4 g8 f4. e |
	d g c,8 c' b a d c |
	b d b a c a g b g fis g a |
	gis4. e2. d4. |
	c b a2. |
	d1. |
	e1. ~|
	e1. ~|
	e1. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 7"
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
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
		}
	}
	\midi {\tempo 4=100}
}
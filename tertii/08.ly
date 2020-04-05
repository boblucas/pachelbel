
soprviii = \relative c''
{
	R1 |
	R1 |
	r4 g a e |
	f d g2 |
	c,4. c8 d16 c d e d e f g |
	e f e d c e d c b2 |
	r8 c' c16 d c b a8 g16 a b c b a |
	b c b a g f e d e f e d c b a g |
	fis2 r4 d'' |
	e b c a |
	d2 g,4. a16 b |
	c4. d16 c b c d c b a g a |
	fis2 r8 g' g16 a g fis |
	e8 d16 e fis g fis e fis g fis e d c b a |
	b c b a g a g f e f e d c e d c |
	b2 r4 g'' |
	a e f d |
	g2 c,4 ~ c16 c b c|
	d d, e f g f e d e f e d c g' f g |
	e g a b c2 b4 |
	c8 g g16 a g f e8 d16 e fis g fis e |
	fis g fis e  d c b a  b c b c  d c d b |
	c d c d e d e c d e d e f e f d |
	e f e d c e d c b d e fis g a b fis |
	g1 |

	\bar "|."
}

bassviii = \relative c'
{
	\clef bass
	d2 e4 b |
	c a d2 |
	g, r8 c c16 d c b |
	a8 g16 a b c b a b c b a g f e d |
	e4 a b8 a b g |
	c2 r4 g |
	a e f d |
	g2 c, |
	d16 a' b c d c b a g2 |
	\clef treble
	r8 g' g16 a g f e8 d16 e fis16 g fis e |
	fis g fis e d c b a b8 c16 d e4~|
	e8 d16 e fis8 d g2 |
	\clef bass
	r4 d,4 e b|
	c a d2 |
	g,8 a b g c d e f |
	g16 a b a g a g f e f e d c4 |
	r8 c' c16 d c b a8 g16 a b c b a |
	b c b a g f e d e4 a |
	b2 c |
	r d |
	e4 b c a |
	d2 g,8 a b g |
	a b c a b c d b |
	c c, e fis g2 |
	g,1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 8"
		\new Staff = "up" << { \soprviii } >>
		\new Staff = "down" << {\bassviii } >>
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
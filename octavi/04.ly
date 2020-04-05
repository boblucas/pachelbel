
sopriv = \relative c'
{
	d8. e16 d16 c b a g8 g' d16 g d g |
	e f e f d e d c b8. c16 d4 |
	e2 f4 e8. d16 |
	c16 g a b c b c d e c d e f e f d |
	e8 fis g2 fis4 |
	g b c b8 c |
	d4 r2. |
	r2 g,8. a16 g f e d c8 c' g16 c g c a b a b g a g f |
	e2 r |
	r d'8. e16 d c b a |
	g8 g' d16 g d g e f e f d e d c |
	b c b c a c b a g4 c ~ |
	c b c e |
	f e8. d16 c4 d |
	e \oneVoice r d16 b c d e d c d |
	\voiceOne b c a b c2 b4 |
	a2 b4 d |
	c4 f8 e g4. f8 |
	e2 d |
	c b |
	a4 b a b |
	a b a b a8 b a4 b r |
	r16 b d c  b a g f  e4 r4 |
	r16 g a b c d e fis g2 |
	\bar "|."
}

altoiv = \relative c'
{
	\showStaffSwitch
	s1 |
	\change Staff="down" \oneVoice r2 g8. a16 g f e d |
	c8 c' g16 c g c a b a b g a g f |
	e8 f16 d e d e f g e f g a g a b |
	\change Staff="up" \voiceTwo c4. b8 a2 |
	b4 d g f8 e |
	d4 r16 b16 c d e4 r16 a, b c |
	d4 c16 d c d b8 a b4 |
	a c2 ~ c8 b |
	c2 b4. e8 |
	fis4 g fis8 e fis4 |
	g4 g4. g4 fis8 |
	g4 f e16 f e f d e d c |
	d2 e4 g |
	c b8. a16 g4 b |
	c4 s2. |
	g4 e16 a g a fis8 d g4 ~ |
	g fis g b |
	c b8 c d2 ~ |
	d4 c2 b4 ~ |
	b a2 g4 |
	fis g16 d g8 fis4 g16 d g8 |
	fis4 g16 d g8 fis4 g16 d g8 |
	fis8 g8. e16 fis8 g4 s |
	s1 |
	s2 b |
}

bassiv = \relative c
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 |
	s1 |
	s1 |
	s1 |
	r2 d8. e16 d c b a |
	g8 g' d16 g d g e f e f d e d c |
	b d e fis g8 g, r16 c16 d e f4 |
	r8 d e fis g2 |
	a4 e f g |
	c,16 d e f g a b c b c b a g a b c |
	d e d c b c b c d2 |
	e4 b c b8 a |
	g4 r2. |
	g8. a16 g f e d c8 c' g16 c g c |
	a b a b g a g f e f e f d f e d |
	c d e f g a b c b g a b c d e fis|
	R1 |
	d,8. e16 d16 c b a g8 g' d16 g d g |
	e f e f d e d c b c d c b g a b |
	c g a b c d e f g d e f g a b g |
	a e f g a b c a d d, e fis g a b c |
	d e d c b8. c16 d16 e, d c b8. c16 |
	d e' d c b8. c16 d e, d c b8. c16 |
	d c b c d4 g,16 g' f e d c b a |
	g8 r4. c16 c' b a g f e d |
	c8 r4. g2 | 


}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 4"
		\new Staff = "up" << { \sopriv } \\ {\altoiv} >>
		\new Staff = "down" << {\bassiv} >>
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
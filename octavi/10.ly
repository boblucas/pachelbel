
soprx = \relative c''
{
        \oneVoice
	R1 |
	s1 |
	s1 |
	\voiceOne
	r8 d d d b d16 c b c b a |
	g8. a16 b4 c8 b c d |
	e2 d |
	c2. b4 |
	a2 b8 a b c |
	b g' g g e g16 f e f e d |
	c e d c d e f g e f e f d e d c |
	b c d e c b c d b2 |
	a b8 a b c |
	b8. c16 d c d b c8 b c d |
	e2 d8 e f g16 f |
	e2 d |
	e8 d e f e2 ~ |
	e4 d2 c4 ~ |
	c b a2 |
	b8 a b c b4 r |
	c r c8 r c r |
	d4 d \oneVoice e16 e, f g a b c d |
	e d c b c d c b a fis g a b a b c |
	d b c d e fis g a b8 d,, e16 fis g a |
	\voiceOne
	fis8 a16 g fis g fis e d8 d'16 c b c b a |
	g c b c a8.\trill g16 <g d b>2 |
	\bar "|."
}

altox = \relative c''
{
	s1 \oneVoice r8 g g g e g16 f e f e d |
	c e d c d f e d e8 fis16 g a g fis e |
	\voiceTwo fis2 g4 d8 c |
	b8. c16 d4 e8 d e f |
	g4. c b4 ~|
	b a ~ a16 d, e fis g4 ~ |
	g fis g8 fis g fis |
	g \change Staff="down" \voiceOne b,16 c d c d b c4. b8 |
	c4 b8 g c \change Staff="up" \voiceTwo c' b a |
	g4 e8 a4 d,8 g4 ~ |
	g fis g8 fis g fis |
	r8 g g g e g16 f e f e d |
	c d e f g a b c b8 a16 g a8 b |
	c g c2 b4 |
	c8 b c b c4 ~ c16 g a g |
	f2 e |
	d4. g fis4 |
	g8 fis g fis g4 r |
	e r a8 r g r |
	fis4 g s2 |
	s1 | 
	s1 |
	\change Staff="down" \voiceOne
	r4 a,2 g4 ~ |
	g4. fis8 g2 | 
}

bassx = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	r8 d d d b d16 c b c b a |
	g8. a16 b8 a16 b c4. b8 |
	a4 b c4. a8 |
	d8. c16 b8 a g2 |
	r8 g g g e g16 f e f e d |
	c g' a b c e, a g fis d e fis g a b g |
	a e fis g a b c a b4 ~ b16 a b c |
	d8 d, d d b d16 c b c b a |
	\voiceTwo g8 g' g4 c,8 e c g' |
	a4 r2. |
	\oneVoice
	R1 |
	r8 d d d b d16 c b c b a |
	g4 r2. |
	R1 |
	r2 r8 g g g |
	e g16 f e f e d c g' a b c4 |
	a16 c b a b g a b c g a b c e, a g |
	fis d e fis g a b c d8 d, d d |
	b8 d16 c b c b a g g' d g b, g' g, g' |
	c, c' g c  e, c' c, c'  f, c' a c  e, c' g c |
	d, c' b a b g a b c c, d e f g a b |
	c b a g a b a g fis d e fis g fis g a |
	b g a b c d e fis g8 b, c a |
	\voiceTwo d d, d d b2 |
	e8 c d4 g,2 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 10"
		\new Staff = "up" << { \soprx } \\ {\altox} >>
		\new Staff = "down" << {\bassx} >>
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
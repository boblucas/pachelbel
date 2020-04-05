
sopriii = \relative c''
{
	R1 |  
	R1 |  
	R1 |  
	s1 |
	s1 |
	s1 |
	g8 c b g a16 b c d b8 g |
	a4 b c2 ~ |
	c4 b a2 |
	b2\rest c8 g' e c |
	d16 e f g e8 c e4 fis |
	g8 d g4 ~g16 g f e f g f g |
	e2 d8 e d b |
	c a b4 c d |
	g,8 a16 b c4. c8 b4 |
	a2 b8 e d b |
	c8 a b4 c8 b16 c d4 |
	g,2. f4 ~|
	f e d2 |
	e4 r r2 |
	R1 |
	s1 |
	s1 |
	b'2\rest c,8 g' e c |
	d16 e f g e8 c e4 fis |
	g4. f16 e f2 |
	b2\rest g8 c b g |
	a16 b c d b8 g a4 b |
	c a16 b c d b8 e a, b |
	c b c4. b8 c4 ~|
	c8 d16 e d8.\trill c16 b2 |
	a g ~ |
	g4. fis8 g2 |
	\bar "|."
}

altoiii = \relative c'
{
	R1 |
	R1 |
	R1 |
	\stemNeutral
	r2 c8 g' e c |
	d16 e f g e8 c e4 fis |
	g2 f8 e16 f d e f g |
	\stemDown
	\showStaffSwitch
	e4 \change Staff="down" \voiceOne d8 b a4 g8 b |
	c4 \change Staff="up" \voiceTwo d e8 f16 g a4 ~|
	a8 d, g2 f4 ~|
	f8 e \change Staff="down" \voiceOne d4 e g8 e |
	d4 c8 e g4 \change Staff="up" \voiceTwo a |
	b ~ b16 b a g a4 d ~|
	d8 g, c4 b8 g g4 ~ |
	g8 fis g4. f8 e d |
	d4 a'4. a8 g4 ~|
	g fis g2 |
	g8 fis g4 f2 ~ |
	f8 e16 d e4. a,8 d4 ~ |
	d8 g, c2 b4 |
	c r r2 |
	R1 |
	\stemNeutral
	b'2\rest g,8 c b g  |
	a16 b c d b8 g a4 b |
	\stemDown
	c a g \change Staff="down" \voiceOne g8 e |
	g4 g4. c8 b a |
	b4 cis d8 a d4 ~|
	\hideStaffSwitch
	d16 g, a b \change Staff="up" \voiceTwo c4 b8 e d b |
	\change Staff="down" \voiceOne
	a4 g \change Staff="up" \voiceTwo  c16 d e f d e f g |
	e fis g a fis8 d g f16 e f8 d |
	e d e4 f8 d e4 |
	g a2 g4 ~|
	g f2 e4 ~|
	e8 e d c d2 |
}

tenoriii = \relative c'
{
	\clef bass
	\stemNeutral
	g8 c b g a16 b c d b8 g |
	\stemUp
	a4 b c8 b c4 ~|
	c8 b c4 g16 a b c a b c d |
	b4. a16 b g4. e8 |
	g2 c4. b16 a |
	b4 c2 b4 |
	c s2. |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\stemNeutral
	d,2\rest g8 c b g |
	a16 b c d b8 g a4 b |
	c4 ~ c16 c b a e'4. d8 |
	\stemUp
	cis8 b16 cis d8 d, g4 r |
	s1 |
	s1 |
	s1 |
	c,8 g' e c d16 e f g e8 c |
	e4 fis g4. a16 g |
	f4 e8 d e4 d8 e |
	fis4 g4. f8 e d |
	c8 d16 e f4 e s |
	s1 |
	s1 |
	s1 |
	s1 |
	R1 |
	s1 |
	s1 |
	s2.. c'8 ~|
	c c b a b2 |
}

bassiii = \relative c
{
	s1 |
	d2\rest c8 g' e c |
	d16 e f g e8 c e4 fis |
	g8 d g f e b c4 ~|
	c8 b c4. c16 b a8 d |
	g, g' f e d4 g |
	c, g'4. fis8 g4 ~ |
	g8 f e d c4. b16 a |
	b4. c8 d d' a d16 c |
	b8 c a b c2 ~ |
	c8 b c4. c16 b a b c d |
	g,4 d2.\rest |
	s1 |
	s |
	s |
	r2 g,8 c b g |
	a16 b c d b8 g a4 b\trill |
	c ~ c16 d e c f4 ~ f16 f e d |
	e4 ~ e16 e d c f8 d g g, |
	c,4 c' b8 g c4 |
	r8 c16 b a b c d b8 c16 d e4 ~ |
	e8 d c b c4 g |
	d' g, d' g, |
	a4. b8 c2 ~ |
	c8 b c2 d4 |
	g,8 g'16 f e8 a d,4 ~ d16 f e d |
	e4. fis8 g e16 f g4 ~|
	g8 fis g4 d2\rest |
	R1 |
	c8 g' e c d16 e f g e8 c |
	e4 fis g16 a g f e f e d |
	c c' b c a b c d b g a b c c, e f |
	g2 g, |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 3"
		\new Staff ="up" << { \sopriii } \\ {\altoiii} >>
		\new Staff ="down" << {\tenoriii } \\ {\bassiii} >>
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
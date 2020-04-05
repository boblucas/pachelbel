rh = \markup { \postscript # "0.20 setlinewidth 0.5 -2 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprii = \relative c''
{
	s1 |
	b2\rest c4 c |
	a c a2 |
	g a4 g |
	c4. b16 a b4. c16 b |
	a4 d2 c4 ~|
	c c d c ~|
	c b c4. c8 |
	b2 a ~|
	a8 g f e f e16 f g8 f |
	e4 g a g ~|
	g f2 e4 |
	d2 b'\rest |
	R1 |
	f'4 f d f |
	d2 c |
	b8 c d c16 b a8 b c4 ~|
	c8 b16 a g8 c a4 c |
	d c2 b4 |
	c2 ~ c8 b16 a b8 c |
	d c16 b a8 b c2 |
	r16 g r g r g r g r g r g r g r g |
	r c r e r c r e r g, r a r g r g |
	r c r c r c r c r c r c r c r c |
	r b r c r b r e r d r c r b r c |
	r b r c r b r a r b r c r b r a |
	b1 | 
	\bar "|."
}

altoii = \relative c'
{
	f4 f d f |
	d2 c8 d e d16 e  |
	f4 e8 d16 e f8 c f4 ~ |
	f e f e~|
	e8 d16 e fis4 g8 d g4 ~|
	g f g2 |
	a2. a4 |
	f2 e |
	s1 |
	s1 |
	c4 c a c |
	a2 g4. a8 |
	\showStaffSwitch
	b4. \change Staff ="down" \voiceOne a8 g a16 b c4 ~|
	c8 a d4. c16 b e4 |
	c d8 c b4 a |
	b2 a |
	g8 a b c d c16 b a8 b |
	c d e c \change Staff ="up" \voiceTwo f4 a |
	f a f8 a g8. f16 |
	e8 f g f16 e d4. e8 |
	f2 e8 c f4 |
	e8 e f f e e e e |
	\partcombine \relative c {
	\stemDown
	a'' c a c e, f e e |
	e d c d e d e fis |
	g g g g g g g g |
	g g g fis g g g fis | } 
	\relative c { e' a e a c, a c c |
	c b a b c b c a |
	d e d c b e d e |
	d e d c d e d c | }
	
	g1 |
}

tenorii = \relative c'
{
	\clef bass
	R1 |
	R1 |
	R1 |
	\stemNeutral
	c4 c a c a2 g |
	d' e4. d16 c |
	\stemUp
	f2.^\rh f4^\rh ~|
	f8 f,32 g a16 g8 f g f16 g a4 ~|
	a g f4. g16 f |
	e2 d |
	c8 d e d16 e f4 e8 d16 e |
	f8 f, a b c2 |
	\voiceTwo
	g4 d' e4. c8 |
	f4. e16 d g4. e8 |
	a g f4 g d ~|
	d8 d g2 fis4 |
	g2 r |
	r f4 f |
	d f d2 |
	c8 d e f g4. f16 e |
	d8 e f g a4. b8 |
	\voiceOne
	c8 c a f c' g c g |
	%\change Staff = "up" \voiceFour
	s1 |
	s |
	s |
	s |
	d1 |
}

bassii = \relative c
{
	R1 | 
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	f4 f d f |
	d2 c |
	d4 e4. a,8 d4 ~|
	d c2 b4 |
	c4 r2. |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	c2 c |
	a c |
	a1 |
	g ~|
	g ~|
	g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 2"
		\new Staff ="up" << { \soprii } \\ {\altoii} >>
		\new Staff="down" << {\tenorii } \\ {\bassii} >>
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
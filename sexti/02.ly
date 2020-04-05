soprii = \relative c''
{
	\time 12/8
	\key f \major
	R1. | 
	R1. | 
	R1. | 
	R1. | 
	R1. | 
	s1. |
	s1. |
	s1. |
	s1. |
	c8 c c  c c c  a g f a bes c |
	bes c d g, a bes a bes c f, a b |
	c4. c2 d8 c b4. |
	c4. c2 bes8 a bes4. ~|
	bes a g2. |
	s1. |
	s1. |
	f'8 f f f f f e d c e f g |
	f g a d, e f e f g c, d e |
	f4. d e8 d e cis d e |
	d4. c4 bes8 a4. g4 f8 |
	g4 a8 g4. a c |
	d4 a8 bes4. c4 g8 a4. |
	\oneVoice g8 c d e f g f g a d, e f | \voiceOne
	e4. r8 f g c,4. d |
	e g4 e8 f4 e8 f4. |
	g4 d8 e4. d2. |
	c2. bes |
	a g |
	a1. |
	\bar "|."
}

altoii = \relative c'
{
	\showStaffSwitch
	R1. | 
	R1. | 
	R1. | 
	R1. | 
	R1. | 
	\oneVoice f8 f f f f f e d c e f g |
	f g a d, e f e f g c, d e |
	f2. ~ f8 g f e4. |
	f r r2. | \voiceTwo
	s2. s4. f4 e8  |
	d4. e f4 e8 d4. |
	e2 f8 e d2 g8 f |
	e d c f g e d4. g ~ |
	g4 c,8 f2. e4. |
	\voiceOne a c d bes c4 g8 a4. g8 a f e f g | \voiceTwo
	f4. g2. g4. |
	\change Staff="down" \voiceOne d2. c4. g' | \change Staff="up" \voiceTwo
	a8 g a f g a g f g e f g |
	f e d e f g4 c,8 f e4 d8 |
	e4 f4. e8 f4. ~ f4 e8 |
	f4 f8 g4. f4 e8 f4. |
	\change Staff="down" \voiceOne e2. d | \change Staff="up" \voiceTwo
	r8 g c bes4. a b |
	c4. ~ c4 bes8 a4 c8 d4. |
	c4 b8 c2. bes4. ~ |
	bes a2. g4. ~|
	g f2. e4. |
	f1. |
}

tenorii = \relative c'
{
	s1. |
	s1. |
	c8 c c  c c c a g f a bes c |
	bes c d g, a bes a bes c f, a b |
	c2 d8 b c bes a bes a g |
	a4. b c ~ c4 bes8 |
	a4. b c ~ c4 bes8 |
	a g a f g a g2 a8 g |
	f8 bes a g c bes a bes a g4 f8 |
	g4 a8 g4. c s |
	\oneVoice g c f, ~ f4 g8 |
	c, c' bes a4 g8 f4. g |
	a2. bes2 a8 g | \voiceOne
	a4. ~ a4 bes8 c4. s |
	\change Staff="up" \voiceTwo f ~ f4 e8 d4 f8 g4. |
	f4 e8 f4. e4 d8 \change Staff="down" \voiceOne c4. ~ |
	c b c c |
	\voiceTwo c b c e |
	\oneVoice d r r2. | \voiceOne
	R1. | 
	\voiceTwo c8 c c c c c a g f a bes c |
	bes c d g, a bes a bes c f, a b |
	c2. ~ c4. b |
	\voiceOne c d4 e8 f4. r |
	s1. |
	s1. |
	s1. |
	s1. |
	c1. |
}

bassii = \relative c
{
	\key f \major
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass

	f8 f f f f f e d c e f g |
	f g a d, e f e f g c, d e |
	f4. e f ~ f4 e8 |
	d4. e f d |
	c8 d e d4. e4 f8 d4 e8 |
	f4. d c2. |
	d c |
	d bes4. c |
	d e f e4 d8 |
	e4 f4. e8 f2. |
	s1. |
	s1. |
	s1. |
	r2. c8 c c c c c |
	\oneVoice a g f a bes c bes c d g, a bes |
	a bes c f, a b \voiceTwo c2. |
	d4. g c, r |
	s1. |
	s1. |
	R1. |
	s1. |
	s1. |
	s1. |
	r2. f8 f f f f f|
	\oneVoice e d c e f g f g a d, e f |
	e f g c, d e f d f g d g |
	e c e f c f d bes d ees bes ees |
	c a c d a d bes g bes c c, c' |
	\voiceTwo f,1. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 2"
		\new Staff = "up" << { \soprii } \\ {\altoii} >>
		\new Staff = "down" << {\tenorii} \\ {\bassii} >>
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
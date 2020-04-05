
sopriv = \relative c'
{
	f8 f16 f g8 g16 g a8 f r f' |
	e4 d\trill c b |
	c e f e ~|
	e d c8 bes16 a bes8 c |
	a4 bes a c ~|
	c d e2 |
	d c4 bes |
	a2 g8 c4 b8 |
	c4 g a bes |
	a8 g16 a f a g f g a f g e g f e |
	\oneVoice f4 r2. |
	c8 c16 c d8 d16 d e8 c r c' |
	a4 g\trill f8 e16 f d g f g | \voiceOne
	e4 ~e16 f e f d2
	f8 f16 f g8 g16 g a8 f r f' | \oneVoice
	e4 d\trill c ~ c16 c d c |
	b d c b c d e c f g e f d f e d | \voiceOne
	e8 d16 e c4 r16 a d c b4 |
	c a g2 |
	a4 bes a8 a'16 g f a g f |
	g a g f e g f e f4 ~ f16 g f e |
	d2 c4 bes a c2 b4 c2. bes4 ~ |
	bes a g2 |
	a1 | 
	\bar "|."
}

altoiv = \relative c'
{
	\showStaffSwitch
	s1 | 
	r2 c8 c16 c d8 d16 d |
	e8 c r c' a4 g\trill |
	f4. e16 d e8 f g e |
	f4. e8 f4 a |
	g8 a b4 c8 g c4 ~|
	c b c8 a4 g8 ~ |
	g f16 e f4 e f |
	g e f e ~ 
	e d2 cis4 |
	\change Staff = "down" \voiceOne
	d8 a d8. c16 b8.\trill a16 g4 ~|
	g8 a b4 c g |
	f e d2 |
	\hideStaffSwitch
	c8 \change Staff = "up" \voiceTwo c' g a bes f bes4 |
	\showStaffSwitch
	c8 d e4 f \change Staff = "down" \voiceOne a, |
	g8 a bes2 a4 |
	g2 a4 b |
	
	c8 d e c \change Staff = "up" \voiceTwo f d g f |
	e4 f2 e4 |
	\change Staff="down" \voiceOne f e2 d4 ~|
	d cis d c |
	bes \change Staff="up" \voiceThree bes' a g |
	s4 \voiceTwo a g f |
	e8 d16 e f8 c d4 f |
	g4. f4 e16 d e4 |
	<f c>1 |
}

tenoriv = \relative c
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 |
	R1 |
	R1 |
	R1 |
	\oneVoice f8 f16 f g8 g16 g a8 f r f' |
	e4 d\trill c8. bes16 a8 g |
	f e16 f g8 f e f g4 | \voiceOne
	a4. bes8 c4 r |
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
	\oneVoice c,8 c16 c d8 d16 d e8 c r c' |
	\voiceTwo a4 g\trill f2 |
	e d4 a' | \voiceTwo
	bes8 c \hideStaffSwitch \change Staff="up" \voiceTwo d e f4. e8 |
	f4 s2. |
	s1 |
	s1 |
	s1 |
}

bassiv = \relative c
{
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	r2 c8 c16 c d8 d16 d |
	e8 c r c' a4 g\trill |
	f2 e |
	d8. e16 f8 d g4. f8 |
	e f d g c,4 e ~|
	e8 d4 c4. b4 |
	c4 r2. |
	a'8 bes g c f,2 |
	c4 d e f ~ |
	f e d2 |
	c4 r2. |
	s1 |
	s |
	s |
	s2 \oneVoice f,8 f16 f g8 g16 g |
	a8 f r f' e4 d_\trill |
	c a bes8 c d c16 d |
	e c d e f g a bes \voiceTwo c8 bes, c c, |
	f1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 4"
		\new Staff = "up" << { \sopriv } \\ {\altoiv} >>
		\new Staff = "down" << {\tenoriv } \\ {\bassiv} >>
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

soprx = \relative c''
{
	\key f \major
	r8 c16 c c4 r8 f,16 f f4 |
	r8 f'16 f e f d e c8 d16 d c d bes c |
	a bes a g f g a bes c4 ~ c16 bes a bes |
	c4 ~ c16 d e f e4 f8 e |
	d c b4 c4. bes8 |
	a d c8. bes16 a2 |
	g4 ~ g16 g a bes a4 ~ a16 g a bes |
	c4 c8 b c a a g |
	c4. f8 e4 f |
	e d8. e16 c8. d16 bes8. c16 |
	a4 ~ a16 c bes a g4 ~ g16 a g f |
	g4 a8 bes a4 b |
	c4. bes8 a4. g8 ~|
	g16 a g f e g f e f4 \oneVoice r |
	r2 r8 c'16 c c4 |
	r8 f,16 f f4 r8 f'16 f e f d e |
	c8 d16 d c d bes c a bes a g f g a bes |
	c g c8 c8.\trill b16 c8. bes32 a bes16 c d e |
	\voiceOne f4. e16 d e8 f16 e d4 |
	c ~ c16 d c d e4 ~ e16 f e f |
	g4 f8 g a f e d |
	c d e4 d c8. bes16 |
	a8 g16 a bes4 a g |
	a ~ a16 bes a bes c4 c8 b |
	c a a g a2 |
	g16 a g f e f g a bes2 |
	a16 bes a g f g a bes c8 bes a4 |
	g2 f |
	\bar "|."
}

altox = \relative c'
{
	%\showStaffSwitch
	s1 | 
	s1 | 
	r2 r8 f16 f f4 |
	r8 c16 c c4 r8 c'16 c a bes g a |
	f8 a16 a g a g f e f e d c c d e |
	f8 e16 d e f g4 c,8 f4 ~|
	f e f2 |
	a4 g8 f e f e d |
	e4 a g8 c4 b8 |
	c4 ~ c16[ c bes8.] bes16[ a8.] a16[ g8] |
	f4 ~ f16 a g f e4 ~ e16 f e d |
	d4 f8 e f c d4 |
	g e8 f16 g c,8 f16 e d4 |
	cis8 d4 cis8 d \change Staff="down" \voiceOne a bes16 c bes a |
	g bes a bes c d c bes a4. bes8 |
	c4. d8 c4 bes8 a |
	g f g4 c a |
	g f e16 d e f g a bes g |
	a \change Staff="up" \voiceTwo a' d, e f g a b c8 a bes16 f bes8 ~|
	bes4 a g2 |
	e'4 f8 e f c bes a |
	g4. c4 b8 c4 |
}

tenorx = \relative c'
{
	\showStaffSwitch
	\clef bass
	\oneVoice R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	r8 c16 c c4 r8 f,16 f f4 |
	r8 f'16 f e f d e c8 d16 d c d bes c |
	a bes a g f g a bes c d e c d4 |
	c16 d e c f8 g e f d e |
	\voiceOne f4 r2. |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\clef treble
	r8 f16 f f4 r8 c16 c c4 |
	r8 c'16 c a bes g a f8 a16 a g a f g |
	e f e d c c d e f d g f e d c8 |
	\change Staff = "up" \voiceTwo
	f4 r16 d g4 f e8 |
	f2 a4 g8 f |
	e f e d c4 f |
	e4. e8 d4 g |
	f4. f8 g4. f8 ~|
	f4 e <c a>2 |
}

bassx = \relative c
{
	\key f \major
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
	r8 f16 f f4 r8 c16 c c4 |
	r8 c'16 c a bes g a f8 a16 a g a f g |
	e f e d c c d e f8 d bes'4 |
	a2 d,4. d8 |
	e4. c8 f4. g8 |
	a4. bes8 a4 g8 f |
	e d e4 f4. f8 |
	e4 d c r |
	\oneVoice R1 |
	s1 |
	s1 |
	s1 |
	
	r2 \clef bass r8 c16 c c4 |
	r8 f,16 f f4 r8 f'16 f e f d e |
	c8 d16 d c d bes c a bes a g f g a bes |
	c4. c8 bes16 c bes a g a bes c |
	d2 e16 c d e f g a f |
	bes g a bes c bes, c c, <f f'>2
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 10"
		\new Staff = "up" << { \soprx } \\ {\altox} >>
		\new Staff = "down" << {\tenorx } \\ {\bassx} >>
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
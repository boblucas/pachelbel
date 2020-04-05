
soprviii = \relative c''
{
	\key f \major
	R1 | 
	s1 | 
	s1 | 
	r2 c4 c8 c |
	a d g, c f, bes a g |
	f e16  f g4 a d ~ |
	d8 c4 b8 c4 r |
	R1 |
	\oneVoice f4 f8 f e a d, g | \voiceOne
	c, f e d c4 d |
	c4. a8 g2 |
	a4 bes8 a16 g a8 f g4 |
	a d4. g,8 c4 ~ |
	c b c4. b8 |
	c a g f e c' d4 ~|
	d8 c c2  b4 |
	c2. bes4 ~ |
	bes a g2 |
	a4 bes8 a16 g a8 f g4 |
	a8 c, d4 e f ~ |
	f8 f e d e2 |
	f1 |
	\bar "|."
}

altoviii = \relative c'
{
	\showStaffSwitch
	R1 |
	\oneVoice r2 f4 f8 f |
	e a d, g c, f e d |
	\voiceTwo c f16 e d8 g16 f e8 f g e |
	f4 e d e |
	d4. e8 f2 |
	g4 f e8 c d4 |
	e \change Staff="down" \voiceOne d2 c4 ~|
	c b c4. b8 |
	\hideStaffSwitch
	c \change Staff="up" \voiceTwo a' g f e a bes4 ~ |
	bes8 a16 g a8 f4. e4 |
	f4. e8 f d e4 |
	f2 r |
	f4 f8 f e a d, g |
	c, f e d c e f4 |
	\showStaffSwitch
	\change Staff="down" \voiceOne e4. d16 c d2 |
	c4 f8 e d4 \change Staff="up" \voiceTwo g ~|
	g8 c, f2 e4 |
	f4. e8 f d e4 |
	f8 a, b4 c8 c bes a |
	g1 |
	c |
}

tenorviii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\key f \major
	\oneVoice c4 c8 c a d g, c |
	f, bes a g f g a b |
	c4 bes a8 f g4 |
	a b c2 |
	d8 bes c a bes g c4 ~|
	 \voiceOne c bes c a |
	e' d c8 a b4 |
	\voiceThree c a g2 |
	a8 g f4 g8 s4. |
	\voiceOne
	s1 |
	r2 c4 c8 c |
	a d g, c f, bes a g |
	\oneVoice f4. e16 d e4. d16 c |
	d2 c8 f g4 |
	a8 f g4 a g8\trill f |
	g4 a f g |
	a2 bes4. a16 g |
	\voiceOne a4. bes8 c2 |
	s1 |
	s1 |
	r2 r8 a bes4 |
	<f a>1 |
}

bassviii = \relative c
{
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 f4 f8 f |
	e a d, g c, f e d |
	c4 f e2 |
	d c8 f g4 |
	a8 f g4 a8 f e\trill d |
	e4 f c2 |
	f4 r2. |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 c4 c8 c |
	\oneVoice a d g, c f, bes a g |
	f f' e d c4 d |
	\voiceTwo bes g c2 |
	f,1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 8"
		\new Staff = "up" << { \soprviii } \\ {\altoviii} >>
		\new Staff = "down" << {\tenorviii } \\ {\bassviii} >>
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
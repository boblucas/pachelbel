soprii = \relative c''
{
	\key g \minor
	\oneVoice c8 d16 c b4 c16 b c d ees4 |
	\voiceOne d16 ees d ees c ees d c d4. c8 |
	bes4 d e8 fis g4 ~|
	g f4. g16 f ees f ees d |
	ees4 g ees c |
	d ees2 d4 |
	c4. d8 b4 c |
	bes a bes d |
	c bes c8 bes16 c a8 g16 a |
	bes2 a |
	g4 f ees g8 f |
	ees4 g f ees |
	f8 ees16 f d4 c2 |
	\oneVoice d4 r2. | \voiceOne
	s1 |	
	s1 |	
	s1 |	
	s1 |
	c'8 d16 c b4 c16 b c d ees4 |
	d16 ees d ees c ees d c d4 a |
	d8 ees16 d c8 d16 c bes4 a |
	bes r8 d c2 ~|
	c4 d c2 |
	bes4. g8 f2 |
	g4 r16 a r b r c r a r bes r c |
	r d r b r c r d ees4 d |
	ees c d ees |
	f8 ees16 f d8 g r16 ees r d r c r bes |
	a4. g8 a16 bes a g a d c d |
	bes4 a g2 |
	a4 bes c8 bes16 c a4 |
	b d, ees8 d16 ees f4 |
	g f ees16 d ees f ees g f16.\trill ees32 |
	d1 |
	\bar "|."
}

altoii = \relative c''
{
	\showStaffSwitch
	s1 | 
	r2 g8 a16 g fis4 |
	g16 fis g a bes4 a16 bes a bes g bes a g |
	a4. g16 a b4 g |
	c d c g8 a |
	b4 c f,8 g16 a bes4 ~ |
	bes8 a16 g a4 g2 ~|
	g4 d2 ~ d8 d |
	e fis g2 fis4 |
	g2 ~ g16 g f e f4 ~ |
	f8 ees4 d8 c4 s |
	s1 |
	s1 |
	s1 |
	\oneVoice r2 g'8 a16 g fis4 |
	g16 fis g a bes4 a16 bes a bes g bes a g |
	a2 bes8 d, ees16 f d ees |
	c ees d ees f c d ees d f ees f g d ees f |
	\voiceTwo ees4 f g2 ~|
	g fis |
	r g8 a16 g fis4 |
	g16 fis g a bes4 a16 bes a bes g bes a g |
	a4 bes2 aes4 ~ |
	aes g8 ees4. d4 |
	ees8 bes c d ees c d ees |
	f d ees f g2 ~|
	g4. a8 b4 c ~ |
	c b c8 bes a g |
	fis4 r16 d8. ~ d2 ~|
	d4. c8 bes4 d8 e |
	fis4 g2 fis8 e16 fis |
	g4 b, c d8 a |
	b g a b c2 |
	b1 |
}

tenorii = \relative c'
{
	\key g \minor
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice R1 | 
	R1 | 
	R1 | 
	R1 | 
	c8 d16 c b4 c16 b c d ees4 |
	d16 ees d ees c ees d c d4. ees8 |
	f2 ~ f8 ees d c |
	\voiceOne d4 r2. |
	s1 |
	\oneVoice g,4 bes8 c d4 ~ d16 d c d |
	\voiceOne b g c bes a g a b c4 \change Staff="up" \voiceTwo d |
	c4. g8 a b c4 ~ |
	c bes2 \change Staff="down" \voiceOne a4 |
	bes4 ~bes16 bes aes bes g8 a16 bes c4 ~|
	c8 a d8. c16 bes4 a |
	g2 fis4 g ~ |
	g fis g4. g8 |
	\oneVoice aes4 a bes b |
	c d ees c |
	bes ees d4. c8 |
	bes g a fis g4 d8 c |
	bes a g4 c ees ~ |
	ees16 g f ees d8 g ees c f ees16 f |
	d8 c16 d ees4 aes8 g16 aes bes8 bes, |
	ees4 r2. |
	r2 c'8 d16 c b4 |
	c16 b c d ees4 d16 ees d ees c ees d c |
	d4 g8 g, c2 ~ |
	c16 d a c bes8. bes16 fis8 e fis d |
	\voiceOne g4 r2. |
	s1 |
	s1 |
	s1 |
	s1 |
}

bassii = \relative c'
{
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	g8 a16 g fis4 g16 fis g a bes4 |
	a16 bes a bes g bes a g a2 |
	s1 |
	r2 c,8 d16 c b4 |
	c16 b c d ees4 d16 ees d ees c ees d c |
	d4. ees8 f c f8. ees16 |
	d8 bes c d ees4 ~ ees16 ees d c |
	f4. d8 g4 d8 c |
	bes a g4 d' ees |
	c d g,2 |
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
	s1 |
	s1 |
	g8 a16 g fis4 g16 fis g a bes4 |
	a16 bes a bes g bes a g a2 |
	g1 ~ |
	g ~ |
	g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 2"
		\new Staff = "up" << { \soprii } \\ {\altoii} >>
		\new Staff = "down" << {\tenorii } \\ {\bassii} >>
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

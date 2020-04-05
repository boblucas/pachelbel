
sopri = \relative c''
{
	\key g \minor
	c4 b c ees |
	d c d4. c8 |
	bes4 d8 e fis4 g ~ |
	g fis g f ~  |
	f8 f e d ees4 d |
	ees c b c ~ |
	c bes2 aes8 g |
	aes2 g4. a8 |
	bes c d c bes a g4 |
	a bes c bes8\trill a |
	bes4. c8 d8. c16 bes4 |
	a2 g ~| 
	g8 c16 d ees4 d8 g4 f8 |
	\oneVoice ees4. f8 g4. g,8 |
	aes f' ees d e8. d16 c4 ~|
	c bes a2 |
	\voiceOne g8 d d d ees4 e |
	f8 g16 a bes2 aes4 |
	g2. ~ g16 ees' d c |
	\oneVoice f a, bes c d d ees f ees g, a bes c c d ees |
	d d, e fis g g a bes c b c d c ees d c |
	b4 c d8 d,16 ees f ees f d |
	ees8. d16 c ees d c b8 g' fis8.\trill g16 |
	g1 |
	\bar "|."
}

altoi = \relative c''
{
	\showStaffSwitch
	s1 | 
	r2 g4 fis |
	g bes a g |
	a2 g4 a |
	b g c g ~|
	g2 f4 e |
	f2 g ~ |
	g4 f2 e4 |
	g a g2 |
	fis4 g2 fis4 |
	g8 d g4. d8 g4 ~|
	g f4. f8 e d |
	e4 g2 \change Staff = "down" \voiceOne d4 ~|
	d8 c16 b c4. g8 c4 ~|
	c b c8 g a16 bes e, g |
	fis8 d g2 fis4 |
	\hideStaffSwitch g2 \change Staff="up" \voiceTwo r8 c c c |
	d4. c16 d e4 f ~ |
	f8 f ees d ees d \change Staff = "down" \voiceOne c4 ~|
	c bes2 a4 ~|
	a g2 fis4 |
	g8 f e d16 c b8 c d b |	
	c d e f g4 a |
	b1 |
}

tenori = \relative c'
{
	\key g \minor
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass

	R1 |
	R1 |
	R1 |
	R1 |
	\oneVoice r2 c4 b |
	c ees d c |
	d2 e4 c |
	f8 ees d c b4 c |
	\voiceOne d1 |
	c4 d c2 |
	d4. a8 bes4. c8 |
	\oneVoice d4. c8 b4 g |
	\voiceOne c4 r2. |
}

bassi = \relative c'
{
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	g4 fis g bes |
	a g a2 |
	g4. r8 r2 |
	s1 |
	c,2 b |
	c ees |
	d c |
	d1 |
	s1 |
	\oneVoice r2 c2 |
	\voiceTwo c c |
	d c |
	bes a |
	g1 ~ |
	g ~ |
	g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 1"
		\new Staff = "up" << { \sopri } \\ {\altoi} >>
		\new Staff = "down" << {\tenori } \\ {\bassi} >>
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
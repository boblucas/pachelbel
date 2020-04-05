
soprV = \relative c''
{
	\key g \minor
	s1 | 
	s1 | 
	s1 | 
	d8. c16 b8. a16 g8. d'16 ees8. f16 |
	e4. d8 c4 bes |
	a d2 d4 ~ |
	d8 c g'4 c, d |
	ees d8 c b2 |
	ees4 e f8. c16 bes8. aes16 |
	bes8. c16 aes8. g16 aes4. bes8 |
	g bes c g a c d a |
	bes2 a4 d8. c16 |
	b4 r2. |
	r2 g8. f16 ees8. d16 |
	c8. g'16 aes8. bes16 aes2 ~ |
	aes8. aes16 g8. f16 g4 aes ~ |
	aes8 aes g a bes2 |
	\voiceThree
	<< { d8. c16 b8. a16 g8. d'16 ees8. f16 } \\ {  a,2 } >> 
	ees'8. e16 f8. g16 f8. f16 c8. d16 |
	ees8. ees16 d8. c16 b8 c d c16 b |
	c4 bes a d |
	b2 c8. ees16 d8. f16 |
	ees8. d16 c8. d16 b2 |
	c8. bes16 aes8. g16 aes8. bes16 c8. bes16 |
	aes2 g ~ |
	g1 |
	\bar "|."
}

altoV = \relative c'
{
	\showStaffSwitch
	\oneVoice d8. c16 b8. a16 g8. d'16 ees8. f16 |
	ees4 g8. f16 ees4 f8. g16  |
	f8. g16 c,8. d16 ees2 | \voiceTwo
	d1 |
	c8 c' bes4 a g |
	fis2 b4 b |
	g4. g8 a4 b |
	c8 g f ees d4 g ~|
	g2 f ~|
	f4 e f8 ees d4 |
	ees e f fis |
	g8 d g4 fis2 |
	g8. f16 g8. d16 c8. c16 g8. bes16 |
	a8. c16 d8. a16 b2 |
	c ~ c8. c16 d8. ees16 |
	d2 e4 f ~ |
	f8 f ees4 d g ~ |
	g fis g8. f16 \change Staff="down" \voiceOne ees8. d16 |
	\hideStaffSwitch c8. \change Staff="up" \voiceTwo g'16 aes8. bes16 aes2 |
	g8. g16 f8. ees16 d8 ees f ees16 d |
	ees8 c g'4 fis2 |
	g1 ~ |
	g2 d4 g8. f16 |
	e2 f4 g |
	r8 c, d8. c16 b4 c |
	d ees b2 |
}

bassV = \relative c'
{
	\key g \minor
	\clef bass
	R1
	g8. f16 e8. d16 c8. g'16 aes8. bes16 |
	aes2 g8. g16 c4 |
	b g b g |
	c r2. |
	d8. c16 b8. a16 g8. d'16 ees8. f16 |
	ees2. d4 |
	c r g8. f16 ees8. d16 |
	c8. g'16 aes8. bes16 aes2 |
	g4 c f, bes |
	ees,4 r2. |
	r2 d8. c16 b8. a16 |
	g8. d'16 ees8. f16 ees4 e |
	f fis g2 |
	e f |
	bes2. aes8 bes |
	c2 g8. a16 bes8. c16 |
	d2 b |
	c4 r2. |
	R1 |
	r2 d8. c16 b8. a16 |
	g8. d'16 ees8. f16 ees4 b |
	c ees g,8. f16 ees8. d16 |
	c8. g'16 aes8. bes16 aes4 e |
	f2 ~ f8. f16 ees8. c16 |
	b8 g c8. c,16 g'2 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 5"
		\new Staff = "up" << { \soprV } \\ {\altoV} >>
		\new Staff = "down" << {\bassV} >>
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

sopriii = \relative c''
{
	\oneVoice d4 b8 g c d16 e d8. c16 |
	\voiceOne b4 c a b |
	c a8 b c16 d c d b c b c |
	a4 b a2 |
	b4 c2 b4 |
	\oneVoice c8 g8. g16 f e f g e f d f e d |
	e f d e c d b c d'4 b8 g |
	\voiceOne c d16 e d8. c16 b4 c ~ |
	c b c2 |
	b a4 r |
	r2 g'4 e8 c |
	\oneVoice f g16 a g8. f16 e4 ~ e16 d c b |
	a4 ~ a16 a b c b4 ~ b16 c b c |
	\voiceOne a4 b a2 |
	b2 << {c4} \\ {e,16 g e g} >>
	c, c' g b |
	a4 b r16 c g c r d d, g |
	e g a b c4 b16 c b c a b a g |
	a4 b a2 |
	g a4 d, |
	e f g2 |
	e16 g e g d g d g r g a b c4 ~ |
	c r16 c r c r b r c r b r a |
	r g r a r g r fis g2 |
	\bar "|."
}

altoiii = \relative c''
{
	\showStaffSwitch
	s1 |
	g4 e8 c f g16 a g8. f16 |
	e4 c8 d e fis g4 |
	fis g2 fis4 |
	g4. e8 d2 |
	s1 |
	s1 |
	r2 g4 e8 c |
	f g16 a g8. f16 e4 a ~ |
	a g fis g |
	a2 d,4 r |
	s1 |
	s1 |
	\voiceThree fis4 g2 fis4 |
	g2 s2 |
	\hideStaffSwitch
	\change Staff="down" \voiceOne f,16 \change Staff="up" \voiceTwo f' c f d g d g e4 b |
	c4 ~ c16 d e f g4 fis8 e |
	fis4 g2 fis4 |
	\voiceThree g8 d e4 d2 |
	c \voiceTwo d4 b |
	c16 s4.. e2 ~ |
	e4 e8 e d e d c |
	b c b a b2 |
}

tenoriii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice R1 |
	R1 |
	R1 |
	d4 b8 g c d16 e d8. c16 |
	\voiceOne b4 g a r |
	r4 c2 b4 |
	c8 b a g <fis a>4 g ~ |
	g fis g2 |
	s1 |
	r2 d'4 b8 g |
	c d16 e d8. c16 b4 c ~ |
	c b c2 ~ |
	c16 c b a d4. d8 e4 |
	\change Staff="up" \voiceTwo d2 e4 d ~ |
	\hideStaffSwitch
	d2 s | \change Staff ="down" \voiceOne
	s1 |
	s1 |
	\oneVoice d4 b8 g c d16 e d8. c16 |
	\change Staff="up" \voiceTwo b4 c2 b4 |
	c2 s |
}

bassiii = \relative c'
{
	s1*4 |
	g4 e8 c f g16 a g8. f16 |
	e2 d c d4 e |
	a,2 g4 c |
	d2 c4. d8 |
	e d16 c b8 c d4 g ~ |
	g fis g a |
	d,2 c8 d e4 |
	f2 g |
	\oneVoice d4 b8 g c d16 e d8. c16 |
	b16 g' d g g, g' d g c,4 e |
	R1 |
	R1 |
	s1 |
	\oneVoice g,4 e8 c f g16 a g8. f16 |
	e8 e' d c b16 g' d g g, g' d g |
	c,4 b c ~ c16 e d\trill c |
	g'2 g, ~|
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 3"
		\new Staff = "up" << { \sopriii } \\ {\altoiii} >>
		\new Staff = "down" << {\tenoriii } \\ {\bassiii} >>
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
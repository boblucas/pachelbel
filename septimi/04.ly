
sopriv = \relative c''
{
	\key g \minor
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	d4. c8 b4 bes8 c16 d |
	f,4 fis g8 fis g a b8 g c2 b4 |
	c2 d |
	g,4 c2 bes4 ~|
	bes8 bes a g fis4 g ~ |
	g fis g2 |
	\oneVoice R1 |
	s1 |
	s1 |
	g'4. f8 e4 ees8 f16 g |
	bes,4 b c8 b c d |
	ees c g'2 fis4 |
	g8 d ees d c4 bes8 c16 bes |
	a2 g |
	a8 d, d' c b a b c |
	d ees16 f ees4 d2 |
	c \voiceOne d |
	g,4 c2 bes4 | \oneVoice
	a2 g4. c8 |
	d16. d32 ees16. f32 ees8.\trill d16 ees4 d |
	c8 d16 c b a g8 c16 c d ees d8.\trill c16 |
	b1 |
	\bar "|."
}

altoiv = \relative c'
{
	\showStaffSwitch
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
	d4. c8 b4 bes8 c16 d |
	\change Staff = "down" \voiceOne
	f,4 fis g8 fis g a |
	b g \change Staff = "up" \oneVoice d'4. c8 g'4 ~|
	g8 f ees d ees2 |
	\change Staff="down" \voiceOne d c4 g' |
	f2 g |
	s1 |
	s1 |
	d4. c8 b4 bes8 c16 d |
	\change Staff = "down" \voiceOne
	f,4 fis g8 fis g a |
	b8 g c2 b4 |
	c2  \change Staff = "up" \voiceTwo  g'4. f8 |
	e4 ees8 f16 g \change Staff = "down" \voiceOne c,4 d |
	c8. b32 c d8 c b g c4 ~ |
	c b c8 g4 f8 |
	ees f g2 fis4 |
	g1 |
}

tenoriv = \relative c''
{
	\key g \minor
	\clef bass
	\showStaffSwitch
	\change Staff = "up"
	\voiceTwo
	R1 |
	R1 |
	\oneVoice r2 g4. f8 |
	e4 ees8 f16 g bes,4 b |
	c8 b c d ees c g'4 |
	\voiceTwo a8 g fis4 g d ~ |
	d8 ees d c b a b c |
	d ees16 f ees8 d16 c d2 |
	g2 ~ g8 aes g f |
	ees2. d4 ~|
	d8 d c4. bes8 a g |
	\change Staff="down" \voiceOne a2 g |
}

bassiv = \relative c'
{
	\oneVoice d4. c8 b4 bes8 c16 d |
	f,4 fis g8 fis g a |
	b g c2 bes4 |
	c g4. aes8 g f |
	ees d ees b c4 ~ c16 bes' a g |
	fis8 e d4 g2 |
	d g |
	r g4. f8 |
	e4 ees8 f16 g bes,4 b |
	c8 b c d ees c g' g, |
	c2 d ~ |
	\voiceTwo d g, |
	d'8 ees d c  bes c bes a |
	g4. g'16 f ees4. d16 c |
	d4 g4. c,8 c'4 ~ |
	c b c2 |
	d ees8 d ees b |
	c4. bes8 a d, d'8.\trill c16 |
	b4 c8 bes a e16 fis g4 ~ |
	g fis g2 |
	s1 |
	r2 g4. f8 |
	e4 ees8 f16 g bes,4 b |
	c8 b c d ees c g'4 ~ |
	g f2 ees4 |
	d2 c4 b |
	c g aes a |
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 4"
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
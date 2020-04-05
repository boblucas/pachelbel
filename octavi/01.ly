
sopri = \relative c''
{
	\time 6/8
	R2. |
	R2. |
	s2.*4 |
	d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g4. ~ g4 c8 |
	b4. c |
	d c4 d8 |
	e4 d8 c4 b8 |
	a4. r |
	\oneVoice R2. |
	g'4 f8 e4 a8 |
	g4 f8 e4 d8 |
	c4. b4 c8 |
	\voiceOne d d, g4 e8 a |
	fis4. g |
	a b4 c8 |
	<d b>4. c |
	s2.
	s2.
	s2.
	\oneVoice d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g4. a |
	\voiceOne b2 g8 c |
	b4. c |
	b c4 d8 |
	e4. r8 d4 |
	c8 d c b c b |
	a b a g a g |
	fis4. r |
	R2. |
	g4 f8 e4 a8 |
	g4 f8 e4 d8 |
	c4 b'2\rest |
	\oneVoice c8 d c b c b |
	a2. |
	r4 d8 c d c|
	b c b a4. |
	g4 g'8 f g f |
	\voiceOne e4. d |
	c b ~|
	b a |
	r8 d, g r c, fis |
	g2. |
	\bar "|."
}

altoi = \relative c''
{
	\showStaffSwitch
	R2. |
	R2. |
	\oneVoice g4 f8 e4 a8 |
	g4 f8 e4 d8 |
	c f e d4. |
	e4 fis8 g e a |
	\voiceTwo
	fis4. g4 g8 |
	fis4. g4 f8 ~|
	f4. e |
	g4. ~ g4 e8 |
	g2 a8 b |
	c4 b8 a4 g8 |
	fis4. r |
	s2.*20 |
	d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g a b c4 c8 |
	d4. c4 b8 |
	c d c \change Staff = "down" \voiceOne b c b |
	a4. g |
	fis4 d'8 c d c |
	b4. a |
	g fis |
	\hideStaffSwitch
	g2. |
	\change Staff = "up" \voiceTwo
	r4 g'8 f g f |
	e f e d e d c d c4 d8 c |
	b4. a |
	<b d>2.
}

tenori = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g4. c8 b a |
	b c d g, c b |
	a4. b8 a b |
	c2. |
	d4. e4 c8 |
	d4. g,4 d'8 |
	b a b c4. |
	\voiceOne d c |
	b c4 r8 |
	s2. |
	d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g a b c4. |
	b8 c d c4 b8 ~|
	b4 a8 g4 a8 |
	b4. \change Staff = "up" \voiceTwo c |
	d ~ d4 e8 |
	f4. g4 a8 |
	g4 f8 e4 a8 |
	\oneVoice g4 f8 e4 d8 |
	c4. d |
	e4 \change Staff = "down" \voiceOne d8 c d b |
	a4. g |
	fis8 g a g4 f8 |
	r8 g c4 a8 d ~ |
	d c b \change Staff = "up" \voiceTwo e4. |
	d g4 fis8 |
	g2 a8 b |
	c g c b4 f8 |
	e f e d e d c d c b c b |
	a4. s |
}

bassi = \relative c'
{
	s2.*9 |
	g4 f8 e4 a8 |
	g4 f8 e4 d8 |
	c2. d4. g4 c8 |
	b4 a8 g4 f8 |
	e4 d8 c4 f8 |
	g4. c,4 d8 |
	e4 fis8 g4 r8 |
	s2. |
	\oneVoice d4 c8 b4 e8 |
	d4 c8 b4 a8 |
	g4. c |
	b8 c d c c' b |
	a e a f d g |
	\voiceTwo c, c' b a4 g8 |
	fis4. g4 c,8 |
	d4. g,4 d'8 |
	e4. f |
	g2. ~ |
	\oneVoice
	<g g,>4 f,8 e4 a8 |
	g4 f8 e4 d8 |
	c2. ~ |
	c2. ~ |
	c2. |
	\oneVoice d4. g4 g'8 |
	fis g a d, g fis |
	e4 d8 c4 a8 |
	b c d e f g |
	\voiceTwo
	e4. d |
	c2. |
	d ~ |
	d ~ |
	d |
	b |
	\oneVoice
	c ~ |
	c4. d |
	e fis|
	g2. |
	g,2. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 1"
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
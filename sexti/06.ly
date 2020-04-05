
soprvi = \relative c'
{
	\key f \major
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	f8 f f f \oneVoice c'4 r8 c |
	d d d c16 bes c8 c c bes16 a |
	bes4 c f,2 |
	e8 f16 g f8.\trill e16 \voiceOne f4 ~ f16 f g e |
	a8 b c2 b4 |
	c4 ~ c16 d c bes a4 ~ a16 g a bes |
	g2 a4 f'|
	e4. a8 d,4. g8 |
	f16 g f g f g f g e8 d c4 ~|
	c b c2 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	c8 c c c \oneVoice f4 r8 f |
	a a a g16 f g8 g g f16 e |
	f4 g \voiceOne c,4. d16 c |
	b4 c2 b4 |
	c2. bes4 ~|
	bes a g2 |
	f4. bes8 g4. a8 |
	g2 a4 ~ a16 g a bes |
	c4. c8 d8. e16 f8 f, |
	g8. g16 a8. bes16 c8 bes bes8.\trill a16 |
	a1 |
	\bar "|."
}

altovi = \relative c'
{
	\showStaffSwitch
	R1 |
	R1 |
	\oneVoice r2 c8 c c c |
	f4 r8 f a a a g16 f |
	g8 g g f16 e f4 g |
	c, f2 e4 |
	f8 c f4 e4. f8 |
	d4 e d2 |
	e d |
	c bes \voiceTwo
	a \change Staff="down" \voiceOne g4. a8 |
	bes2 a |
	g a |
	g4 a4. \change Staff="up" \voiceTwo d8 e c |
	f4. e8 d g, g'8. f16 |
	e8 f16 g a8 g f c f4 ~|
	f e f a |
	c4. c8 b4. e8 |
	d4 d c g |
	d2 e8 g a4 ~ |
	\voiceOne a8 g16 a bes4. bes8 a g |
	a2 g4 a ~ |
	a bes2 a4 |
	g2 a4. g8 |
	f g f e d4 g8 f |
	\voiceTwo e2 \change Staff="down" \voiceOne c4 d |
	c f2 e4 |
	d2 e4 \change Staff="up" \voiceTwo f ~|
	f8 e e d16 c d2 |
	e8 f g f16 e d2 |
	c1 |
	a4. d8 c4. c8 |
	d4 c2. |
	g'2 f |
	e4 f2 e4 |
	f1 |
}

tenorvi = \relative c
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\key f \major
	\oneVoice f8 f f f c'4 r8 c |
	d d d c16 bes c8 c c bes16 a |
	bes4 c f,8.g16 a g f e |
	d4 d' c8 f, f'4 |
	bes,8 g c4 a8 g16 a bes4 ~| \voiceOne
	bes8 a a g16 f g2 |
	a4 d c4. d8 b4. c b4 |
	c2. bes4 ~ |
	bes8 a16 g a4 g2 |
	f s |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\oneVoice c8 c c c f4 r8 f |
	a a a g16 f g8 g g f16 e |
	f4 g c,8 d e d16 e |
	f8 e16 f g8 g, c4. c'8 |
	\change Staff="up" \voiceTwo d4. c16 d e4 c |
	f8 c f2 e4 |
	f4. g8 e4 f ~|
	f e f c |
	d4. c8 \change Staff="down" \voiceOne b2 |
	c4. \voiceTwo bes8  a4 bes |
	f2 c' ~|
	c4 bes2 a4 |
	\oneVoice g1 |
	c,8 d e f g f16 e d8 e | \voiceOne
	f c f2 e4 |
	f4. g8 e4. f8 ~|
	f4 e f2 |
	r8 g c2 bes4 ~|
	bes a g2\trill |
	f1 |
}

bassvi = \relative c
{
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r2 c8 c c c |
	f4 r8 f a a a g16 f |
	g8 g g f16 e f4 g |
	c,8 d e f g f16 e d8 e |
	f4. a,8 bes g c c, |
	f4 f'2 e4 |
	d g4. c,8 f4 ~ |
	f e4. a,8 d4 ~|
	d cis d r |
	\oneVoice R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	f8 f f f c'4 r8 c |
	d d d c16 bes c8 c c bes16 a |
	bes4 c f,2 ~|
	f4 d \voiceTwo g8 f e d |
	c4 s2. |
	s1 |
	s1 |
	s1 |
	s |
	f,8 f f f c'4 r8 c |
	d d d c16 bes c8 c c bes16 a |
	bes4 c f, f' |
	e2 d |
	c1 |
	f,1|
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 6"
		\new Staff = "up" << { \soprvi } \\ {\altovi} >>
		\new Staff = "down" << {\tenorvi } \\ {\bassvi} >>
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
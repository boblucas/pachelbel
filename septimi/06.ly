
soprvi = \relative c''
{
	\key g \minor
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	g4 c, g'8 fis16 g a8 g16 a |
	bes2 a8 bes16 c bes8. a16 |
	g4 a b c |
	bes c f, bes ~ |
	bes aes g2 |
	f ees4 s |
	r2 c'4 g |
	c8 b16 c d8 c16 d ees2 ~ |
	ees4 c d g |
	fis f4. f8 ees d |
	ees4 d ees f ~ |
	f ees4. d4 c8 ~|
	c c bes a bes4 a |
	bes c d8 c bes4 |
	a2 g4 f8 ees16 d |
	ees4 r8 g ees4 f8 aes |
	g fis16 g a8 g16 a bes2 |
	aes8 bes16 aes g8 f g4 c |
	b c bes a ~ |
	a g4. g8 fis4 |
	g b8 g a g16 a b8 a16 b |
	c4. b8 c4 bes8 aes |
	g4 bes c8 b16 c d8 c16 d |
	ees4. d16 c d8 c16 d ees8 d16 ees |
	f4 d ees8 d16 ees f8 ees16 f |
	g4 f2. |
	ees2 ees ~ |
	ees4 ees d4.\trill c8 |
	d1 |
	\bar "|."
}

altovi = \relative c'
{
	\showStaffSwitch
	\oneVoice c4 g c8 b16 c d8 c16 d |
	ees2. c4 |
	d g4. f8 ees d |
	ees4 d ees f ~ |
	f ees4. d16 c d4 |
	\voiceTwo c2 r |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 g'4 c, |
	g'8 fis16 g a8 g16 a bes4. a16 g |
	a4 d g,2 ~ |
	g8 c b4 c bes8 aes |
	g2 f4 ees |
	d2 ~ d8 g fis4 |
	g f8 ees d4 g ~ |
	g fis g r |
	c, g c8 b16 c d8 c16 d |
	ees4 c d8 c16 d e8 d16 ees |
	f4 ees8 d ees f16 ees d8 c |
	d4 ees d c |
	r8 d4. c c8 |
	b4 d8 b c4 d |
	ees d ees f ~ |
	f8 ees g4 a b |
	c a b c |
	d bes c d |
	ees2. d4 ~ |
	d8 d c b c2 ~ |
	c4 c b4. a8 |
	b1 |
}

tenorvi = \relative c'
{
	\key g \minor
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice R1 | 
	g4 c, g'8 fis16 g a8 g16 a |
	bes4. a16 g a4 \change Staff="up" \voiceTwo b |
	c b c bes8 a |
	\change Staff="down" \voiceOne g4 c2 b4 |
	c2 bes4 fis |
	g bes8 g \change Staff="up" \voiceTwo  c4 d |
	ees8 f16 ees d8 c d4 ees |
	d8 g f ees d4 g ~ |
	g8 c, f4. ees16 d ees4 ~ |
	ees d ees \oneVoice c |
	d8 c16 d \change Staff="down" \voiceOne b8 a16 b c4. bes8 |
	a4 b c2
	\oneVoice R1 |
	R1 |
	c4 g c8 b16 c d8 c16 d |
	ees8 d c bes a bes16 a g8 a16 g |
	\voiceOne fis4 d g r |
}

bassvi = \relative c
{
	s1 | 
	s1 | 
	s1 | 
	\oneVoice c4 g c8 b16 c d8 c16 d |
	\voiceTwo ees4. d16 c g'4. f8 |
	ees2. d4 |
	g, r2. |
	\oneVoice r2 g'4 c, |
	g'8 fis16 g a8 g16 a bes4 aes8 g |
	aes4. bes8 c4 g8 aes |
	bes4 f8 bes16 aes g8 ees aes g |
	\voiceTwo f d g f ees2 ~ |
	ees4 d c2 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 g4 d |
	\oneVoice g8 fis16 g a8 g16 a bes4. c8 |
	d8 a d c b g a b |
	c4 r2. |
	R1 |
	R1 |
	g'4 c, g'8 fis16 g a8 g16 a |
	bes4. a16 g a2 |
	g r |
	c,4 g c8 b16 c d8 c16 d |
	ees2. d4 |
	c f2 ees4 |
	d g2 f4 |
	ees g, a8 g16 a b8 a16 b |
	c4. d8 ees4 f8.\trill  e32 f |
	g1 |
	g, | 
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 6"
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
			%\Score
			%\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
		}
	}
	\midi {\tempo 4=100}
}
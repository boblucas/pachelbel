soprvii = \relative c'
{
        \oneVoice
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	r2 d4 d |
	ees r \voiceOne e e |
	f r fis fis |
	\oneVoice g a d, bes' |
	a8 g fis e16 f g2 |
	R1 |\voiceOne
	s1 |
	s1 |
	s1 |
	s2 d'4 d |
	ees r e e |
	f r fis fis |
	g a d, bes' |
	a8 g fis e16 f g4 d8 ees |
	f g16 f ees8 d ees2 |
	d c ~ |
	c8 c f ees d2 ~ |
	d8 d g f ees ees d8. c16 |
	b4 c d2 |
	g,4. a8 bes2 |
	a g ~ |
	\oneVoice g8 g c bes a2 ~ |
	a8 a d c bes bes a8. g16 |
	\voiceOne fis4 g a2 |
	b4 c d2 |
	g, c |
	b4 g8 f ees f16 ees d8 c |
	d4 r2.
	s1
	\bar "|."
}

altovii = \relative c'
{
	\showStaffSwitch

	\key g \minor
	\oneVoice
	\change Staff="down" g4 g aes r |
	a a bes r |
	b b c d |
	\voiceOne g, ees' d8 c b a16 b |
	c4 g4. g8 c bes |
	a4 c d8 a d c |
	bes4 c d4. d8 |
	c4 a bes b |
	c8 g c2 b4 |
	c4. g8 \change Staff="up" \voiceTwo c d c bes |
	a2 d8 ees d c |
	\change Staff="down" \voiceOne bes4 a bes8 c d4 ~ |
	d c d4. c16 d |
	ees4 f2 \change Staff="up" \voiceOne  ees4 |
	d g4. g8 f ees |
	f2 ~ f8 f g aes |
	g2. fis4 |
         g2 \voiceTwo f4 g ~|
	g8 g a b c g c bes |
	a4 d,4. a'8 d c |
	bes4 c4. bes8 a g |
	fis g a4 bes2 |
	a4 b c8 g c4 ~ |
	c b c c, |
	f2 ~ f8 f bes aes |
	g2. fis4 |
	g2 f ~ |
	f8 ees16 d ees4 d g ~ |
	g fis g2 |
}

tenorvii = \relative c
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\key g \minor
	s1 |
	s1 |
	s1 |
	\voiceTwo r2 d4 d |
	ees r e e |
	f4 r fis fis |
	g a d, bes' |
	a8 g fis8 e16 fis g4 d |
	ees4. d16 ees f8 d g f |
	ees8 d c2 \oneVoice c4 |
	f8 g f ees d2 |
	g4 fis g2 |
	fis4 a bes b |
	c4 a8 d16 c b8 g \change Staff="up" \voiceTwo  c4 ~ |
	c b c2 ~ |
	c8 c d ees d2 ~ |
	d8 d ees f ees4 a, |
	b \change Staff="down" \voiceOne c d g, ~ |
	g2 r |
	\oneVoice R1 |
	R1 |
	R1 |
	R1 |
	g4 g aes r |
	a a bes r |
	b b c d |
	g, ees' d8 c b a16 b |
	c2 g8 a bes c |
	\voiceOne d4. c8 bes g a bes |
	c2 ~ c8 c bes a |
	d2. c4 |
	\change Staff="up" \voiceTwo d2 c4 d ~ |
	d g f2 ~ |
	f4 ees2 d4 ~ |
	d b c a |
	b b c b8 a |
	b1 |
}

bassvii = \relative c
{
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	\oneVoice g4 g aes r |
	a a bes r |
	b b c d |
	\voiceTwo g, ees' d8 c b a16 b |
	c2 r |
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	d4 d ees r |
	e e f r |
	fis fis g a |
	\oneVoice d, bes' a8 g fis e16 fis |
	g4 ees d8 c b a16 b |
	c4. bes8 a g fis e16 fis |
	g1 ~ |
	g ~ |
	g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 7"
		\new Staff = "up" << { \soprvii } \\ {\altovii} >>
		\new Staff = "down" << {\tenorvii } \\ {\bassvii} >>
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
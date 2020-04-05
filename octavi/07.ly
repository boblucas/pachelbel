
soprivii = \relative c'''
{
	s1*14 |
	\oneVoice
	a8 b fis g a16 b a b e, fis e fis |
	g a g a d, e d e fis g fis g fis a g fis |
	g a g a f e f g e4 \voiceOne a,8 b16 c |
	d4 c8 d16 c b2 |
	a g4 b |
	d2 ~ d8 c16 b c4 ~ |
	c b2 a4 ~|
	a gis r8 a a8. g16 |
	fis2 g8. fis16 e8 a ~|
	a g16 fis g2 fis4 |
	e g fis2 |
	e d4 ~ d16 d g fis |
	e4 ~ e16 e fis g \oneVoice  fis4 ~ fis16 fis g a |
	g32 g a b c d e fis g8 e d16 e d e d e d e |
	d c d e d8.\trill c16 b2 |
	\bar "|."
}

soprvii = \relative c''
{
	\key g \major
	\oneVoice d8 e b c d16 e d e a, b a b | \voiceOne
	c d c d g, a g a b8. c16 d4 |
	cis c b b8 b |
	a b c d16 c b8 e d cis |
	d16 c b c d8 e a,4. a8 |
	g a b8. c16 d4 e ~|
	e16 [a, d8.] e16 d cis d8 b c16 b a c |
	b8. c16 d4. d8 c4 ~|
	c b a g |
	fis e d r |
	\oneVoice d'8 e b c d16 e d e a, b a b |
	c d c d g, a g a b c b c b c b a |
	gis b a gis a b c a d e d c b c a b |
	c8. d16 c d c b a b c b a g fis e |
	\showStaffSwitch
	\change Staff="down" \voiceOne fis2 e |
	d c |
	b8 c d b c d16 e \change Staff="up" \voiceTwo f8 e |
	d16 e f g a4. g16 fis g4 ~ |
	g fis e g ~ |
	g2 e |
	d c |
	b8 e e8. d16 cis2 |
	r8 d d8. c16 b8 g c b16 a |
	b2 a |
	g4 e'2 d4 ~ |
	d c ~ c16 c b a b4 ~|
	b16 b a g \change Staff="down" \voiceOne a4 ~ a16 a g fis b4 ~ |
	b4. c b4 |
	a2 g |
}

altovii = \relative c''
{
	\showStaffSwitch
	\voiceTwo
	s1 |
	r2 g8 b fis g |
	a16 b a b e, fis e fis g a g a d, e d e |
	fis8 e16 d e8 fis g fis16 e fis8 e |
	fis g g2 fis4 |
	e d4. g8. g16 fis e |
	fis4 g fis8 g a fis |
	g4 a8 b e,4. e8 |
	d2 ~ d8 a b16 cis b cis |
	d4. cis8 d8. d16 c b c d |
	\change Staff = "down" \voiceOne
	b2 a |
	g fis |
	e fis4 gis |
	a8 e a b c a b cis |
	\voiceTwo
	d2. c4 ~|
	c b a d, |
	g2 r |
	\oneVoice
	r d'8 e b c |
	d16 e d e a, b a b c d c d g, a g a |
	b8 g16 a b c d b g8 a e f |
	g16 a g a d, e d e f g f g c, d c d |
	e2 a
	
}

tenorvii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice R1 |
	R1 |
	R1 |
	R1 |
	d8 e b c d16 e d e a, b a b |
	c d c d g, a g a b4 cis |
	d e d8 e c d ~ |
	\voiceOne d4 s2.

}

bassvii = \relative c'
{
	\key g \major
	s1*7 |
	g8 b fis g a16 b a b e, fis e fis |
	g a g a d, e d e fis4 e |
	d8 fis g16 e a g fis e d8 e fis |
	g2. fis4 ~|
	fis e2 d4 ~|
	d c b e |
	a, r2. |
	s1*5 |
	s2 s2 |
	s1 |
	s1 |
	\oneVoice  R1 |
	d8 e b c d16 e d e a, b a b |
	c d c d g, a g a b8 b' fis16 g fis g |
	a b a b e, fis e fis g2 |
	\voiceTwo c,4. cis8 d4. d8 |
	e2 fis4 g ~|
	\voiceFour
	g fis g,2 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 7"
		\new Staff = "up" << { \soprvii } \\ { \soprivii } \\ {\altovii} >>
		\new Staff = "down" << {\tenorvii } \\ {\bassvii} \\ {s1*28 \voiceTwo d2 s} >>
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

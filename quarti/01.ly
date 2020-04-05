
sopri = \relative c''
{
        \stemNeutral
	b2 e4. e8 |
	d d d c16 b c8 c c b16 a |
	\stemUp
	b2 c8 b c d16 c |
	b4 e a, d ~ |
	d8 c b a b e d e |
	c4. d16 c b4 e ~ |
	e d2 c4 ~|
	c b2 a4 ~ |
	a gis a2 |
	b a |
	g8 f e4 d2 |
	c e' |
	\stemNeutral
	a4. a8 g g g f16 e |
	f8 f f e16 d e8 d c4 |
	\stemUp
	b4. a8 g4 c ~ |
	c b2 a4 ~|
	a8 g f e f g16 f e8 d |
	c d e fis gis a4 gis8 |
	a4. b16 c b4. a16 g |
	a4. g16 f g8 f16 g e8 d16 e |
	f8 e16 f d8 c16 d e8 f g a16 b |
	c8 b a b g4 fis |
	g2 fis |
	e4 a2 gis4 |
	a2 b |
	a gis4 a |
	\stemNeutral
	b8 d d c16 b c8. c16 b8 a |
	b1 |
	\bar "|."
}

altoi = \relative c'
{
	\showStaffSwitch
	s1 | 
	s1 | 
	r4 e a4. a8 |
	g g g f16 e f8 f f e16 d |
	e4 fis gis fis8 gis |
	a e a4. g8 fis e |
	fis2 g |
	f e |
	d4 e2 f4 ~ |
	f e2 d4 ~ |
	d c2 b4 |
	c2 r |
	s1 | 
	s1 | 
	r4 \change Staff="down" \voiceThree b \voiceOne \stemNeutral e4. e8 |
	d d d c16 b c8 c c b16 a |
	b4 cis d c8 b |
	\voiceOne a b c b16 a b8 c b4 |
	\change Staff="up" \voiceTwo
	c8 d16 e f2 e4 ~|
	e d2 c4 ~ |
	c b c8 d e4 |
	e2. dis4 |
	e2 r |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
}

tenori = \relative c'
{
	\showStaffSwitch
	\clef bass
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	\stemNeutral
	b2 e4. e8 |
	d d d c16 b c8 c c b16 a |
	\stemUp
	b2 c |
	d4 b c a |
	s1 | 
	s1 |
	c4 d2 c4 ~|
	c b2 a4 |
	g2 s |
	s1 |
	s1 |
	\voiceTwo
	r2 e |
	\voiceOne \stemNeutral
	a4. a8 g g g f16 e |
	f8 f f e16 d e4 a |
	d, g c, c' |
	\stemUp
	a c b2 ~|
	b4 c2 b4 ~|
	b a \change Staff ="up" \voiceTwo d8 d d c16 b |
	c4 f2 e4 ~|
	e d4. \change Staff="down" \voiceOne c8 c b16 a |
	gis8 b b a16 gis a8. a16 gis8 fis |
	gis1 |
}

bassi = \relative c
{
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	r4 e4 a4. a8 |
	g8 g g f16 e f8 f f e16 d |
	e8 f16 g a8 g f e16 f g8 g, |
	c4 c'8 b c4 b |
	a8 g f4 e a |
	d, g c,4. d8 |
	e2 s |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 b |
	e4. e8 d d d c16 b |
	c8 c c b16 a b4 e |
	a,8 a' a g16 f g8 g g f16 e |
	f8 f f e16 d e2 ~|
	e1 ~ |
	e1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 1"
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
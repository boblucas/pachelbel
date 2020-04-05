
sopriii = \relative c''
{
	b2 c8 b16 a g8 a |
	b e, e' fis g g, c b |
	a b c b16 a gis8 a16 b c8 d |
	e16 f d e c e d c d e c d b d c b |
	c b c d b c b c a g a b g a g a |
	fis8 g16 a b c b a g8 a b c |
	fis,8 g b c r16 d c b a8 b |
	c2 b |
	s1 |
	s1 |
	r4 e f8 e16 d c8 d |
	e a, a'2 gis4 |
	a e8 fis g2 |
	f16 e f g f a g f e8 f16 e d4 |
	e8 f16 e d e d c b8 c16 d e f e d |
	c8 d e d16 c b8 c c <d b> |
	<e c>4 <d b> <c a> <b g> |
	b2 <g e>8 <a fis> b c |
	b4 b8 c d c16 b <a fis>8 <b gis> |
	c8. d16 e4 ~ e16 f d e c d b c |
	a b a gis a4. a8 gis8.\trill fis16 |
	gis1 |
	\bar "|."
}

altoiii = \relative c'
{
	
	s1 | 
	a2\rest e' |
	f8 e16 d c8 d e a, a' b |
	\showStaffSwitch
	c b a4 b8 a gis4 |
	a16 g a b g a g a fis e fis g e fis e fis |
	dis8 e4 dis8 e2 |
	dis8 e g a r16 b16 a g fis8 gis |
	a e a2 gis4 |
	\voiceOne
	a8 b c b16 a gis8 a e f |
	g f16 e d8 e f2 |
	\voiceTwo
	e \change Staff="down" \stemUp d4 \stemDown s | \hideStaffSwitch \change Staff="up"
	r2. b'4 |
	c8 b16 a g8 a b e, e'4|
	a, b c4. b8 |
	c4 b8 a gis a4 gis8 |
	a b c b16 a gis8 a s4 |
	s1 |
	\voiceThree
	\mergeDifferentlyHeadedOn
        fis8 g fis4 % e8 fis
        s4 g4 |
	s4 g2 s4 |
	a4 \voiceTwo b a2 |
	e1 ~|
	e1 |
}

tenoriii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass

	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	\stemNeutral
	b2 c8 b16 a g8 a |
	b e, r16 e' d c b8 c r16 d c b |
	\stemUp
	a8. b16 c8 d e b e d |
	\change Staff="up" \voiceTwo
	c d e d16 c b8 c4 d8 |
	e d16 c b8 cis d a \change Staff="down" \voiceOne d4 ~|
	d cis d a8 b |
	c2 b |
	a4 d,2.\rest |
	R1 |
	d2.\rest \stemNeutral e'4 |
	f8 e16 d c8 d e a, \change Staff="up" \voiceTwo a'8 g16 f |
	\hideStaffSwitch
	e c e f g \change Staff="down" \stemNeutral g, b g a b c d e b e8 |
	\showStaffSwitch
	\change Staff="up" \voiceTwo
	\mergeDifferentlyHeadedOn
	dis8 e4 dis8 e2 |
	<dis fis>8 <e g> e4 d2 |
	e \change Staff="down" \voiceOne c8 d e d |
	c b c16 d c4 c8 b8. a16 |
	b1 |
}

bassiii = \relative c
{
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	r2 e |
	f8 e16 d c8 d e a, a'g16 f |
	e8 f g f16 e d8. e16 f8 d |
	g4 a d, f |
	c f8 e d4 e |
	a, s2. |
	R1 |
	s1 |
	s1 |
	s1 |
	\stemNeutral
	b2 c8 b16 a g8 a |
	b e, r16 e' d c b8 c d c16 b |
	\stemDown
	a8 a' gis e a2 ~|
	a e ~|
	e1|
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 3"
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
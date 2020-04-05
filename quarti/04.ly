
sopriv = \relative c''
{
	R1 |
	s1 |
	s1 |
	s1 |
	\stemNeutral
	e16 e e e e e e e f e d f e d c e |
	d c b d c b a b gis a b c b b c d |
	\stemUp
	e4 ~ e16 e d c b[ c d8.] e16 d c |
	b8. b16 a8. a16 g4 fis |
	e8 c'4 b a g8 |
	fis16 b a b fis a gis fis gis2 |
	\stemNeutral
	a16 c b d c[ d e8.] e16 d c d e d c |
	b g a b c d e f g g, c d b8.\trill c16 |
	\stemUp
	c4 b8 c4 b a8 ~ |
	
	a gis a4 b2\rest |
	R1 |
	b16 b b b b b b b c b a c b a g b |
	a g fis a g fis e fis dis e dis e fis g a b |
	g fis e g fis e dis fis e8. d16 c4 |
	\stemNeutral
	e'16 e e e  e e e e  f e d f e d c e |
	d c b d c b a b gis a gis a b c d b |
	\stemUp
	c d c d e fis e fis g4 ~ g16 g fis e |
	dis8 e16 fis e2 dis4 |
	e d c b ~|
	b a16 b a b gis fis e8 ~ e16 b'16 e d |
	c b a8 ~ a16 e'16 a g f8. e16 d8 c |
	b c b4 a8 f'4 e8 ~|
	e d4 c8 b2 |
	c4 cis d2 ~|
	d4 c b8 c16 d c8.\trill b16 |
	b1 |
	\bar "|."
}

altoiv = \relative c''
{
	\showStaffSwitch
	R1 |
	b2\rest \stemNeutral b16 b b b b b b b |
	c b a c b a g b a g fis a g fis e fis |
	dis[ e fis8.] e8 dis16 e4 ~ e16 d c b |
	\change Staff="down"
	\voiceOne
	c8 b c e d4 c |
	b a16 b c d e4. d8 |
	\change Staff="up"
	\voiceTwo
	c16 d e c f8 fis g8. f16 e8 a~|
	a16[ a g8.] g16 fis4 e dis8 |
	e4 d c b |
	b2 r |
	s1 |
	s1 |
	e16 e e e e e e e f e d f e d c e |
	d c b d c b a b 
	\change Staff="down"
	\voiceOne
	gis8 b c16 d c b |
	a b c d b c b a g b a g a8 g |
	fis8 g fis g4 fis e8~ |
	e dis e4 fis r |
	s1 |
	b4 c4. b4 a8 ~ |
	a gis a4 b2 |
	a8 b c d 
	\change Staff="up"
	\voiceTwo
	e fis g a b a g fis16 e fis2 |
	e8 c' fis, b e, a d, g |
	fis16 g fis g a16 r8. r2 |
	a,8. b16 cis4 d16 a' d c b8 a |
	gis a4 gis8 a4 g |
	f e4.. fis16 gis4 |
	a e f2 |
	e4. a8 gis4 a |
	gis1 |
}

bassiv = \relative c'
{
	\voiceTwo
	\showStaffSwitch
	\clef bass
	e16 e e e e e e e f e d f e d c e |
	d c b d c b a b gis8 fis e e'|
	a, c d e cis dis e g,16 a |
	b8. a16 g8 fis e16 fis gis e fis8 gis |
	a gis a c4 b a8 ~|
	a gis a4 e r |
	d1\rest |
	d2\rest b'16 b b b b b b b |
	c b a c b a g b a g fis a g fis e fis |
	dis2 e16 e' d e b d c b |
	c8 gis a8. g16 f4 fis |
	g4. f8 e8. f16 g4 |
	c,8 c' gis a d, g c, f |
	b, e a,4 e' a,8 a' |
	fis d g f e4 fis16 g fis e |
	dis8 e dis e a, d g, c |
	fis, b e,4 b'8 cis d b |
	e g a b gis16[ a b8.] e,16 a8 ~|
	a gis a4 d,8 g c, f |
	b, e a,4 e'8 fis g e |
	a4 r r2 |
	d,\rest b'16 b b b b b b b |
	c b a c b a g b a g fis a g fis e fis |
	dis8 e fis dis e8. fis16 gis4 |
	a8. d,16\rest d2.\rest |
	\stemNeutral
	e16 e e e e e e e f e d f e d c e |
	d c b d c b a b gis8 e e'16 d c b |
	a8 a'8. g16 f e d a' b c d c b a |
	gis e fis gis a a, c d e2 |
	e,1|


}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 4"
		\new Staff = "up" << { \sopriv } \\ {\altoiv} >>
		\new Staff = "down" << { \bassiv } >>
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
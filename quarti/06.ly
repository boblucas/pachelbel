rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprvi = \relative c''
{
	r8 b16 c b a gis fis e8 e' b16 c d e|
	c4 gis a16 b cis d cis4 |
	d4 ~ d16 d c b c4 ~ c16 b c d |
	b2 b8. c16 d8 b |
	c4 ~ c16 d b8 c g a4 ~ |
	a gis a g8 e |
	f2 ~ f16 f e d e4 ~|
	e8 d16 c d8. e16 << {r8 b'16 c b a gis fis } \\ {e2} >> |
	e8 e' b16 c d e c4 gis8 a16 b |
	c4 cis d ~ d16 d c b |
	c b c d e2 dis4 |
	e4 d8 b c2 |
	r16 b c d e4 r16 c d e f4 |
	r16 d c d e4 r16 c b c d e d c |
	b2 cis |
	d2. c4 ~ |
	c b2 a4 ~ |
	a g fis2 |
	gis r8 a e16 f g a |
	f8 d' a16 b c d b8 e b16 c d e |
	c1 ~ |
	c4 c4. c8 b8.\trill a16 |
	b1 |
	\bar "|."
}

altovi = \relative c'
{
	\showStaffSwitch
	s1 |
	r8 e16 f e d cis b a8 a' e16 f g a |
	f e d e f8 g a e a4 |
	gis2 gis8. a16 b8 gis |
	a8. g16 f8. f16 e2 |
	d r |
	s1 |
	s1 |
	r2 r8 e16 f e d cis b |
	a8 a' e16 f g a f e d e f8 g |
	a4 ~ a16 b a g fis2 |
	g4. gis8 a2 |
	r16 g a b c4 r16 a b c d4 |
	r16 b a b c4 r16 a g a b c b a |
	gis2 a4 g8 e |
	f2 e |
	d c |
	e8 b e2 dis4 |
	e d8 b c4 \change Staff="down" \voiceTwo \voiceOne a ~ |
	a2 g4 b |
	\hideStaffSwitch
	a s2. |
	\change Staff="up" \voiceTwo
    r4 a'4. a8 gis8.\trill fis16 |
    gis1 |
}

tenorvi = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 |
	R1 |
	R1 |
	\stemNeutral
	r8 b16 c b a gis fis e8 e' b16 c d e |
	c b a8 d g, c4 ~ c16 c b a |
	\stemUp
	b2 cis |
	d16 a b cis d2 c8 b |
	a2 gis4. a8 |
	b2 r2 |
	R1 | 
	\stemNeutral
	d,2\rest r8 b'16 c b a gis fis |
	e8 e' b16 c d e a, gis a b c b c d |
	e4 r16 c16 d e f4 r16 d e f |
	g4 r16 e d e f4 d |
	\stemUp
	e2.^\rh r4 |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
}

bassvi = \relative c
{
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	r8 e16 f e d cis b a8 a' e16 f g a |
	d,4 ~ d16 e f g a4. g8 |
	f2 e4. fis8|
	gis2 a4 d,\rest |
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r8 e16 f e d cis b a8 a' e16 f g a |
	f e d e f g a b c g a b c c, e c |
	g' d e f g a b g a e f g a b c d |
	r2 r8 b,16 c b a gis fis |
	e8 e' b16 c d e a,8. b16 c8 cis |
	d8. e16 f8 fis g4 gis |
	\change Staff = "up"
	s16 a'16 g f e d c
	\change Staff = "down"
	 b a b c gis a e c e |
	\stemNeutral
	a,8 b16 c b8.\trill a16 e'2 |
	e,1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 6"
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
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
		}
	}
	\midi {\tempo 4=100}
}
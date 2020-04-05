
soprv = \relative c''
{
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	b2.\rest b4 |
	gis e c'2 |
	b a4 d8 c |
	b4 c2 b4 ~ |
	b a2 gis4 |
	a2. d4 ~|
	d cis d a8 b |
	c4. c8 b2 |
	fis e |
	R1 |
	\override MultiMeasureRest #'staff-position = #2
	R1 |
	\stemNeutral
	e'2 cis4 a |
	f'2 e |
	\stemUp
	d e4. d16 c |
	b8 c d4. c16 b a8 b |
	c2 b |
	a8 b cis b16 cis d8 e d4 ~|
	d cis d8 e f4 ~|
	f e2 d4 ~|
	d c b2 ~|
	b ~b8 a gis4 |
	a8 b c b16 c d4 c8 b |
	c4. b8 c d e d16 c |
	b2 ~b8 b a gis |
	a2 gis |
	\bar "|."
}

altov = \relative c'
{
	\showStaffSwitch
	R1 |
	R1 |
	\stemNeutral
	r4 e cis a f'2 e |
	d ~ d8 g f g |
	\change Staff="down" \voiceOne
	e4 d8 c b a gis a |
	b2. a4 ~|
	a gis a \change Staff="up" \voiceTwo f' ~|
	\hideStaffSwitch
	\once \override Beam #'positions = #'(-3.5 . -4) f8 \change Staff="down" \voiceOne e d c d2 |
	c4. \change Staff="up" \voiceTwo d8 e2 ~|
	e4 cis d2 |
	g f ~|
	f4 e dis e ~ |
	e dis e2 |
	R1 |
	\stemNeutral
	\change Staff="down" \voiceOne a,4 d4.  c8 b a |
	
	b2 a8 b cis4 |
	d4. c8 b4 c ~|
	c b \once \override Beam #'positions = #'(5.2 . 5.6) c8 d  e \change Staff="up" \voiceTwo f |
	g4. f16 e d8 e f g |
	a e a2 gis4 |
	a2.. b8 |
	g2 f4 a |
	g2 f |
	e d4 e ~|
	e dis e2 ~|
	e4 r2. |
}

tenorv = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\stemNeutral
	b2 gis4 e |
	c'2 b |
	a ~ a8 g f e |
	d4 d'4. g,8 c4 ~|
	c b8 a b2 |
	\voiceTwo
	c4 b8 a gis fis e4 ~ |
	e4. d8 c2 |
	d4 e f2 |
	g4 a f g |
	a2 \voiceOne b |
	a r |
	s1 |
	s1 |
	r4 b gis e |
	c'2 b |
	s1 |
	s1 |
	s1 |
	s1 |
	R1 |
	\stemNeutral
	d,2\rest e'2 |
	cis4 a f'2 |
	e d4. c8 |
	b a16 b c8 b a g16 a b8 a |
	gis8 fis16 gis a4. g8 fis e |
	\stemUp
	fis2 e ~|
	e4 a2 gis4 |
	a8 e fis gis a b c d |
	\change Staff="up" \voiceTwo  e d c b c2 ~|
	c8 c b a b2 |

}

bassv = \relative c
{
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s2 e |
	cis4 a f'2 |
	\stemNeutral
	e d |
	a2. g8 a |
	\stemDown
	b2 e~|
	e8 e d c d4 g ~|
	g8 f e d e4 a -\shape #'((0 . -0.5) (0 . -1) (0 . -1) (0 . -0.5)) ~  a
	gis a4. g8 |
	f e d4 g a |
	f g c, r |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	b2 gis4 e |
	c'2 b |
	a1 |
	\stemUp
	gis2 a ~|
	a e |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 5"
		\new Staff = "up" << { \soprv } \\ {\altov} >>
		\new Staff = "down" << {\tenorv } \\ {\bassv} >>
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
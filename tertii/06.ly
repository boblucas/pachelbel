rh = \markup { \postscript # "0.20 setlinewidth 0.5 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }


soprvi = \relative c''
{
	R1 |	
	s1 |
	r2 d8. c16 b a g8 |
	a b c16 b32 c d16 c b8 e4 d8 ~|
	d16 d c b c4 b16 g32 a b8 c4 |
	b8 c4 b8 c4. b8 |
	a4 g r2	|
	s1 |
	g'8. f16 e d c8 d e f16 e32 f g16 f |
	e8.\trill d32 c b16 c d8. c32 b a16 b c8 b |
	a4 b c8 d g, fis |
	g4 a g e |
	d e f16 e32 f g8 a d, |
	e a4 gis8 a16 g32 f e16 g fis g a8 ~ |
	a16 a g fis g4~
	<< { \voiceTwo g8 fis8 g4 } \\ {\voiceOne d'8. c16 b a g8 } >> |
	\voiceOne
	a8 b c16 b32 c d16 c b4 ~b16 a32 b c8 ~|
	c16 b32 c d8 ~ d16 c32 d e8 ~ e16 d32 e f4 e8 |
	d4 e d c8 b |
	c4 ~ c16 b32 c d16 c b2 |
	a4 b c8 d g, fis |
	g4 ~g16 f e8 a4 b |
	c2 b4 a |
	g1 |
	\bar "|."
}

altovi = \relative c''
{
	\showStaffSwitch
	R1 |
	\stemNeutral
	g8. f16 e d c8 d e f16 e32 f g16 f |
	\stemDown
	e8 a d, g a fis g e |
	fis g4 fis8 g4 f8. f16 |
	e4. fis8 g2 |
	f8 g a d, g16 f32 g a16 g fis d g8 ~|
	g fis g4 c,16 f e d e8 fis |
	\stemNeutral
	g16 f32 e d16 e f8. g32 f e4 ~ e16 g f e |
	\change Staff="down" \voiceOne
	d4 c b c8 d c16 d e f \change Staff="up" \voiceTwo g8. f32 e d16 e f g a e g8 ~|
	g fis g4 f e8 a, |
	d16 c32 d e16 b c a d c b8 d4 c8 ~|
	c b c4. b8 a b |
	c4 \change Staff = "down" \voiceOne b a2 |
	d^\rh a4 g8 b |
	a g a4 g8 d' \change Staff = "up" \voiceTwo e8. d32 e |
	f8. e32 f g8. f32 g a8. g32 a b16 g c8~ |
	c b c4 b a8 d, |
	g e a4~a16 g32 fis g16 d g4 ~ |
	g8 fis g4 f e8 a,|
	d b c4 ~ c16 b32 c d8 ~ d16 c32 d e8 ~ |
	e16 e fis g a4. g8 ~ g16 e fis c |
	d1 |
}

tenorvi = \relative c'
{
	\showStaffSwitch
	\clef bass
	\stemNeutral
	d8. c16 b a g8 a b c16 b32 c d16 c |
	b8 g c4 b8 a16 g a8 b |
	c b16 a b8 a16 g fis8 d g c ~ |
	c b a4 g a8 b |
	\stemUp
	c4 ~ c16 e d c d4 e^\rh |
	s1 |
	d8.^\rh c16 b a g8 a b c16 b32 c d16 c |
	\stemNeutral
	b8. a32 g a16[ d,] d'8. g,16 a b \voiceTwo c4 ~|
	
	c8 b4 a g8 a b |
	c4 d,2.\rest |
	\stemUp
	s1 |
	s1 |
	g8. f16 e d c8 d e f16 e32 f g16 f |
	\voiceTwo
	e8 d16 c d8 e cis4 d8. c16 |
	b4 ~ b16 a b c d4 g,8 g' |
	fis g4 fis8 g4 a |
	R1 |
	g8. f16 e d c8 d e f16 e32 f g16 f |
	e f32 g a16 g fis4 g ~ g16 g32 a b16 c |
	\voiceOne
	d4 r2. |
	s1 |
	s1 |
	b1 |

}

bassvi = \relative c'
{
	s1 |
	s1 |
	s1 |
	s1 |
	r2 g8. f16 e d c8 |
	d e f16 e32 f g16 f e8 c d4 |
	d, g r2 |
	s1 |
	s1 |
	s1 |
	\stemNeutral
	d'8. c16 b a g8 a b c16 b32 c d16 c |
	b8 g4 fis8 g16 g32 a b16 g c16 c32 d e16 c |
	\stemDown
	g4 c r2 |
	s1 |
	s1 |
	s1 |
	R1 |
	s1 |
	s1 |
	d8. c16 b a g8 a b c16 b32 c d16 c |
	b g g' f e8. c16 f8. d16 g8. e16 |
	a4 ~ a16 g fis32 e d16 g g, b c d8 d, |
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 6"
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
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
		}
	}
	\midi {\tempo 4=100}
}
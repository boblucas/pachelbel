
soprxviii = \relative c''
{
	R1 |
	R |
	R |
	R |
	R |
	s |
	s |
	s |
	s |
	r2 r4 d |
	f2 c4 d~|
	d e a, b |
	c2 ~ c8 b16 a b8 cis16 d |
	cis8 a d2 cis4 |
	d1 |
	e8 d c2 bes4 ~|
	bes a g2 |
	a2. g4 ~|
	g f8 g a2 |
	R1 |
	R |
	s |
	s |
	s |
	s |
	r2 a |
	bes f4 g ~|
	g a d, s4 |
	s1 |
	r2 r4 d' |
	f2 c4 d ~ |
	d e a, b |
	c2 b |
	a1 |
	f8 e f g a4 bes~|
	bes a8 g f4 fis |
	g a bes b |
	c cis d8. e16 f4 ~ |
	f8. f16 e8 d cis8. cis16 d4 ~|
	d8 d cis4 d2 |

	\bar "|."
}

altoxviii = \relative c''
{
	R1 |
	R |
	R |
	R |
	R |
	\oneVoice
	r2 r4 a |
	bes2 f4 g~|
	g a d, e |
	fis8 d g2 f8 g16 f |
	\voiceTwo
	e4 a2 g4 |
	a2 r |
	s1 |
	a,8 b c d e fis g4 ~|
	g8 f e d e2 |
	d8 e f g a4 bes8 a |
	g f e4 f2 |
	e4 f2 e4 |
	f2 r8 d4. |
	s1 |
	R |
	R |
	\oneVoice
	r2 e |
	f c4 d~|
	d e a, b |
	c d2 c4 |
	\voiceTwo
	b2 e4 d~|
	d2 r |
	s2. g8 f |
	e4 f2 e8 f16 g |
	a2 ~a8 g16 f g4 |
	a2. a4 |
	b a8 g fis4 gis4 |
	a2. g4 ~|
	g f e2 |
	d1 |
	e8 d cis4 d2 ~|
	d8 e fis4 g2 ~|
	g8 g f8.\trill e16 f8. g16 a4 ~|
	a g2 f8. f16 |
	e2 fis |
}

tenorxviii = \relative c'
{
	\clef bass
	s1 |
	s1 |
	r4 d f2 |
	c4 d2 e4 |
	a, d2 c4|
	bes2 a ~|
	a4 g a g |
	c4. b16 a b8 g c4~|
	c bes a d~
	d c d2 |
	cis4 d e d8 c b4 c2 b4 |
	a2 r |
	\oneVoice
	r a |
	bes f4 g~|
	g a d,8 d' c bes |
	c1 |
	f,8 g a f bes4. a16 g |
	\voiceOne
	a2 r4 c8 d |
	e4 d8 c b a gis4 |
	a8 b c d b4 e~|
	e8 a, d2 cis4 |
	d8 a b a g4 a |
	b a8 g fis4 gis |
	a2 gis4 a ~|
	a g2 fis4 |
	g8 r8 r4 a g |
	c bes8 a bes2 ~|
	bes4 a g c~|
	c2 d |
	cis4 d e f |
	\oneVoice
	g c,2 b4 |
	a8 b c d e f e d |
	\voiceOne
	cis a d2 cis4 |
	d2 d, |
	g8 f e4 d a' |
	g c d2 |
	g,4 a4 ~ a4. a8 |
	bes2 a ~ |
	a1 |
}
bassxviii = \relative c'
{
	a2 bes |
	f4 g2 a4 |
	d,2 ~ d8 a' g f |
	e4 f g2 ~|
	g8 f f e16 d e8 a, a'4 ~ |
	a g2 f8 e |
	d8 c bes g d'4 e ~|
	e f2 e4 |
	d1 |
	a'2 bes |
	a2. f4 ~|
	f e fis gis |
	a2 r |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	d,2 f |
	c4 d2 e4 |
	a, a'4. g8 g f16 e |
	f4. e16 f g4 a |
	d,2 e4 f |
	g c,2 b4 |
	a8 f' e d e2 ~ |
	e4. d8 cis4 d |
	g8 g, bes c d4 e ~ |
	e fis g2 |
	c,1 |
	f8 g a f bes2 |
	a2. r4 |
	s1 |
	s1 |
	r2 a, |
	bes f4 g~|
	g a d, d'8 c |
	bes4 a g g'8 f |
	e4 a, d2 |
	g2 a |
	a, d |



}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 18"
		\new Staff << { \soprxviii } \\ {\altoxviii} >>
		\new Staff << {\tenorxviii} \\ {\bassxviii} >>
	>>
	\layout 
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			%\Score
			%\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
		}
	}
	\midi {\tempo 4=100}
}
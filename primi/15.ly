rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprxv = \relative c''
{
	R1 |
	R |
	R |
	R |
	R |
	R |
	R |
	s |
	s |
	s |
	s |
	r2 r4 d |
	a f' gis, e' |
	a, d e, c' |
	b2 a8 b cis b16 cis |
	d4 c\trill b8 cis d e |
	cis8 b16 a d2 cis4\trill |
	d g, a4. g8 |
	f4 g8 f e4 f |
	g f8\trill e f g16 a bes4 ~|
	bes8 a16 g a4. g8 g4 ~|
	g8 f16 e f4 e r |
	s1 |
	s |
	s |
	r2 r4 a |
	d, bes' cis, a' |
	d, g a, f'| 
	e2\trill d8 e f g |
	a bes c a bes c16 bes a8 g |
	a4. r8 r2 |
	r2 \oneVoice a'2 |
	d,4 bes' cis, a' |
	d, g a, f' |
	e2\trill d4. e16 d |
	\voiceOne
	c8 d16 e f8 e d e16 f e8.\trill d16 |
	cis8 d16 e d8.\trill c16 b4 bes |
	a4. b8 c4. d8 |
	e4. d8 c4 b8\trill a |
	gis4 a b8 c d c16 b |
	c8 d16 e f8 e d f e\trill d |
	e4 d2 cis4 |
	d4. g4 a16 g f8 e |
	f4 e8 d cis4 d~|
	d c2 bes4 |
	a2. g4~|
	g f e4. fis16 g fis1
	\bar "|."
}

altoxv = \relative c''
{
	R1 |
	R |
	R |
	R |
	R |
	R |
	R |
	\oneVoice
	r4 a d, bes' |
	cis, a' d, g |
	a, f' e2\trill |
	d8 e f d e f g4 |
	\voiceTwo
	c,8 e16 f g8 e d2_\lh ~|
	d e |
	d2. c8 d16 e |
	f4 e8 d cis d e4 |
	fis8 d e fis g2 ~ |
	g4 f8 e16 d e2 |
	f8 e d4 e8 d cis4 |
	d8 c b4 cis d ~|
	d cis d2 |
	c4. f16 e d2 ~|
	d cis4 d |
	\oneVoice
	e4. d8 c4 d8 c |
	b4 e d c8\trill b |
	c2 b |
	\voiceTwo
	a1~ |
	a4 a2.\rest |
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	r4 a' bes8 a g e |
	a g f d g d g4 ~|
	g8 f16 e f4 e8 f16 g a4 |
	b8 a gis4 a8 g f4 |
	e2 d8 e fis gis |
	a2. g4 ~ |
	g8 a f g a2 ~|
	a4 g a2 ~|
	a4 g4. f16 e a4 |
	g2 fis8 d g4 ~|
	g8 f16 e f8 e d2 |
	cis8 a d2 cis4 |
	d1 | 
}

tenorxv = \relative c'
{
	\clef bass
	s1 |
	s |
	s |
	r4 d a f' |
	gis, e' a, d |
	e, c' b2\trill |
	a8 b c d e c b4 |
	a d8 c bes4 f |
	g8 f e4 f e8 d |
	e4 a g8 f16 g a8 g |
	f g a b c4. bes8 |
	a2. g4 |
	f8 g a4 b a8 g |
	fis4 b2 a4 ~ |
	a gis a2 |
	R1 |
	\oneVoice
	r2 a |
	d,4 bes' cis, a' |
	d, g a, f' |
	e2\trill d4. e8 |
	f2 bes4. a16 g |
	\voiceOne
	a1 |
	\change Staff="up" \voiceTwo
	b8 a gis4 a b8 a |
	gis4 a2 gis4|
	a2~a8 \change Staff="down" \voiceOne g16 fis g4 ~ |
	g f e2 |
	f g4 a |
	b2 cis4 d~|
	d cis d4. e8 |
	f4. c8 d4 e |
	f4. g16 f e8 f g a16 g |
	f4. g16 f e2 |
	f4 g8 f e d cis4 |
	d e8 d cis4 d~|
	d c b2 |
	a4 r2. |
	R1
	\oneVoice
	d2 a4 f' |
	gis, e' a, d |
	e, c' b2\trill |
	a4 d8 c bes4 b |
	\voiceOne
	cis d e2 |
	f4 e8 d e4 cis |
	d8 c bes4 a2 |
	b4 a8\trill g a4 bes8 c |
	d2 d,8 f e\trill d |
	e4 f8 g a2 ~|
	a1 |


}
bassxv = \relative c
{
	a'2 d,4 bes' |
	cis, a' d, g |
	a, f' e2\trill |
	d4. e8 f4 e8 d |
	e4 d8\trill c f4 b, |
	c b8 a d4 e |
	f e8 d c4 d8 e |
	f2 g4 d |
	e8 d cis4 d8 c b4 |
	cis4 d2 cis4 |
	d2 a'4 e |
	f2 bes,4. c8 |
	d2. c4 ~|
	c b c2 |
	d4 e a,2 |
	R1 |
	s |
	s |
	s |
	s |
	s |
	d2 a4 f' |
	gis, e' a, d |
	e, c' b2 |
	a8 b c d e4. d8 |
	cis a d2 cis4 |
	d2 e4 f ~|
	f e2 d4 |
	g4 a bes2 |
	a g |
	f8 g a bes c d e4 ~|
	e8 a, d2 cis4 |
	d g, a2 |
	bes8 a g2 f4 |
	g a2 gis4 |
	a2 r2 |
	R1 |
	s |
	s |
	s |
	s |
	r2 a |
	d,4 bes' cis,  a' |
	d, g a, f' |
	e2 d ~|
	d4. c8 bes2 |
	a1|
	d, |
}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 15"
		\new Staff="up" << { \soprxv } \\ {\altoxv} >>
		\new Staff="down" << {\tenorxv} \\ {\bassxv} >>
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
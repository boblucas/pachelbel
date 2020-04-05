soprxxi = \relative c'
{
	d8 d e e f16 g f e d8 d' |
	c4 gis a8 b c4 |
	r16 c d e f4 r16 d e f g4 |
	r16 cis, d e f4 e16 f e d d8.\trill cis16 |
	d4 c16 d c bes a2 |
	a4. gis8 a2 |
	s1 |
	r2 a8 a b b |
	c16 d c b a8 a' f e d cis |
	d8. e16 f4 e fis|
	g8 f16 e d8 e f4 ~ f16 f e d |
	e8. f16 g a g f e4. e8 |
	f16 g f e d e c d e f e d c8 b16 c |
	d16 e d c b c a b c8 b16 c d8 e |
	a,8. bes16 c d c bes a2 |
	bes16 c a bes g a f g a bes g a f e f g |
	a8. g16 g8.\trill a16 a4. gis8 |
	a4. c8 b4 cis |
	d4. cis8 d2 |
	e4 fis g8 f16 e d8 e |
	f8. e16 d8 e c4 r |
	s1 |
	s1 |
	r2 d8 d e e |
	f16 g f e d8 a' g16 a f g e f d e |
	f g e f  d e c d  e f d e  c d b c |
	d e c d b c a b c d bes c a bes g a |
	bes c a bes g a f g a bes g a f8 g16 a |
	bes2 a~ |
	a1 ~|
	a |
	\bar "|."
}

altoxxi = \relative c'
{
	s1 |
	a8 a b b c16 d c b a8 a' |
	f4 r16 d e f g4 r16 e f g |
	a4 r16 d, e f g8 f e4 |
	f g c,8 d16 e f4 e d e4. e8 |
	\oneVoice
	f16 g f e d4 e16 f e d c4 |
	\voiceTwo
	d16 e d c b4 c r |
	r2 d8 d e e |
	f16 g f e d8 d' c16 d c bes a d c d |
	bes4 ~bes16 bes a bes a8 d a b |
	c4 d g, c |
	d16 e d c b c a b c d c b a8 g16 a |
	b c b a g a f g a4 g |
	\voiceThree f s2. |
	\voiceTwo
	s1 |
	r2 a,8 a b b |
	c16 d c b a8 a' g16 a g f e a g a |
	f4 g a f |
	g a bes2 |
	a2 e8 a4 gis8 |
	\oneVoice
	a4 ~ a16 e d e f4 ~ f16 f e d |
	e4 ~ e16 e d c d e d c b c a b |
	\voiceTwo
	c a' g a e g f e f4 g8 a |
	a2  b4 a ~|
	a g2 f4~ |
	f e2 d4 ~|
	d c2 d4 ~ |
	d4 ~ d16 e f g cis,8 a d4 ~|
	d cis8 b cis2 |
	d1 |
}

tenorxxi = \relative c
{
	\clef bass
	R1 |
	R |
	R |
	R |
	d8 d e e f16 g f e d8 d' |
	c4 d a c |
 	d16 e d c b4 c16 d c b a4 |
 	b16 c b a a8 gis a4 gis |
 	a2 r |
 	R1 |
 	R |
 	\oneVoice
 	a8 a b b c16 d c b a8 a' |
 	f4 g e f |
 	d e a, b8 cis |
 	\change Staff="up" \voiceTwo
 	d4 g c, f8 \change Staff="down" \voiceOne f, |
 	g8 f e4 f8 e d16 c d e |
 	f c f4 e8 f8. e16 d8 e |
 	a4 \oneVoice r2. \voiceOne |
 	\oneVoice
 	d,8 d e e f16 g f e d8 d' |
 	c16 d c bes a8 d g, a bes c |
 	\voiceOne
 	d d,16 e f8 g a4 d |
 	e c d~d16 d c b |
 	c4 ~c16 c b a b8 a gis4 |
 	a2. e4 |
 	a2 e'4 cis |
 	d4 b2 a4 ~|
 	a gis a f ~|
 	f e2 d4 ~ |
 	d16 d e f g2 f8 e16 d 
 	e2. fis8 g |
 	fis1 |
}
bassxxi = \relative c
{
	R1 |
	R |
	R |
	R |
	s |
	a8 a b b c16 d c b a8 a' |
	f d g16 a g f e8 c f16 g f e |
	d4 e a, e' |
	a,2 r |
	R1 |
	R |
	s |
	s |
	s |
	\oneVoice
	d,8 d e e f16 g f e \voiceTwo d8 d' |
	bes4 c a bes |
	a8. bes16 c4 f,4 r |
	s1 |
	s |
	s |
	r2 a8 a b b |
	c16 d c b a8 a' f16 g f e d8 g |
	e16 f e d c8 f d4 e |
	a,8 b c a d4. cis8|
	d4 f e a |
	d, g c, f |
	b, e a, d |
	g, c f, bes |
	g2 a~|
	a1 |
	d1 | 
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 21"
		\new Staff ="up" << { \soprxxi } \\ {\altoxxi} >>
		\new Staff ="down" << {\tenorxxi} \\ {\bassxxi} >>
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
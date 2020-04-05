
soprxix = \relative c''
{
	
	b8\rest a a a bes4 b |
	c cis d2 |
	r16 a b c d e d c b8 c16 d e f e d |
	cis8 d e4~e16 a, b cis d4~ |
	d cis d2 |
	e r16 a, b c d c b a |
	gis a fis gis a b c a d e c d b c a b |
	cis d b cis d8 e a,2 |
	s1 |
	s |
	r8 e' e e f4 fis |
	g gis a16 e f g a cis, d e |
	f2. e4 ~ |
	e d2 cis4 |
	d r r2 |
	s1 |
	s |
	\voiceTwo
	d16\rest d e f g a g f e8 f16 g a bes a g |
	f4 ~ f16 a g f e4 ~ e16 f g a |
	d,4 ~ d16 e f g c,4 ~ c16 d e f |
	\voiceOne
	bes,4 ~ bes16 bes a g a2 |
	r16 d, e f g a g f e8 f16 g a bes a g |
	f16 e f g a g a bes g f g a bes a bes c |
	a g a b c b c d b4 c |
	b2 a |
	R1 |
	r8 a a a bes4 b |
	c cis \oneVoice d16 a b c d e f d |
	g a f g e f d e f g e f d4 ~ |
	\voiceOne
	d4 cis d2 |
	s1 |
	s |
	r16 a16 b c d e d c b8 c16 d e f e d |
	cis2 ~ cis16 b cis a d4~ |
	d16 d e b cis4 d2 |
	\bar "|."
}

altoxix = \relative c'
{
	s1 | 
	r2 r8 d d d |
	f4 fis g gis |
	a~a16 g f e f4~f16 f e d |
	e2 r16 d16 e f g a g f |
	e8 f16 g a bes a g f2 |
	e fis4 gis |
	a g f8. e16 f8 g |
	a2 b ~|
	b16 e, f g a4~ a16 a gis fis gis8.\trill a16 |
	a1 |
	b2 a |
	r16 a b cis d f, g a bes2 |
	a bes4 a ~|
	a16 a, b c d e d c b8 c16 d e f e d |
	\oneVoice
	c2 d16 e d e f g f g |
	a8 c, b4 cis2 |
	\voiceTwo
	s1 |
	s1 |
	s1 |
	r2 r8 a8 a a |
	bes4 b c cis |
	d16 c d e f e f d e d e c d c d e |
	f e f g a g a fis gis8 e a4 ~ |
	a gis a2 |
	b r16 e,16 f g a bes a g |
	f2 s |
        s1 |
	s1 |
	r8 e e e f4 fis |
	\voiceOne
	g gis a2 |
	r16 d, e f g a g f e a g f e d cis b |
	\change Staff="down" \voiceOne
	a2 r |
	\change Staff="up" \voiceTwo
	r16 e' f g a bes a g f4 ~ f16 e f d |
	e4 ~ e16 g a e fis2 |
}

tenorxix = \relative c'
{
	\clef bass
	\oneVoice
	R1 |
	R |
	R |
	R |
	r8 a a a bes4 b|
	c cis d2 ~ |
	d4 c b e |
	\voiceOne
	a, b8 cis d2 |
	r16 a b c d e d c b8 c16 d e f e d |
	c4 ~ c16 c b a b2 |
	a r |
	s1 |
	s |
	r2 r8 e e e |
	f4 fis g gis |
	a16 e f g a b a g f8 e d e |
	f16 g a4 gis8 a2 |
	d, e |
	r16 f g a bes4 ~ bes16 e, f g a4 ~ |
	a16 d, e f g4 ~ g16 c, d e f4 ~ |
	f16 f e d e4 f2 |
	R1 |
	r |
	r |
	r2 r16 a b c d e d c |
	b8 c16 d e f e d c4 cis |
	d2 \change Staff="up" \voiceTwo d |
	e \change Staff="down" \voiceOne a, |
	b4 cis d2 |
	bes4 a r16 a b c d e d c |
	b8 c16 d \change Staff="up" \voiceTwo e f e d cis2|
	d4 r4 \change Staff="down" \voiceOne r8 e, e e |
	\voiceThree
	f4 fis \voiceOne g gis |
	a1 ~| 
	a1 |
}
bassxix = \relative c
{
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	r2 r8 d d d |
	f4 fis g gis |
	a2 d,4 e |
	cis2 r16 a b c d e d c |
	b8 c16 d e f e d cis2 |
	d2 g,16 d' e f g bes, a g |
	f c' d e f a, g f g4 a |
	d2 e |
	R1 |
	r2 r8 a, a a |
	bes4 b c cis |
	d2 c |
	b a |
	g f |
	s1 |
	s |
	s |
	r8 e' e e f4 fis |
	g gis a2 |
	r2 r16 d, e f g a g f |
	e8 f16 g a bes a g f2 |
	e4 a d,8 e f d |
	g4 a d,2 |
	r r8 a a a |
	bes4 b c cis |
	d2 e |
	a,1~ |
	a2 d, |

}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 19"
		\new Staff ="up" << { \soprxix } \\ {\altoxix} >>
		\new Staff ="down" << {\tenorxix} \\ {\bassxix} >>
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
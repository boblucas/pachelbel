
soprxx = \relative c''
{
	R1 |
	R |
	R |
	R |
	R |
        s |
	s |
	r2 a4. a8 b4 gis a c |
	\oneVoice
	d8 d c b a4 ~a16 a g f |
	g4 ~ g16 a bes c a8 c d16 e d c |
	\voiceOne
	b4 cis d 8 c16 b a8 b |
	cis d e4 a, d |
	b cis d8 c16 b a8 b |
	c2 d |
	c a4 b |
	c8 b16 c d8 e c2 |
	s1 |
	s |
	s |
	R |
	s |
	s |
	s |
	s |
	d4. d8 e4 cis |
	d f g8 g f e |
	d f e d c d16 e f8 e |
	d4 e e4. d16 c |
	f8 f e d c4 f ~|
	f16 f e d e4 ~ e16 e d cis d4 ~|
	d16 d cis b cis4 d8 a d c |
	b4 e a, d |
	b cis d8 d c b |
	c c b a b b a gis |
	a2 f4 bes |
	e, f  g8 g fis e |
	fis1 |  
	\bar "|."
}

altoxx = \relative c'
{
	R1 |
	R |
	R |
	R |
	R |
	\oneVoice
	d4. d8 e4 cis |
	d f g8 g f e|
	\voiceThree
	d4 e f e |
	f e e2 |
	s1 |
	s |
	\voiceTwo
	r2 d4. d8 |
	e4 cis d f |
	g8 g f e d e f g |
	a e a g fis4 b |
	e, a8 g fis4 gis |
	a b a8 e f4 ~|
	\oneVoice
	f8 e16 d e8 f g f16 g e8 d16 e |
	f8 e d c b4 cis |
	d2 r |
	R1
	\voiceOne
	r2 a'4. a8 b4 gis a c |
	d8 d c b c b a4 ~|
	a gis a8 g16 f e8 a |
	\voiceTwo
	f2 g4 e |
	f a bes8 bes a g |
	f4 g a2 |
	fis4 b c8 b16 c a4 ~|
	a2 a8 a g f |
	g4 ~ g16 g f e f4 ~ f16 f e d |
	e4 ~ e16 f d e f2 |
	g f |
	d4 e f8 f e d |
	e e d c d d c b |
	c4 f d2 |
	cis4 d2 cis4 |
	d1 |
}

tenorxx = \relative c'
{
	\clef bass
	s1 |
	s |
	a4. a8 b4 gis |
	a c d8 d c b |
	a4. bes8 g4 a8 g16 a |
	f8 a g f g4 e |
	f8 g a4 g a |
	\change Staff="up" \voiceTwo
	b cis d e |
	d8. c16 b4 c8. b16 \change Staff="down" \voiceOne a4 ~|
	a g ~g16 g f e f4 ~|
	f16 f e d e4 f a |
	g2 f |
	R1 |
	R |
	s |
	s |
	s |
	d4. d8 e4 cis |
	d f g8 g f e |
	\showStaffSwitch
	d4 d' c \change Staff="up" \voiceTwo f ~|
	f e d g~|
	g \change Staff="down" \voiceOne f e2 |
	d8 c d e16 d c8 d e d16 c |
	b2 a8 b c b16 a |
	\oneVoice
	b8 e, e' d cis2 |
	d8 c bes a g4 a |
	d, r r2 |
	r a'4. a8 |
	b4 gis a c |
	d8 d c b a4 d, |
	bes' c a bes |
	\voiceOne
	g a2. |
	g4 a2. |
	g2 a4 r |
	s1 |
	s1 |
	a8 a g f e4 a ~|
	a1 |

	

}
bassxx = \relative c
{
	d4. d8 e4 cis|
	d f g8 g f e |
	d4 c d e |
	c8 b a4 f'8 e16 d e4 |
	f8 d c bes c b16 c cis4 |
	d2 g,4 a |
	d2 e4 f ~|
	f8 g16 f e4 d c |
	d e a,2 |
	b4 e c d |
	bes c f, f'~|
	f e d2 |
	R1|
	R |
	\oneVoice
	a4. a8 b4 gis |
	a c d8 d c b |
	a4. gis8 a4. g16 f |
	\voiceTwo
	bes2 g4 a |
	d, d' g, a |
	bes bes'4. a4 g16 f |
	g8 c, c'4. bes4 a16 g |
	a8 d, d'2 c4 |
	b2 a ~|
	a4 gis a2 |
	s1 | 
	s |
	s |
	s |
	s|
	s|
	s|
	r2 d,4. d8 |
	e4 cis d f |
	g8 g f e d4 g |
	\oneVoice
	c, f b, e |
	a,8 a g f bes bes a g |
	\voiceTwo
	a1 |
	<d, d'>|

}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 20"
		\new Staff ="up" << { \soprxx } \\ {\altoxx} >>
		\new Staff ="down" << {\tenorxx} \\ {\bassxx} >>
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
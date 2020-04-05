soprxxiii = \relative c''
{
	R1 |
	R |	
	s |	
	s |
	r2 d4. d8 |
	cis8 cis d d a4. a8 |
	bes a16 g f8 g a4. d8 ~|
	d4 c8. d16 e8. d16 c4 |
	b8 a b4 a2 ~|
	a4 g2 f4 ~|
	f2 e |
	\oneVoice
	r2 a'4. a8 |
	gis gis a a e4. e8 |
	f e16 d c8 d e a16 g f8 e |
	f f16 g a8 g16 f e g f e f8 e16 d|
	\voiceOne
	c d e f d e c d bes8 c16 g a8 g16 f |
	e g f e f d' c b a8 b c d |
	e d16 c b8 c d c16 b a8 b |
	c b16 a g a b c a b c d b c d e |
	c8 b c d e8. d16 c8 d16 c |
	b8 a b e16 d c8 d e d16 c |
	b8 r16 c r d r b c8 r16 f r g r e |
	f8 e f g16 f e8 e d4 |
	cis8 b cis b16 cis \shape #'( (0 . 1) (0 . 1) (0 . 1) (0 . 1) ) Tie d2 ~|
	d4 cis d2 |
	\bar "|."
}

altoxxiii = \relative c''
{
	R1 |
	R |
	\oneVoice
	a4. a8 gis gis a a |
	e4. e8 f e16 d c8 d |
	\voiceTwo
	e a16 g f8 e f e f g |
	a16 g f e d4 d2 ~|
	d8 cis d e f4.. g16 |
	a2 b4 a |
	gis2 r4 e |
	e2 e d2. s4 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2. d4 ~|
	d8 c d e f16 f e d c a' g f |
	e8 f g f16 e d8 e f e16 d |
	c8 d e4 f8 fis g gis |
	a4. a8 b4 a |
	g2 a8 \change Staff="down" \voiceOne b, c b16 a |
	gis8 \change Staff="up" \voiceTwo r16 a' r a r gis a8 r16 d r d r cis |
	d2 \voiceThree \shape #'( (0 . -1) (0 . -1) (0 . -1) (-1 . -1)) Tie a ~|
	a f4 \shape #'( (0 . -1) (0 . -1) (0 . -1) (-1 . -1) ) Tie a ~ |
	\voiceTwo
	<a e>2 <fis a> |

}

tenorxxiii = \relative c'
{
	\clef bass
	\oneVoice
	d4. d8 cis cis d d |
	a4. a8 bes a16 g f8 g |
	a b c a e' d c a16 b |
	c8 a b c d4 a8 b |
	cis a16 b cis4 d2 |
	a4 bes8 a16 g fis8 d e fis |
	g a bes4 a8 b16 cis d4 |
	\voiceOne
	e2 e ~|
	e4.. d16 c2 |
	b a ~|
	a r8 b c8. c16 |
	d16 e c d b d c b c8 b c d |
	e8. d16 c8 d4 cis16 b cis4 |
	d8 c16 b a8 b c4 a |
	d4. d8 cis cis d d  |
	a4. a8 bes a16 g f8 g |
	\oneVoice
	a4 r2. |
	R1 |
	R1 |
	a4. a8 gis gis a a |
	\voiceTwo
	e4. e8 f e16 d c8 d |
	e c' b e a, f e a~|
	\voiceOne
	a4 d \change Staff="up" \voiceTwo e f |
	e2 d4 f
	\change Staff="down" \voiceOne
	a,2 d, |


}
bassxxiii = \relative c'
{
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	a4. a8 gis gis a a |
	e4. e8 f e16 d c8 d |
	e b e d cis a d cis |
	d e f g a e a4 ~|
	<a b> gis a2 |
	e4 f8. g16 a2 |
	d,8 e f e16 d c4 cis |
	<d a'>8 d16 e f8 g a4 d, |
	f fis g r |
	s1 |
	R |
	R |
	s |
	s |
	s |
	d4. d8 cis cis d d |
	\oneVoice
	a4. a8 bes a16 g f8 g |
	\voiceTwo
	a2 r4 d, |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 23"
		\new Staff ="up" << { \soprxxiii } \\ {\altoxxiii} >>
		\new Staff ="down" << {\tenorxxiii} \\ {\bassxxiii} >>
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
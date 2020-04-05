sopriix = \relative c''
{
	s1*7 |
	a8 a a a f4 d |
	a' b8.\trill a32 b c2 |
	b a4 d~|
	d8 c b4 a8 b cis d |
	e f g a16 g f2 |
	e d |
	s1*6 |
	d8 d d d c4 a |
	d e8.\trill d32 e f2|
	b,4 c b2 |
	a a~|
	a4 bes4. c8 bes a |
	g2 a8 bes c4 |
	bes4. c16 bes a4 d~ |
	d cis d2 |
	c4 b a8 e' d4 ~|
	d8 c b a b2 |
	a4 cis8 d e2 |
	a,4 b8.\trill a32 b c2 |
	b a ~|
	a4. g8 f2~|
	f4 e~e16 fis g a g8.\trill fis16 |
	fis1 |

}
altoiix = \relative c'
{
        \oneVoice
	d8 d d d c4 a |
	d e8.\trill d32 e f4 e |
	d4. e8 f2 e4. f16 e d4 g ~|
	g f e c |
	f g c, f~ |
	f e4. a,8 d4 |
	\voiceTwo
	e2 d |
	f e4 a~|
	a gis a2 |
	s1 |
	s1 |
	a8 a a a f4 d |
	
	a' \stemNeutral b8.^\trill a32 b c4 b~|
	b8 a16 gis a2 gis4 |
	a8 g16 f e8 f g4 f |
	e2 f |
	e8 a g f e f g4~|
	g8 f8 f4\trill e a~| \voiceTwo
	a g a2~|
	a r |
	r e8 e e e |
	c4 a d e8.\trill d32 e |
	f4 g e f~|
	f e f8 g a4~|
	a8 d, g4. f8 e d |
	e2 f |
	e8 fis gis4 a b8 a |
	gis4 a2 gis4 |
	a2. g4 |
	f2 \voiceThree a ~|
	a4 g2 f4 |
	\tieDown e2 ~  \voiceTwo e8 d16 cis d4~|
	d d2 cis4 |
	d1 
}
tenoriix = \relative c'
{

	\clef bass
	R1 |
	\oneVoice
	r2 a8 a a a |
	f4 d a' b8.\trill a32 b |
	c8 g c4. bes8 bes a16 g |
	\voiceOne
	a2 a~|
	a8 d c bes a2 |
	g f4. g16 f |
	e2 a4 r |
	d8 d d d c4 a |
	\stemNeutral
	d4 e8._\trill d32 e f4. e16 d |
	
	e8 \change Staff="up" \voiceTwo a d, e f4 e8 d |
	cis d e4. \showStaffSwitch \change Staff="down" \voiceOne \stemNeutral a,8 d4~|
	d cis d2~ |
	d8 c d e a,4 d |
	c4. b16 a b8 e, e' d |
	cis4. d8 e b16 c d4~|
	\stemUp
	d cis d2 |
	c4 d e d |
	cis d4. d8 c4 |
	d8 f e d e2 |
	d4 a4. g16 a b8 a |
	gis e a2 gis4 |
	a2 r |
	s1 s1 R1 |
	\stemNeutral
	a8 a a a f4 d |
	a' b8. a32 b c4 d |
	e2 r8 b e d |
	cis4 a8 b cis d e cis |
	\voiceOne
	d2 \change Staff="up" \voiceTwo e |
	f4 g c, d |
	\hideStaffSwitch
	e8 \change Staff="down" \voiceOne e, a2. |
	bes4 b a2~ |
	a1 \bar "|."
}
bassiix = \relative c
{
	R1 |
	s1*3 |
	d8 d d d c4 a |
	d e8. d32 e f8 e d c |
	b4 cis d2~|
	d4 cis d f8 e |
	d2 r2 |
	s1*7 |
	a'8 a a a f4 d |
	a' b8. a32 b c4 bes |
	a1 |
	bes2 a4. g8 |
	f4 cis d2~|
	d4 c8 d e2 |
	a,4. a'16 g f8 e16 d cis4 |
	d8 d' c bes c2 ~|
	c f, |
	R1 |
	s1*4 |
	d8 d d d c4 a |
	d e8. d32 e f4. e16 d |
	cis2 d4. f8 |
	g4 gis a2 |
	d,1 \bar "|."
}



\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 8"
		\new Staff="up" << { \sopriix } \\ {\altoiix} >>
		\new Staff="down" << { \tenoriix} \\ {\bassiix} >>
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
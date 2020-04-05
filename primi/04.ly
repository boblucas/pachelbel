sopriv = \relative c''
{
	s1 s1 s1 |
	r2 g4 d' |
	c bes8 a bes2 |
	a2 r2 |
	R1 s1 |
	r2 a4 e' |
	d c8 b c2 |
	b4 r2. |
	r2 d4 a' |
	g f8 e f4 d4 ~ |
	d4 c8 d16 c b2 |
	a4. b8 c2 |
	s1 s1 |
	\oneVoice
	d4 g f e8 d |
	e4. f16 e d2 ~ |
	\voiceOne
	d4 c b2 |
	a4. b8 c2 ~ |
	c8 bes16 a bes2 a4 |
	g2 a |
	g4 r2. |
	R1 |
	a4 d c b8 a |
	b2 a |
	e2. fis8 g |
	fis1
}
altoiv = \relative c'
{
        \oneVoice
	d4 a' g f8 e |
	f2 e |
	d4 g2 f4 |
	\voiceTwo
	e2 d |
	e4 fis g2 ~|
	g4 fis g2 |
	R1 |
	b2\rest d,4 a' |
	g fis8 e fis gis a4~ |
	a gis a2 |
	g8 a b c16 b a2 |
	\change Staff="down" \voiceOne
	g f |
	e d8 e \change Staff="up" \voiceTwo f g |
	a e a2 g4 |
	f2 e4 c |
	\oneVoice
	f e8 d cis4 d ~ |
	\showStaffSwitch
	d8 e16 d c4 b4. \change Staff="down" \voiceOne c8 |
	\voiceOne
	a4 b8 cis d2 ~ |
	d4 c bes8 c d e \change Staff="up" \voiceTwo |
	f g a4. d,8 g4~|
	g f e f |
	d4. g16 f e4 f~ |
	f e f2 |
	e8 f g a16 g f2 |
	e d4. e8 |
	f2 e4 c |
	f e8 d cis a d4~ | 
	d cis8 b cis2 |
	d1 \bar "|."
}
tenoriv = \relative c'
{
	\clef bass
	R1 |
	\oneVoice
	a4 d c bes8 a |
	bes2 a8 b16 cis d4~ |
	d c2 bes4 |
	a2 g8 a bes c |
	\voiceOne
	d4 c b2 |
	a4 d c bes8 a bes2 a4. d8~|
	d4 cis d a |
	b2 a8 b c d |
	\voiceTwo
 	e f g4. c,8 f4 ~ |
 	f e2 d4~|
 	d cis d \voiceOne r |
 	\oneVoice
 	R1 \voiceOne s1 |
 	d,4 g f e8 d |
 	e4 a \voiceTwo d, e |
 	f e d f |
 	g a bes2 |
 	s1 |
 	a4 d c bes8 a |
 	bes2 c~ |
 	c f,8 g a b |
 	c d e4. a,8 d4 ~ |
 	\voiceOne 
 	d8 c16 b c2 bes4 |
 	a b gis a ~ |
 	a g2 f8 g |
 	a1 ~ |
 	a1 \bar "|."
}
bassiv = \relative c
{
	R1 s1 s1 s1 s1 |
	d4 a' g f~|
	f e8 d e4 c |
	d e f2 |
	e d4 c b e a, r |
	s1 s1 s1 s1|
	\oneVoice
	a4 d c bes8 a \voiceTwo bes2 a~|
	a s |
	s1 s1 \oneVoice R1 \voiceTwo s1 s1 s1 s1 |
	r2 d4 g |
	f e8 d e4 f |
	d e a,2 ~ |
	a1 |
	<d d,>
}



\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 4"
		\new Staff ="up" << { \sopriv } \\ {\altoiv} >>
		\new Staff ="down" << { \tenoriv} \\ {\bassiv} >>
	>>
	\layout  {
	\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }}
	\midi {\tempo 4=100}
}

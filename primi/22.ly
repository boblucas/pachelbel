soprxxii = \relative c''
{
	s1 |
	s |
	a4. a8 gis4 a |
	b c b2 |
	a8 b c2 bes4 |
	a d4. c16 b c8 d |
	e d c4 b a ~|
	a gis a4. g8 |
	f e f g a2 |
	g4 f g2 |
	f r |
	r a4. a8 |
	gis4 a b c |
	b2 a ~|
	a8 g a bes16 a g8 e' f d |
	e d16 e f8 c d f, g4 |
	a2.. b8 |
	cis2 d8 e d c |
	bes4 a g2 |
	a4. a8 bes4 a8 g |
	f g a4 b c |
	gis a2 gis4 |
	a2 r |
	r d4. d8 |
	cis4 d e f |
	e2 d8 f e d |
	c4. d8 bes a bes c |
	a4. g8 f4 e ~|
	e4.fis8 gis4 a~|
	a gis a2 |
	s1 |
	s |
	s |
	s |
	r2 a4. a8 |
	gis4 a b c |
	b2 a8 b c d |
	e f g e f e d e16 d |
	cis8 d b cis d e f4 |
	e d cis d~|
	d c2 bes4 |
	a2 d4. e8 |
	cis4 d2 c4 |
	b a b2 |
	e,4 f8 g a4. g8 |
	fis1 |

	\bar "|."
}

altoxxii = \relative c'
{
        \oneVoice
	d4. d8 cis4 d |
	e f e2 |
	\voiceTwo
	d4 c b a |
	gis a2 gis4 |
	a4 a'8 g fis e16 fis g4 ~|
	g8 f e d e2 ~|
	e d4 e |
	d4. e8 f4 cis |
	d2 e4 d8 c |
	b cis d2 cis4 |
	d4 f e4. f8 |
	d8 f e d cis4 d ~|
	d8 c c4 b e |
	f e8 d cis cis16 d e8 d16 e |
	f4 r r2 |
	r2 d4. d8 |
	cis4 d e f |
	e2 d2 ~|
	d8 e f2 e4 |
	f8 e d2 cis4 |
	d2 ~d8 b e4 |
	e1 |
	c8 e f e d8 f g f |
	e g a g fis4 g ~|
	g8 f e d cis4 d ~|
	d c bes2 |
	a g |
	f8 c' d4. c16 b c4 |
	b c d e |
	d2 c |
	\oneVoice
	r d4. d8 |
	cis4 d e f |
	e2 d4 a' |
	g4. f8 e4. d8 |
	\voiceTwo
	c f e4. d16 c d4 ~|
	d8 c b a gis4 a ~ |
	a gis a4. b8 |
	cis d e cis d e f g |
	a f g e f g a4 ~|
	a8 g f4 g a |
	g2 fis4 g ~|
	g f2 g4 ~|
	g f e2 |
	d4 c d2 |
	cis4 d2 cis4 |
	d1 |


}

tenorxxii = \relative c'
{
	\clef bass
	R1 |
	R |
	R |
	R |
	R |
	\oneVoice
	r2 a4. a8 |
	gis4 a b c |
	b2 a ~|
	\voiceOne
	a a8 g f4 |
	g a b a8 g |
	a4 d2 c4 |
	bes2 a |
	b4 a gis a~|
	a gis a8 a16 b cis8 b16 cis |
	\oneVoice
	d8 e f d e c d bes |
	c4 a bes2 |
	a8 g f e16 d cis4 d |
	a'8 bes a g fis2 |
	g4 a8 f bes g c c, |
	f4. f8 g4 a |
	\voiceOne
	a4. a8 gis4 a |
	b c b2 |
	a bes4 g |
	\oneVoice
	c2. bes4 |
	a bes a8 g f4 |
	g4 a2 g4 ~|
	g f2 e4 |
	\voiceOne
	f4. g8 a2 |
	b4 a d, a' |
	b2 e,4 c' |
	bes2 a |
	g4 f e a8 b |
	cis2 d4. c8 |
	bes4 b c g |
	\oneVoice
	a4. g8 f2 |
	e4 f e8 d c4 |
	d e f2 |
	R1 |
	r2 d4. d8 |
	cis4 d e f |
	e2 d |
	d'4. c8 bes2 |
	\voiceOne
	a e4. fis8 |
	gis4 a2 g4 ~|
	g f e8 d e4 |
	<d a'>1 |
}
bassxxii = \relative c
{
	R1 |
	R |
	R |
	R |
	R |
	s |
	s |
	s |
	d4. d8 cis4 d |
	e f e2 |
	d8 e f g a2 ~|
	a4 g2 f4 |
	e a, e'8 d c4 |
	d e a, r |
	s1 |
	s |
	s |
	s |
	s |
	s |
	d4. c8 b4 a |
	e'1 |
	a,2 r |
	s1 |
	s |
	s |
	s |
	r2 a4. a8 |
	gis4 a b c |
	b2 a4 a' ~|
	a g2 f4 |
	e d cis d |
	a'8 bes a g f4 fis |
	g2 r |
	s1 |
	s |
	s |
	R |
	s |
	s |
	s |
	s |
	a,4. a8 gis4 a |
	b c b2 |
	a1 |
	d, |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 22"
		\new Staff << { \soprxxii } \\ {\altoxxii} >>
		\new Staff << {\tenorxxii} \\ {\bassxxii} >>
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
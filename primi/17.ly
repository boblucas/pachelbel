soprxvii = \relative c'
{
	R1 |
	R1 |
	R1 |
	R1 |
	d2 c |
	d f |
	e b |
	c \change Staff="down" \voiceOne a4. b8 |
	c8 b16 a b8 cis d f, e cis' |
	d a d4 \change Staff="up" \oneVoice r8 a' a g |
	f d f16 g f e d8 a' d16 c b a |
	gis4 e8 fis gis a b16 a b gis |
	a4 e8 d c16 d c b a8 b |
	c2 \change Staff="down" \voiceOne r8 a8 d16 c bes a |
	bes2 r8 g8 c16 bes a g |
	a2 \change Staff="up" \oneVoice r |
	a' f |
	g \voiceOne bes |
	a e   |
	f \oneVoice d4. a8 |
	d16 f e d e g f e f8 d16 e f g a bes |
	a4 f r8 c' c bes |
	a f a16 bes a g f8 c' f16 e d c |
	b4 g8 a b c d16 c d b |
	c4 g8 f e16 f e d c4 |
	R1 |
	c'2 \voiceOne a |
	bes d | 
	c g |
	a \oneVoice f4. a8 |
	bes16 c bes a g8 bes a16 bes a g f8 c' |
	bes16 c bes c g8 bes a16 bes a bes g a g a|
	f8 a, b cis d16 e f8 e8.\trill d16 |
	cis4 a r8 d' d c | 
	bes g bes16 c bes a g8 d' g16 f e d |
	cis4 a8 b c d e16 d e c |
	d4 a8 g f16 g f e d8 a' |
	d16 e d c b8 b e16 f e d c8 c |
	f16 g f e d8 d e16 f g f e d cis b |
	cis8 a d4~d16 d e d cis8.\trill d16 |
	d1 |

	\bar "|."
}

tenorxvii = \relative c'
{
	\clef bass
	a2 f g bes a e f d |
	r r8 a' a g |
	f d f16 g f e d8 a' d16 c b a |
	gis4 e8 fis gis a b16 a b gis |
	\voiceTwo
	a4 e8 d c16 d c b a4 |
	\oneVoice
	s1 |
	d2 c d f e b c a ~ |
	a8 e' a16 g f e \voiceTwo f2 |
	r8 d g16 f e d e2 |
	f8 c d a \oneVoice bes g' c, e |
	f4 f, r8 d'' d c |
	bes g bes16 c bes a g8 d' \change Staff="up" \voiceTwo g16 f e d |
	cis4 a8 b cis d e16 d e cis |
	d4 \change Staff="down" \oneVoice a8 g f16 g f e d4 |
	R1 |
	f2 e f a g d e c4. d8 |
	e8 c g' f e g c16 bes a g |
	a4 f \change Staff="up" \voiceTwo r8 f' f e |
	d bes d16 e d c bes8 f' bes16 a g f |
	e4 c8 d e f g16 f g e |
	f4 \change Staff="down" \oneVoice c8 bes a16 bes a g f8 c' |
	d16 e d c bes8 d c16 d c bes a8 a |
	g16 a g f e8 g f4 e |
	d2 r |
	a' f g bes a e f d |
	r8 d g16 a g f e8 e a16 bes a g |
	f8 f bes16 a bes a g2 ~|
	g8 f e\trill d e2 |
	d1 |
}

\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 17"
		\new Staff="up" { \soprxvii }
		\new Staff="down" {\tenorxvii }
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
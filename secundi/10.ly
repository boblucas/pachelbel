soprx = \relative c''
{
	\key d \minor
	\time 6/8
	d4 d8 c d a |
	bes4. a4 d8 |
	g, a bes c4. ~|
	c4 bes8 a4 g8 |
	a2. |
	g4. r |
	g'4 g8 f g d |
	ees4. f |
	r8 g4 r4. |
	r8 f ees d4. |
	c2 d8 c |
	bes4. a |
	g b\rest |
	R2. |
	R2. |
	R2. |
	R2. |
	s2. |
	s2. |
	g'4 g8 f g d |
	ees4. d |
	c2. |
	f4 f8 ees f c |
	d4. c8 bes a |
	bes4. bes |
	bes4. bes |
	a2. |
	g4. ~ g4 fis8 |
	g4 g8 f g d |
	ees4. d |
	s2. |
	s |
	s |
	d'4 d8 c d a |
	bes4 bes8 a bes fis |
	g d g a d, a' |
	bes d, bes' c d, c' |
	d d, g r s4 |
	g' g8 f g d |
	<ees c>4. <d b>
	r8 g, c b4. |
	c2. ~|
	c8 g b r a fis |
	g2. |
	\bar "|."
}

altox = \relative c''
{
	R2. |
	g4 g8 f g d |
	ees2 d8 c |
	d g, g' fis4 e8 |
	fis2. |
	d4. d ~ |
	d4 c4. b8 |
	r b' c b\rest c b |
	c4 g8 r c bes |
	a4. r8 a bes ~ |
	bes a g a4. |
	g4. r |
	s2. |
	R | 
	R | 
	R | 
	R | 
	d'4 d8 c d a |
	\voiceOne
	bes4. d4. ~ |
	\voiceTwo
	d8 g, c4. b8 |
	c g c bes4. |
	a2. ~|
	a8 f bes4. a8 ~|
	a d, g4. fis8 |
	r8 fis g r fis g |
	r fis g r fis g ~|
	g4. fis |
	d4 d8 c d a |
	bes4. b |
	c4. ~ c4 b8 |
	\stemNeutral
	r d c r c b |
	r ees c r f b, |
	r c g' r ees a |
	\stemDown
	fis2. |
	g4. s |
	s2. |
	s2. |
	s4. r8 c fis, b2. |
	g4 g8 f g d |
	ees4. d |
	r8 c d ees f ees |
	d4. c |
	r8 d4 ~d4. |
}

tenorx = \relative c'
{
	R2. |
	R2. |
	R2. |
	R2. |
	\stemNeutral
	d4 d8 c d a |
	\stemUp
	bes4. a |
	s2. | 
	s | 
	s | 
	s | 
	s | 
	d4 d8 c d a |
	bes4. f' |
	r8 g, c4 c8 b |
	r ees g, r d' f, |
	r ees c' r f, b |
	r g c r g bes |
	a4 bes8 a4. |
	\change Staff ="up" \voiceTwo
	g'4 g8 f g d |
	\change Staff="down" \voiceOne \stemNeutral
	ees4. d |
	c r8 d ees |
	f4 f8 ees f c |
	d4. c4 f8 |
	bes,4. a |
	g a |
	bes c |
	\stemUp
	d r |
	s2. |
	s2. |
	g,4 g8 f g d |
	ees4. d |
	c d |
	ees c |
	a' r |
	d4 d8 c d a |
	bes4. fis |
	g a |
	bes a |
	g r |
	R2. |
	g4 g8 f g d |
	ees4. d4 c8 |
	g'4. a |
	r4 b2 |
	
}

bassx = \relative c'
{
	\clef bass
	\key d \minor
	\time 6/8

	R2. |
	R2. |
	R2. |
	R2. |
	s2. |
	g4 g8 f g d |
	ees4. d |
	c d |
	ees e |
	f2. ~|
	f4. fis |
	g4. ~ g4 fis8 |
	g4 g8 f g d |
	ees4. d |
	c b |
	c d |
	ees e |
	fis4 g4. fis8 |
	g4 s2 |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	s2. |
	d4 d8 c d a |
	bes4. a4 d8 |
	g,2. ~|
	g ~|
	g  |
	s |
	s |
	d'~|
	d~|
	d~|
	d~|
	d |
	g, ~|
	g ~|
	g ~|
	g ~|
	g ~|
	<< {s4.<d' g>} \\ {g,2.} >>
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 10"
		\new Staff= "up"  << { \soprx } \\ {\altox} >>
		\new Staff="down" << {\tenorx } \\ {\bassx} >>
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
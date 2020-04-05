soprix = \relative c''
{
	\key d \minor
	b8\rest g g g d d' d d c c c c bes bes bes bes |
	a8. g16 a c bes a bes8 bes16 c d e f g |
	a8 a,16 bes c d ees f g8 g,16 a bes c d ees |
	f8. ees16 d f ees d ees8 ees16 d c ees d c |
	bes4 a16 c bes a bes8. a16 bes c bes c |
	a8 f16 g a bes c d ees8 ees,16 f g a bes c |
	\stemNeutral
	d8 d,16 ees f g a bes c4. bes8 ~|
	bes16 a bes c bes8.\trill a16 bes8 bes a16 bes a g |
	fis4 g2 fis4 |
	<g bes,>8 bes,16 c d e f g a8 a,16 bes c d ees f |
	g8 g,16 a bes c d ees f4 ~f16 a g f |
	g4 ~ g16 a f4 g16 f e4 ~|
	e16 e f e d4 ~ d16 f e d d8.\trill cis16 |
	d8 a' a a d, d' d d |
	c c c c bes bes bes bes |
	a a,16 bes c d ees f g8 g,16 a bes c d ees |
	f8 f16 ees d ees f d ees2 |
	d8 d' d d  <g, ees>8 g' g g |
	f f f f ees ees ees ees |
	d8. c16 bes d c bes a4 ~ a16 f bes8 ~ |
	bes4 a <bes d,>8 d,16 e f g a bes |
	c8 c,16 d e f g a bes8 bes,16 c d e f g |
	a8. a16 g16 a g f e a g a e a d8 ~|
	d4 cis <d f,>8 f,16 g a bes c d |
	ees8 ees,16 f g a bes c d8 d,16 ees f g a bes|
	c8. bes16 a g fis e fis4 g ~|
	g fis <g bes,>8 bes,16 c d e f g |
	a8 a,16 bes c d ees f g8 g,16 a bes c d ees |
	f8 f' f f ees ees ees ees |
	d d d d c c,16 d ees f g a |
	bes8 g16 a bes c d e fis4 g ~ |
	g16 fis g a g8.\trill fis16 g8 f16 ees d f ees d |
	<<
	{
		ees8. ees8 ees16 d4. c4 ~ |
		c8 r16 c r b r a b2 |
	}
	\\
	{
		r8 g f8. f16 ees2 ~ |
		ees8 ees d c d2 |
	}
	>>
	\bar "|."
}

altoix = \relative c'
{
        s1 |
	s |
	r8 d d d g, g' g g |
	f f f f ees ees ees ees |
	d4 g c,8 d ees f |
	g16 d g4 fis8 g4 g8 g |
	f8 r2.. |
	\change Staff = "down" \voiceOne
	r2 r8 c d4 |
	c2 d4 ees |
	d2 c |
	s1 |
	
	r2 r8 a8 bes4 ~ |
	bes16 c g8 a4 g4. g8 |
	a2 g |
	f 
}

bassix = \relative c'
{
	\clef bass
	\key d \minor
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	r2 r8 g g g |
	d d' d d c c c c |
	bes bes bes bes a4 bes |
	\voiceTwo
	ees, f bes c ~|
	c8 c bes a16 g a8 d, d d |
	g, g' g g f f f f |
	
	ees ees ees ees d2 |
	e4 f bes, c |
	f~ f16 f e d e2 |
	d r8 bes16 c d e f g |
	\stemNeutral
	a8 a,16 bes c d e f g8 g,16 a bes c d e |
	f8 f f f ees ees ees ees |
	d8 d16 c b c d b c8 g c4 ~ |
	c b c8 ees16 f g a bes c |
	d8 d,16 ees f g a bes c8 c,16 d ees f g a |
	bes8 c d ees f16 ees f c d8. bes16 |
	c8 f,8 f f bes, bes' bes bes |
	a a a a g g g g |
	f f' e d cis a d8. f16 |
	e8 a, a a d, d' d d |
	c c c c bes bes bes bes a bes c a d a bes g |
	a d, d d g,	 g' g g |
	f f f f ees ees ees ees |
	d d16 ees f g a bes c8 c,16 d ees f g a |
	bes8 bes,16 c d ees f g a8 a a a |
	g g g g 
	<<
	{
		a8 d c bes a2 g2 |
	}
	\\
	{
		d4 ees c d b2 |
	}
	>>
	c2 ~ c8 c16 d ees16. ees32 d16 c g'2 g,


}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 9"
		\new Staff ="up" << { \soprix } \\ {\altoix} >>
		\new Staff ="down" {\bassix }
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
sopri = \relative c'
{
	\key d \minor
	R1 r2 d4 cis |
	d e f g |
	a2 g4 ~ g16 f g a |
	f a f a g f e d cis2 |
	d4 r g fis |
	g a bes c |
	d8 d, g bes r16 c16 bes c fis c bes a |
	bes d bes d c bes a g f4 r |
	r16 f' d f e d c bes a a' f a g f e d |
	cis2 d |
	r bes4 a |
	bes c d ees |
	f d8 c16 d ees f d ees c f ees f |
	d16 c bes8 bes8.\trill a16 bes d bes d c bes a g |
	f f' d f ees d c bes a4 r |
	r16 a f a g f e d c c' a c bes a g f |
	e8 c f4~f16 e g f e f d e |
	f2 r |
	g4 fis g a |
	bes c  d8 a8 ~ a16 c16 bes a |
	bes a g bes a g f e f4 r |
	r16 f d f e d c bes a a' f a g f e d |
	cis8 d e4. d8 ~ d16 e d cis |
	d8 e fis g a bes c16 d c d |
	bes4 r r16 
	<bes d,> <g bes,> <bes d,> <a c,> <g bes,> <f a,> <ees g,> |
	<d f,> <d' f,> <bes d,> <d f,> <c ees,> <bes d,> <a c,> <g bes,>
	fis d' c d g, d' c d |
	a d c d bes d c d fis, d' c d g, d' c d |
	a d c d bes d c d c d c bes a d c d |
	bes2 ~ bes16 a bes a bes8.\trill a16 |
	g1 |

	\bar "|."
}

bassi = \relative c'
{
	\key d \minor
	\clef bass
	g4 fis g a |
	bes c d8 d, r4 |
	r16 f d f e d c bes a a' f a g f e d |
	cis8 d16 e f2 e4 |
	d g a8 g f e |
	d d'16 c bes c bes a g8 g, r4 |
	r16 bes' g bes a g f ees d d' bes d c bes a g |
	fis4 bes a d |
	g, r d cis |
	d e f g |
	a8 e16 f g a f e f8 d d'16 c bes a |
	bes8 a16 g fis8 d g g, r4 |
	r16 d'' bes d c bes a g f f' d f ees d c bes |
	a8 f bes4 g a |
	bes8 d c4 bes r |
	r2 f4 e f g a bes ~|
	bes a g2 |
	f8 a16 g f g f ees d ees f ees d c bes a |
	bes8 g r4 r16 bes' g bes a g f ees |
	d d' bes d c bes a g fis4 d |
	g r d cis |
	d e f g a4. g8 f4 e |
	d4. e8 fis d e fis |
	<g g,>4 fis, g a b c 
	<< 
	{
		a'8 a bes bes | 
		fis fis g g a a bes bes | 
		fis fis g g a16 bes a g f bes a bes |
		g16 a32 bes c d e fis g2 fis4 |
		g1 |
	} \\
	{
		d,2~ d1 ~ d1 ~ d4. c,8 d2 g1
	}
	>>

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 1"
		\new Staff { \sopri }
		\new Staff { \bassi }
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
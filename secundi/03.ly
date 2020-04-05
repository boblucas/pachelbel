sopriii = \relative c'
{
	\key d \minor
	R1 |
	r |
	r8 d d d e4 e8 e |
	f g f e d e d cis |
	d4 ~ d16 d ees d c4 ~ c16 c d ees |
	d8 d g16 a g f e8 e a16 bes a g |
	fis8. g16 a g a fis g8 g, c16 d c bes |
	\clef bass a16 c bes c a bes g a f a g a f g e g |
	f8 g a16 d cis d b cis d e c8.\trill d16 |
	\clef treble d2 r8 g g g a4 a8 a bes c bes a |
	g a g fis g d8. g16 f g |
	ees4 d16 f ees d ees g f a g bes a g |
	fis d' c d a c bes a bes f g a a8.\trill g16 |
	g4 r r8 c,8 f16 g f ees |
	d f ees f d ees c d bes d c d bes c a c |
	bes8. a16 bes d c bes c bes c d c ees d c |
	d ees f g c,8.\trill bes32 c bes4 r |
	r8 d'8 d d e4 e8 e f g f e d e d cis |
	d4. d8 c16 d c d c ees d c |
	d c d ees d bes c d c bes c d c a bes c |
	bes c bes a g a g f e a g f e g f e |
	f2 r8 g c16 d c bes |
	a c bes c a bes g a f a g a f g e g |
	f f' ees f d f ees d ees f ees d c ees d c |
	d d c d bes d c bes c d c bes a c bes a |
	bes c a bes g bes a g fis4 r8 g' |
	fis4 r8 g, fis4 r8 g' |
	fis4 r8 g, fis16 a g bes a c bes d |
	c bes c d c ees d c bes8 c16 bes aes8.\trill g16 |
	fis4 g16 d g8 a8 bes16 c a8.\trill g16 |
	g1 |
	\bar "|."
}

tenoriii = \relative c'
{
	\clef bass
	\key d \minor
	r8 g g g a4 a8 a |
	bes c bes a g a g fis |
	g2 r8 g8 c16 d c bes |
	a c bes c a bes g a f a g a f g e g |
	f8 d bes'4~ bes16 bes a g a4 |
	bes2 c |
	r8 d,8 d d e4 e8 e |
	f g f e d e d cis |
	d e f d g e a g |
	fis d e fis g8. f16 ees16 f ees d |
	c8 c' f16 g f ees d f ees f d ees c d |
	bes d c d bes c a c bes4 b |
	c16 g c4 b8 c d ees c |
	d1 |
	r8 g,,8 g g a4 a8 a |
	bes c bes a g a g fis |
	g8 d' g g a g a f |
	bes d, ees f bes, c16 d ees f g a |
	bes8. c16 bes16 c bes a g8 g' \clef treble c16 d c bes |
	a c bes c a bes g a f a g a f g e g |
	f8 e16 f d8 d' ees, bes'  f a |
	bes, a' ees g a, g' d fis |
	g,16 a' g f e f e d cis2 |
	\clef bass r8 d, d d e4 e8 e |
	f8 g f e d e d cis |
	d16 d' c d  a d c bes  c d c bes  a c bes a |
	bes bes a bes  g bes a g  a bes a g  fis a g fis |
	g8 a bes c d d16 ees d c bes c |
	d8 d,16 ees d c bes c d8 d'16 ees d c bes c |
	d8 d,16 ees d c bes c d8 e fis g |
	a g fis4 g c~|
	c16 d c d bes8. a32 g fis16 d g c, d8 d, |
	g1 |
}


\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 3"
		\new Staff { \sopriii }
		\new Staff {\tenoriii}
	>>
	\layout {
	\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }}
	\midi {\tempo 4=120}
}
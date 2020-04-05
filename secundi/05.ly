soprv = \relative c''
{
	\key d \minor
	g4 a bes8 fis g a |
	bes fis g a bes4. a16 g |
	a8. g16 f8 g a8. g16 f d' c bes |
	a bes a bes c d c d bes4 c |
	d8 r16 d r d r d r d r d r d r d |
	r8 d ees4 d4. c8 |
	d4 c8. bes16 a8. g16 f8 g |
	a8. g16 f8 g8. c,16 f8 e4 |
	d8. r16 r4 g a |
	bes8 fis g a bes fis g a |
	bes4 ~ bes16 bes a4. g4 ~|
	g16 a f g e4 d' e |
	f8 cis d e f cis d e |
	f4 e~ e16 a, d8 ~ d8. cis16 |
	d8 c16 bes a8. bes16 c d bes c a c bes a |
	bes8 a16 g fis4 g8 a bes fis |
	g a bes fis g d'8. d16 e f |
	e f d e c d bes c a8 d g,8.\trill f32 g |
	a16 c d e f4 e16 f d4 cis8 |
	d8 a16 d c8.\trill bes16 r d e8 f cis |
	d e f cis d c d4 |
	c d bes a |
	<g bes>8 g4 fis8 g8 r16 d' r d r d |
	r d r d r d r d r d[ g8.] f16 ees\trill d |
	ees4 d4. g8 c,4 ~ |
	c bes ~ bes16 bes c d a8.\trill g16 |
	b1 |
	\bar "|."
}

altov = \relative c'
{
	s1 |
	r2 d4 e |
	f8 cis d e f cis d e |
	f4 e8 fis g4 f8. ees16 |
	d8 a' bes fis g a bes fis |
	g4. a8 bes fis g4 |
	f g ~ g16[ f e8.] d16[ c bes] |
	a[ d e8.] d16[ c bes a8] d4 cis8 |
	d8. d16 \change Staff = "down" \voiceOne c bes a c bes8 a16 g f e f8 |
	g \change Staff="up" \voiceTwo a d d d d d d |
	d16 ees f8 c8. e16 d4 ~ d16 d ees d |
	cis8 d8. d16 c8 \change Staff = "down" \voiceOne d16 a d4 c8 |
	d r16 g, r g r g r g r g r g r g |
	r a[ d8.] d16[ cis8]  \change Staff="up" \voiceTwo f8. f16 e d e8 |
	
	d e fis d e4 fis8 d |
	g4 r8 c, r16 d r d r d r c |
	r d r d r d r c d4 g ~|
	g8 f e g f4. e8 |
	f e d16 e f d g8 f e4 |
	f g a8 r16 a r a r g |
	r a r a r a r g a4 bes~|
	bes8 a bes4 g4. fis8 |
	d bes c4 d8 a' bes fis |
	g a bes fis g2 ~|
	g8 a bes fis g4. a8 |
	fis16. e32 d8 g2 fis4 |
	d1 |
}

bassv = \relative c'
{
	\clef bass
	\key d \minor
	R1 |
	r | 
	r | 
	r2 g4 a |
	bes8 fis g a bes fis g a |
	bes4 c d ees |
	<d d,> e, f8 cis d e |
	f cis d e f8. d16 g bes a g |
	fis e d8 e fis g ees d4 |
	\voiceTwo
	g,8 d'16 c bes c bes a g g' d c bes c bes a |
	g8 d'16 ees f4 bes,16 f' g a bes4 |
	a4.. g16 f4 e |
	d8 e f cis d e f cis |
	d4 a' r2 |
	R1 |
	g4 a bes8 fis g a |
	bes fis g a bes4 b |
	c2 d8 bes c4 |
	f, r r2 |
	\stemNeutral
	d4 e f8 cis d e |
	f cis d e f8. ees16 d16 g f g |
	ees ees' c f d bes c d ees d c bes c a d d, |
	<g g,>4 a, bes8 fis g a |
	bes fis g a bes4 b |
	c4 d ees~ees16 ees d c |
	d4 ~ d32 d e fis g16 c,, d2 |
	<g b'>1 |


}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 5"
		\new Staff ="up" << { \soprv } \\ {\altov} >>
		\new Staff ="down" { \bassv }
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
soprii = \relative c''
{
	\key d \minor
	g8 a16 g fis8 d g a16 g fis8 d |
	g4 a bes8 a g4|
	fis8 a g4 f8 bes a16 bes a g |
	a8 bes c4 ~c16 d c bes a c bes a |
	bes8 c d4 bes8 c d4 |
	bes4 c4. bes8 c16 d ees f |
	d4 c bes16 c bes c bes c bes c |
	a4 bes a g |
	f g a 8 g f4 ~|
	f16 f e d e4 r2 |
	g8 a16 g fis8 d g a16 g fis8 d |
	g4 a bes r |
	r2 d8 d16 c bes8 g d' d16 c bes8 g d'4 e |
	f e d8. d16 c8. c16|
	bes4 ~ bes16 d c bes a4 bes|
	a bes a8 b cis4 |
	d e4. d4 cis8 |
	d4 c8. d16 bes4 d |
	bes a bes c8 f,16 ees |
	d2 
	e16\rest c8 e8\rest 
	c8 c16
	e\rest bes8 bes16
	e\rest bes8 bes16
	e\rest a,8 a16
	e'\rest a,8 a16
	e'\rest bes8 bes16
	e\rest bes8 bes16
	e\rest d8 d16
	e\rest d8 d16
	e\rest d8 d16
	e\rest d8 d16
	e\rest e8 e16
	e\rest e8 e16
	e\rest e8 e16
	e\rest e8 e16
	e\rest fis8 fis16
	e\rest g8 g16
	e\rest g8 g16
	e\rest fis8 fis16
	e\rest g8 g16
	r4

	\bar "|."
}

altoii = \relative c'
{
	s1 a2\rest d8 d16 c bes8 g |
	d'8 d16 c bes8 g d'4 e |
	f ees8 f16 ees d8 g4 fis8 |
	g4 a g a ~ |
	a8 g4 f16 ees \change Staff = "down" \voiceOne d4 c |
	bes8 \change Staff = "up" \voiceTwo f'16 bes ~ bes8 a8 g2 |
	<d fis>4 <d g> <d fis> d |
	r8 d c16 d c bes a4 d ~|
	d cis d8 c16 d bes c d8 ~|
	d c d4 g, a |
	r16 bes c d ees f ees f d4 ~ d16 ees d ees |
	\change Staff = "down" \voiceOne
	c d bes c a c bes a bes8 a bes4 |
	a g~g16 \change Staff = "up" \voiceTwo g' f g f g f e |
	d e f g a[ bes c8.] c16[ bes8.] bes16 a8 ~|
	a16 a g fis g4 fis g |
	fis g f g |
	a4. g8 f4 e |
	d r16 g16 a8 d,4 a' |
	d,2. c4 ~ |
	c8 bes16 a \change Staff = "down" \voiceOne 
	bes4 r8 bes r a|
	r a r g r g r fis |
	r g r f r f r f |
	r g r g r g r g |
	r a r a r a r bes |
	r a r a r g r4 |
	\bar "|."

}

bassii = \relative c'
{
	\clef bass
	\key d \minor
	R1 |
	R1 |
	R1 |
	R1 |
	g8 a16 g fis8 d g8 a16 g fis8 d |
	g4 a bes4. a8 |
	bes d, e fis g a bes c |
	d,8 d16 c bes8 g d' d16 c bes8 g |
	d'4 e f ~ f16 f e d |
	a'4. g8 fis4 g8 f |
	ees4 d8. c16  bes4 d |
	ees c bes16 f' g a bes8 d, |
	e4 fis g8 fis g4 ~|
	g8 fis g4 r2 |
	R1 |
	r2 d'8 d16 c bes8 g |
	d'8 d16 c bes8 g d'4 e |
	f8 e16 d cis d e cis d d, f g a bes e, g |
	fis8 d e fis <g g,> a,16 g fis8 d |
	g8 a16 f fis8 d g4 a |
	bes4. d8 \voiceTwo ees4 f |
	d ees c d |
	g, a bes bes b b c c cis cis d d d d g, g |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 2"
		\new Staff = "up" << { \soprii } \\ {\altoii} >>
		\new Staff = "down" {\bassii }
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
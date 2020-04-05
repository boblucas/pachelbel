soprvi = \relative c'
{
	\voiceTwo
	r8 \voiceOne d f a f d d' d |
	c16 d c bes a c bes a bes c bes a g bes a g | 
	a4. gis8 a8. b16 c4 |
	b8 b e e a, a d4 ~ |
	d cis\trill d4. cis8 |
	d4 bes a2 |
	d,4  bes'2 a4 |
	g2 f |
	e2. r4 |
	c f e2 |
	a,4 d ~ d16 e d c b c d e |
	s1 |
	r8 d f a f d d' d |
	c16 d c bes a c bes a bes c bes a g bes a g |
	a1~ |
	a16 a g f g a d, f e c8 f16 f8.\trill e16 |
	f16 c d e   f4~  f16 f16 e8 d8. e16 |
	c8. d16 b8. d16 c8 a'[ c e]  |
	c a a' a g16 a g f e g f e |
	f g f e d f e d e4. e8~ |
	e16 e d c b d c b c8. bes16 a c bes a |
	bes c bes a g bes a g a bes a g f a g f |
	g a g f e g f e f4~f16 g f e |
	f4. d'8 e4 f |
	d e~e16 e d e f4~ |
	f e2 d4 ~ |
	d c2 bes4 ~ |
	bes a2 g4 ~|
	g f2\trill ~ f8 e~|
	e16 e fis g fis8.\trill e16 fis2 \bar "|."
}

altovi = \relative c'
{
	s1 s1 |
	 \voiceTwo
	r8 a c e c a a' a |
	g16 a g f e g f e f g f e d f e d |
	e8 a,8 a'8. g16 f4. e8 |
	f4 f e f~ |
	f g ~ g16 c, d e f4 ~|
	f e2 d4~ |
	d~d16 d c b a4. b8 |
	a4 c b c~|
	c b \change Staff = "down" \voiceOne gis8 a4 gis8 |
	\change Staff = "up"
	cis8. d16 e4~e16 a, d8 e16 \change Staff = "down" \voiceOne a, g a |
	f4. e8 d4 f |
	g a g2 |
	f4 s2.
	d4 bes'4. a8 g4 |
	a ~ a16 a g f g8 c8. c16 b8 ~|
	b16 b a8 ~ a16 a16 gis8 a4 e'8 b|
	e4 c d e | 
	d8 a' b4 gis8 e a4 ~|
	a gis a8 e f4 ~|
	f8 d e4. c8 d4 ~|
	\showStaffSwitch
	d8 b cis4 \change Staff = "up" \voiceTwo d~d16 e d c |
	d4. f8 g4 a |
	f bes c2 |
	bes a |
	g f |
	e d |
	cis4 d2~d8 e~|
	e4 cis <d a>2 \bar "|."
}

bassvi = \relative c
{
	\clef bass
	R1 R1 R1 R1 |
	r2 r8 d f a |
	f d d' d c16 d c bes a c bes a |
	bes c bes a g bes a g a4~ a16 f g a |
	bes g a bes c8 b16 c a8 g16 a b c b a |
	gis8 e fis gis a8 a, c e c a a' a g16 a g f e g f e |
	f g f e d f e d e2 |
	a,8 a'8. g16 f e f8. e32 d \voiceTwo cis4 |
	d4. cis8 d4 d |
	e f2 e4 |
	f16 f' e d c bes a g f g a g f e d c |
	bes2 c |
	f4 r2. |
	r2.. \voiceTwo gis8 |
	a2 b4 cis |
	\clef "treble_8"
	d2. c4 |
	b e a,4. f8 |
	g4. e8 f4. d8 |
	e4 a r8 \clef bass \voiceOne d,, f a |
	f d d' d c16 d c bes a c bes a |
	bes c bes a g bes a g a4~a16 a' g f  \voiceTwo  |
	g f'e d c bes a g f e' d c bes a g f |
	e d' c bes a g f e d c' bes a g f e d |
	c bes' a g f e d c bes a' g f e d c bes |
	a g' f e d c bes a \voiceOne gis2 |
	a <d d,> \bar "|."
}



\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 6"
		\new Staff = "up" << { \new Voice { \voiceOne \soprvi } } \\ { \new Voice { \altovi} } >>
		\new Staff = "down" << { \bassvi } >>
	>>
	\layout  
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			\Score
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4)
		}
	}
	\midi {\tempo 4=100}
}

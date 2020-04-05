soprv = \relative c'
{
	\time 12/8
	d8 e d e f e f g f g f g |
	a4 f8 g4 a8 d,4 d'8 c4 b8 |
	c4. b a b4 a8 |
	gis4 a8 b4. c d |
	e4 e8 b4  cis8 d2.~|
	d8 cis b cis4. d cis
	d e4 d8 cis4 d4. c8~|
	c4 b8 b4. ~ b4 a8 a4. ~|
	a gis a gis |
	a b4 a8 gis4 a4. gis8 |
	a4. a bes2 c8 g |
	a4. R2.*3/2 |
	R1. |
	d,8 e d e f e f g f g f g |
	a4 f8 g4 a8 d,4 d'8 c4 b8 |
	c4. R2.*3/2  |
	R1. |
	\oneVoice
	a8 b a b c b c d c d c d |
	e4 c8 d4 e8 a,4 a'8 g4 f8 |
	g4 g8 f4 e8 \voiceOne  f4. e |
	d e4 d8 cis4 d8 e4. |
	\voiceOne
	f g e4 f8 d4 e8 |
	c4. d e d4 c8 |
	b4 c8 b4 b8 c4 c8 f4.~|
	f8 e d e4. f4 c8 d4. |
	e2. a,4. cis4. |
	d e4 d8 cis4 d4. c8 ~|
	c4. bes a2. |
	g f |
	e d |
	\clef bass
	r8 a d r a d r g, d' r a d | \noBreak
	r bes d r bes d r bes d r bes d | \noBreak
	r bes d r bes d r a d r g, cis | \noBreak
	r a d r4. r2. \break
}
altov = \relative c'
{
	s1. s1. |
	a8 b a b c b c d c d c d |
	e4 c8 d4 e8 a,4 a'8 g4 f8 |
	g2. f8 e f d e f |
	e2 a8 g f4. g |
	a g4 f8 e 4 f8 e4. |
	\showStaffSwitch
	f4. \change Staff="down" \voiceOne e4 d8 e4. d4 c8 |
	\change Staff="up" \voiceTwo
	d e f e f d <c a>4. d |
	e f b,4 c8 b4. |
	c f2 g8 d e4. |
	f4. r8 c f r d g r e a |
	\hideStaffSwitch
	r f e r d a' r8 cis, d e \change Staff = "down" \voiceOne a, g|
	f4. a2. g4. |
	f e fis gis |
	\showStaffSwitch
	a4 \change Staff = "up" \voiceTwo e'8 f4.~f4 e8 d e f |
	\change Staff="down" \voiceOne	
	e4. d c b c e2. d4. |
	c4. b cis4 d2 ~ |
	\hideStaffSwitch
	d4. cis d8 e d e f e |
	\change Staff="up" \voiceTwo 
	f g f g f g a4 f8 g4 a8 |
	d,4 d'8 c4 b8 c b a b a gis |
	a4. g4.~g4 c8 b4 a8 |
	gis4 a4. g8 a4 <c a>8 <bes g>4 <a f>8 |
	
	\voiceThree bes2 \voiceTwo c8 g a2.~ |
	a4 a8 g a e <f d>4. g4. |
	a bes e,4 f8 e4. |
	fis4. g2. f4. ~ |
	f e2. d4. ~ |
	d4. cis a bes |
	fis2. d4. fis |
	g1. ~|
	g4. g4. fis e |
	fis s4. s2. \bar "|."
}
bassv = \relative c
{
	\clef bass
	R1. R1. R1. R1. R1. |
	r2. d8 e d e f e |
	f g f g f g a4 f8 g4 a8 |
	d,4 d'8 c4_\trill b8 c4. b4_\trill a8 |
	b4. e, a,8 b a b c b  |
	c d c d c d e4 c8 d4 e8 |
	a,4 a'8 g4 f8 g4. c,4. |
	f8 g a a,4. bes c |
	\voiceTwo
	d f e4 d8 cis4. |
	d cis d e~ |
	e4 d4. c4. b8 e4. |
	a, a'8 g f g c, c'4. b8 |
	c g c4 fis,8 b4 e,8 a4 a8 gis |
	a4. gis a b ~|
	b4 a4. g f8 bes4. |
	e, a d, d\rest |
	s1. s1. |
	\stemNeutral
	a'8 b a b c b c d c d c d |
	e4 c8 d4 e8 a,4 s2 |
	\change Staff="up" \voiceTwo g'4. \change Staff="down" \voiceOne \stemNeutral c, f e4 d8 |
	cis2. \clef bass d,,8 e d e f e |
	f g f g f g a4 f8 g4 a8 |
	d,4 d'8 c4 bes8[ c ] c'[ bes a] d[ a, bes]
	 bes'[ a g] c[ g, a] a'[ g f] bes [ f, g ] 
       g'[ f e] a[ a,] fis'[ d fis] g g, g' |
	d4. c bes a |
	g a bes c  |
	d1. |
	d4. d, r2. |
}


\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 5"
		\new Staff ="up" << { \soprv } \\ {\altov} >>
		\new Staff ="down" << { \bassv } >>
	>>
	\layout  {
	\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }}
	\midi {\tempo 4=100}
}
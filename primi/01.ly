\header { tagline = "" }

sopri = \relative c' {
	d4 a' f8 d bes'4 | 
	a8 g f e d4. e8 |
	f4. g8 a2 |
	gis4 a8 b c4. d16 c | 
	b4 e4. d4 cis8 |
	d2 cis4 d8 e |
	f2 e |
	d8 c16 d b8 c16 d c4. d8 |
	bes8.\trill a16 g8 a16 bes a8 g f4 |
	e4 f8 g a2 |
	gis4  a8 b c2 |
	bes2 a2~ | a8 g16 a f8.\trill e16 
	
	<<
	\relative c'
	{
		
		a'4 d |
		c8 a \stemNeutral f'4 e8 d c b |
	}\\
	\relative c'
	{
		f4. g8 |
		a4
	}
	>>
	\stemNeutral
	a4 ~ a16 a b c b8 g c4 |
	d4 ~d16 d e  f e8. f16 g f g e |
	\stemUp
	f g f g a g f4 g16 f e f d e |
	f8. a16 g a g a f4 e |
	f g a4. g8 |
	f2 e4 f |
	e d e2~ |
	e4 d2 c4 |
	b2 a |
	r16 g f g e a g a f4 e |
	f g a2 ~|
	a4 bes ~ bes8. bes16 a8.\trill g16 |
	fis2 g8 d' e8. d16 |
	cis e d cis d f e d a' d, e d d8.\trill cis16 |
	d8 a bes16 a bes g a g a f g f g e |
	f4 g16 f g e f e f d e d e cis |
	d a bes e a, d g, cis d4 \oneVoice r4 |
}
altoi = \relative c' 
{
	\showStaffSwitch
	s1 |
	s1 |
	\change Staff = "down" \voiceOne
	\stemNeutral
	a4 d c8 a f'4 |
	e8 d c b a4 \change Staff = "up" \voiceTwo a'~ |
	a8 g f e f4 e |
	f g a2 ~ |
	a8 b16 c b8. a16 gis8 e a4~|
	a gis a8 e f4~ |
	f e2 d4 |
	cis  d e d | 
	e2. f4 ~ |
	f8 g16 f e4. \change Staff = "down" \voiceOne a,8 d4~ |
	d4 cis d2 |
	e4 d c e~ |
	e d2 c4~ |
	c b4 c8 d e c |
	\change Staff = "up" \voiceTwo
	d e f  a g c,  c' bes |
	a f bes c d4. cis8 |
	d4. e16  d cis8 b a b16 cis |
	d2 <c a>4. b8 c4 b8 a gis fis16 gis a8 b |
	c8. b16 a8 b gis e a4~ |
	a g2 f16 d c d |
	b4 cis d cis |
	d2 cis4 d8 e |
	f2 e  |
	d2. g4 ~ |
	g f e2 |
	f4 g8 e f d e cis |
	d a bes16 a bes g a g a f g f g e |
	f8 g f e << f4 a4 >> s4
}
bassi = \relative c
{
	\clef bass
	R1 |
	R1 |
	s1 |
	s1 |
	r2 d4 a' |
	f8 d bes'4 a8 g f e |
	d4 d'2 c4 |
	b e a, d |
	g, c4 f,4. g8 |
	<a a,>4 d, c8 a f'4  |
	e8 d c b a4 a' |
	g  c, f2 |
	e4 a d, bes' |
	a d, a'4. g8 |
	f2. e4 |
	
	d g \stemDown c, \stemNeutral r4 |

	R1 |
	\clef treble
	r2 d'4 a' |
	f8 d bes'4 a8 g f e |
	d e f g \clef bass a,4 d |
	c8 a f'4 e8 d c b |
	a g f4 e2 ~ |
	e8 b' e16 f e d cis8 a r4 |
	r2 d,,4 a' |
	f8 d bes'4 a8 g f e |
	d4 d' c2~|
	c8. c16 bes8.\trill a16 bes2 |
	a1 |
	d,1 ~ |
	d1 ~ |
	d1 \bar "|."
}

\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 1"
		\new Staff = "up" << { \sopri } \\ {\altoi} >>
		\new Staff = "down" { \bassi }
	>>
	\layout { \context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver } }
	\midi {\tempo 4=100}
}
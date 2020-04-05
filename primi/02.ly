rh = \markup { \postscript # "0.20 setlinewidth 0.5 -1.75 moveto -1 0 rlineto 0 2.5 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprii = \relative c'
{
	s1 s1 s1 s1 |
	s1 s1 s1 s1 |
	s1 s1 s1 s1 |
	r4 d a'4. a8 |
	f4 d a'8 b c4 |
	b2 a4. b8 |
	c2 ~ c8 d16 c b8 a |
	b4 e4. a,8 d4~|
	d cis d2 |
	c8 b16 c a2 gis4 |
	a2 r2 |
	\stemNeutral
	r2. a4 |
	d4. d8 cis4 a |
	d8 e f4 e2 |
	d ~ d8 c bes a |
	bes4 f8 \stemUp g a c d e |
	
	f e f g16 f e2 |
	d8 e f g16 f e8 d e f16 e |
	d8 e16 f e8 d c2 |
	b2 a8 e' f g |
	a a, b cis d f e4 |
	d4. cis8 d e f4 |
	e cis8 d16 e f8 e d4 ~ |
	d c2 bes4 |
	a2 bes |
	a a~|
	a4. b8 c4. b16 a |
	d2. cis4 |
	d4. c8 bes2 |
	a ~ a8 g16 f e8 a |
	fis1 |

}

altoii = \relative c'
{
	r4 \voiceOne a d4. d8 |
	cis4 a d8 e f4 |
	e2 d |
	cis8 d e4 d8 e f g16 f|
	e4 a2 gis4 |
	a e8 f g f16 g a8 g |
	f2 e |
	f8 e f g a4. g8 |
	f4 e8 d g2 |
	fis8 d g4. f16 e f4 ~ |
	f8 c d c bes a bes c16 bes |
	a8 c \voiceTwo f2 e4 ~ |
	e d e2 |
	d e |
	f4 e8 d cis4 a~ |
	a8 b c d e4 fis |
	g8 g f e f4. f8 |
	e2 f |
	e4. f16 e d8 c d e16 d |
	cis8 e f g a4 g |
	\showStaffSwitch
	f e4. \change Staff = "down" \voiceOne a,8 d4 ~ |
	\hideStaffSwitch
	d8 f e d e2 |
	d2. c4 |
	bes2 a |
	g4 r2. |
	\change Staff = "up" \voiceTwo
	r4 
	%\once \override TextScript.outside-staff-priority = ##f
	%\once \override DynamicLineSpanner.outside-staff-priority = ##f

	d'_\lh a'4. a8 | 
	f4 d_\lh a'8 b c4 |
	b2~b8 e, a4~ |
	a gis a g |
	f e d8 a' g4 |
	f8 g16 f e4 f8 g a4 ~ |
	a2 a |
	g fis4 g ~ |
	g8 f16 e f4. f8 e d |
	cis4 d2 cis4 |
	d8 e f4 e2 |
	d4. e8 f4 e |
	d2 ~ d8. f16 e8 d |
	cis4 d2 cis4 |
	d1 \bar "|."
}

tenorii = \relative c
{
	\clef bass
	\showStaffSwitch
	R1 R1 |
	d2.\rest d4 |
	a'4. a8 f4 d |
	a'8 b c4 b2 |
	a8 b cis d \change Staff = "up" \voiceTwo e2 ~|
	e8 a, d2 cis4 |
	d2  e8 d cis4 |
	d2. \change Staff = "down" \voiceOne  c4 ~ |
	c bes a2 ~ |
	a g |
	a g |
	f8 e f g16 f e2 |
	d8 e f4 e a ~|
	a gis a r |
	R1|
	\stemNeutral
	d,2.\rest d4 |
	a'4. a8 f4 d |
	a'8 b c4 b2 |
	a4 g f8 a bes c |
	\voiceTwo
	d d, g4 f2 |
	bes a |
	f8 e d4 g a ~ |
	a g2 fis4 |
	g8 f16 e d8 e f4 e |
	\stemNeutral
	d2. cis4 |
	d2 d2\rest |
	R1 R1 R1 |
	d4\rest a'4 d4. d8 |
	cis4 a d8 e f4 |
	e2 d~|
	
	d4. \voiceOne d,8 g2~ |
	g8 f8 f e16 d e2 |
	d e4 a ~|
	a gis a2 ~|
	a8 d, a'2 g8 f |
	e4 f e a^\rh ~ |
	a1 \bar "|."
}
bassii = \relative c
{
	R1 R1 s1 s1 |
	s1 s1 |
	d2.\rest a4 |
	d4. d8 cis4 a |
	d8 e f4 e2 |
	d2.. e8 |
	f2. e4 |
	f4. a,8 b4 cis |
	d2. cis4 |
	d2 c4 a |
	d e a, r |
	R1 s1 s1 s1 |
	s1 s1 s1 s1 |
	s1 s1 s1 s1 |
	R1 R1 R1 s1 |
	s1 s1 s1 |
	r4 d, a'4. a8 |
	f4 d a'8 b c4 |
	b2 a4. g8 |
	fis2 g ~ |
	g4 f8 g a2 |
	d,1 \bar "|."
}


\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 2"
		\new Staff = "up" << { \soprii } \\ {\altoii} >>
		\new Staff = "down" << {\tenorii} \\ {\bassii} >>
	>>
	\layout {
	\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }}
	\midi {\tempo 4=100}
}
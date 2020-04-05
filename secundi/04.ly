\include "merge.ly"
rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

sopriv = \relative c''
{
	\key d \minor
	g2 a |
	bes4 a8 bes g a bes c |
	d2 ~ d8 d c bes |
	a b cis4 d2 |
	c4 f8 ees d2 |
	c d8 ees c d |
	bes2 ~ bes8 bes a4 |
	g c bes2 |
	a4. d4 cis16 b cis4 |
	d cis d2 ~|
	d4 c2 bes4 ~|
	bes a2 g4 ~|
	g fis g2 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r4 g a2 |
	bes4 a8 bes g a bes c |
	d ees f d ees f d c |
	d2 g,4 a |
	bes1 |
	a4 d2 cis4 |
	d e f2 |
	e d |
	c bes |
	a g |
	R1 |
	r |
	r |
	r4 d' e2 |
	f4 e8 f d e f g |
	a2 d,4. ees8 |
	c2 bes ~ |
	bes4 a g a |
	bes2 a4 d ~ |
	d8 d c bes c2 ~|
	c4 bes a2 |
	g1 |

	\bar "|."
}

altoiv = \relative c'
{
	s1 |
	s |
	r4 d e2 |
	f4 e8 f d e f g |
	a4 f bes8 f bes4 ~|
	bes4 a bes a~|
	a8 d, g4. g8 fis4 |
	g fis g2 ~|
	g4 f g2 |
	d4 g f2 |
	
	e_\lh d_\lh |
	c_\lh bes_\lh |
	
	r1 |
	R |
	R |
	\stemNeutral
	r4 d e2 |
	f4 e8 f d e f g |
	a4. a8 g f16 g e8 a |
	f4. f8 ees d16 ees c8 ees |
	\stemDown
	d2 ees4 d ~|
	d r2. |
	s2. 
	\change Staff = "down" \voiceOne
	a4 |
	bes8 c d bes ees4 d8 c |
	d4 g,8 a bes c d e |
	\showStaffSwitch
	\change Staff ="up" \voiceTwo 
	f2 g |
	a8 b cis4 d2 ~|
	d8 c16 b c2 bes4 ~|
	bes8 a16 g a2 g4 ~|
	g fis g2 |
	R1 |
	s |
	s |
	s |
	s |
	\hideStaffSwitch
	\change Staff ="down" \voiceOne  
	c,2~ c8 bes16 a bes4 ~ |
	bes a g8 \change Staff ="up" \voiceTwo  d' g4 ~|
	g fis g fis |
	g2 f |
	g2. a4 |
	fis g2 fis4 |
	g1
}

tenoriv = \relative c'
{
	\clef bass
	\key d \minor
	R1 |
	R |
	R |
	R |
	R |
	R |
	g2 a bes4 a8 bes g a bes c |
	d a d4 g,2 |
	a4 g a2 |
	s1 |
	%\once \override Rest.staff-position = #2
	r2. g4 |
	a2 bes4 a8 bes |
	g a bes c d2 |
	a8 bes c bes16 a g8 a bes4 |
	a d2 cis4 |
	d4 cis d2 ~|
	d8 a d2 cis4 |
	d8 a bes2 a4 ~|
	a g2 fis4 |
	g fis g4. a8 |
	bes2. s4 |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r2. g4 |
	a2 bes4^\rh a8 bes |
	\showStaffSwitch
	g a bes c \change Staff ="up" \voiceTwo d ees f d |
	ees4. d8 c4 f8 ees |
	d8 e16 f g8 f e4 a8 g |
	\change Staff ="down" \voiceOne
	f e d2 cis4 |
	d cis d2 |
	s1 |
	\voiceTwo
	e,4 fis g2 |
	\voiceOne
	c2^\rh d4^\rh c^\rh |
	d2.^\rh a4 |
	
	g2.
	\once \override Score.AccidentalPlacement.right-padding = #0.8
        ees'4^\rh |
	a, bes8 c d4. c8 |
	b1 |
}
bassiv = \relative c
{
	R1 |
	R |
	R |
	R |
	R |
	R |
	s |
	s |
	d2 e f4 e8 f d e f g |
	a bes c a bes a g f |
	e4 fis g8 f ees d |
	c4 d g,8 g' f g |
	ees4. d16 c bes8 c d ees |
	f4 c8 d ees f g4 ~|
	g f g a |
	d, a' bes4. a16 g |
	f2 e4 a |
	d,2 c |
	bes c4 d |
	g, d' ees2 |
	d c |
	bes4 r2. |
	R1 |
	d2 e |
	f4 e8 f d e f g |
	a4. a,8 bes c d e |
	f4. f,8 g d' ees d |
	c4 d g,8 g' f g |
	ees4. d16 c b8 c d b |
	c4 g' a f |
	bes b c cis |
	d8 c bes a g4 a |
	d, a' bes 2 |
	a4 g8 fis g2 |
	s2. g,4 a2 bes4 a8 bes |
	g a bes c d2 |
	ees2 ~ ees8 ees d c |
	d1 |
	<g g,>1 |

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 4"
		\new Staff = "up" << { \sopriv } \\ {\altoiv} >>
		\new Staff = "down" << {\tenoriv} \\ {\bassiv} >>
	>>
	\layout 
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
	}
	\midi {\tempo 4=100}
}
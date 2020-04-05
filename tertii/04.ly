%#(set-global-staff-size 17)
rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }


sopriv = \relative c''
{
	g16 d e fis g a b c d8 a d8.\trill c16 |
	b8. b16 c8 d e4. c8 |
	b4. b8 c4 d16 e d b |
	c8 d16 e f2 e4 |
	d2 a |
	b8. d16 c d c d b8 c d4 ~|
	d8 d c2 b4  |
	c8. g16 f4 e b'\rest |
	b2\rest g16 d e fis g a b c |
	d8 a d8.\trill c16 b8. b16 c8 d |
	e8. e,16 f8 g a8. a16 g4\trill |
	f4 e d8. g16 f g f g |
	c g a b c d e f g8 d g8.\trill f16 |
	e8. e16 f8 g a8. a16 g a g a |
	f8 g16 f e4\trill d8 a~ a16 b c d |
	b4 e~ e16 e d c d4 ~|
	d c8 d16 c b2 |
	a g8. d'16 c4\trill |
	b8. b16 c8 d e8. e16 d4\trill |
	c8. c16 d8 e f2 |
	e d |
	c8. g'16 f4\trill e8. c16 d8 e |
	f4 e16 r8. d16 r4 c16 d c |
	b2 a |
	b8. d16 c4\trill b8. b16 c8 d |
	e4 r e r |
	c16 e c e  c e c e c e c e c e c e |
	c16 e c e c e c e b d b d a c a c |
	<b d>4 r b16 d b d a c a c |
	<g b>4 r b16 d a c g b fis a |
	<g b,>1
	\bar "|."
}

altoiv = \relative c'
{
	s1 |
	r2 c16 g a b c d e f |
	g8 d g8. f16 e8. e16 f8 g |
	a4. g16 f g8 c, c'4 ~|
	c b8 g4. fis4 |
	g8. b16 a8 a g4. f8 |
	e4. e8 d2 |
	c8. e16 d4 c ~ c16 c b c |
	\showStaffSwitch
	d4 ~ d16 e d c \change Staff="down" \voiceOne b4. b8 |
	a2 g4 a8 b |
	c8. c16 b4 a8. a16 b8 c |
	\change Staff="up" \voiceTwo
	d4 c b r |
	\hideStaffSwitch
        \change Staff="down" \voiceOne
	e2 d |
	c ~ c8 a b cis |
	d4 cis d2 ~|
	d8 \change Staff="up" \voiceTwo g8 ~ g16 g f e f4 ~ f16 f e d |
	e8 a, a'2 g4 ~ |
	g fis g8. b16 a4 |
	g8. g16 a8 b c8. c16 b4 |
	a8. a16 b8 c d2 ~ |
	d4 c2 b4 |
	c8. e16 d4 c8. e,16 f8 g |
	r16 a bes a r g a g r f g f e r8. |
	d4. g fis4 |
	g8. b16 a4 g8. g16 a8 b |
	c4 r c r |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
}

bassiv = \relative c'
{
	\clef bass
	R1 |
	R1 |
	R1 |
	R1 |
	g16 d e fis g a b c d8 a d8.\trill c16 |
	b8. b16 c8 d e d16 c b4 |
	c,16 g a b  c d e f  g8 d  g8.\trill f16 |
	e8. e16 f8 g a e a g |
	fis d e fis g4. g8 ~|
	g4 fis g f |
	e8. c16 d8 e f8. f16 e4 |
	d8. d16 e8 f g8. g16 a8 b |
	c2. b4 |
	c8 bes a g f4 e |
	d a'8 g fis4 d |
	g4 r4 r2 |
	r2 g16 d e fis g a b c |
	d8 a d8.\trill c16 b8. b16 c8 d |
	e4 d\trill c8. c16 d8 e |
	f4 e\trill d8 d16 e f8 d |
	<< { \voiceOne g2^\rh} \\ { \voiceTwo c,,16 g a b c d e f } >>
	g8 d g8.\trill f16 |
	e8. e16 f8 g a4 g\trill |
	f1 |
	g,16 d e fis g a b c d8 a d8.\trill c16 |
	b8. b16 c8 d e4 d\trill |
	c16 c' b c g c e, g c, c' b c g c e, g |
	c,4 d e fis |
	g1 ~|
	g16 g fis e d c b a g2 ~|
	g16 g'16 fis e d c b a g2 ~|
	g16 g' fis e d c b a g2 |

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 4"
		\new Staff ="up" << { \sopriv } \\ {\altoiv} >>
		\new Staff ="down" << { \bassiv } >>
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
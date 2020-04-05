\version "2.18.2"
rh = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }
rha = \markup { \postscript # "0.20 setlinewidth 0.1 -2.4 moveto -0.5 0 rlineto 0 2.6 rlineto stroke" }
rhb= \markup { \postscript # "0.20 setlinewidth 0.5 -2.4 moveto -1.0 0 rlineto 0 2.6 rlineto stroke" }
#(set-global-staff-size 17)

soprxii = \relative c''
{
	a8\rest a g a d,4 bes' |
	a8 g f e d e f g |
	a4. b8 c4. b16 a |
	gis2  a8 g16 f e8 f |
	g2 f4. g16 f |
	e2 f4. g8 |
	a4. g8 f2 | 
	e4 a2 g4 |
	f4. g8 a2 |
	gis2 a ~|
	a4 g2 f4 |
	e2 f4 r |
	s1 |
	s1 |
	s1 |
	r8 d' c d a4 f' |
	\oneVoice
	e8 d c b a a' g f |
	g a f e f e \voiceOne d4 ~|
	d c2 bes4 |
	a4. b8 c b c d |
	e4. d8 c2 |
	bes a~|
	a4 r s2 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\oneVoice
	r2 r8 a' g a |
	d,4 bes' a8 g f e |
	d c bes a g c bes a16 g |
	\voiceOne
	a8 d4 c8 b4~b16 d cis b |
	cis 4 b8 cis d2 |
	cis4 d8 e f2 |
	e d~|
	d c4 b8 a |
	gis2 a~ |
	a4 g2 f4 ~|
	f4 e2 d4 ~|
	d2 cis4 d~|
	d8 d cis b cis2\trill |
	d1 |
	\bar "||"

	s1 |
	s1 |
	s1 |
	s1 |
	a'4. b8 c4 d |
	e2 d c bes |
	a2. \shape #'((0 . 1.5) (0 . 1.9) (0 . 1.9) (0 . 1.5)) Tie g4  ~|
	g f2 e4 |
	f2 r |
	s1 |
	s1 |
	s1 |
	r2 d'4. e8 |
	f4 g a8 a g8. f16 |
	e16 f g f e f d e f8 e16 d e g f e |
	d8. e16 c8. d16 b8 e ~e16 a, d8 ~|
	\pageBreak
	d4 cis16 d b cis d2 ~| \noPageBreak
	d8 f e d c2 | \noPageBreak
	s1 r8 e4 d8 c4 b | \noPageBreak
	a1~| \noPageBreak
	a4 s2. | \noPageBreak
	s1 | \noPageBreak
	s1 | \noPageBreak
	s2 a4. b8 | \noPageBreak
	c4 d e8 d c4 | \noPageBreak
	b2 \shape #'( (0 . 1) (0 . 1) (0 . 1) (0 . 1) ) Tie  a~| \noPageBreak
	a4 g2 f4 | \noPageBreak
	e2. fis8 g | \noPageBreak
	fis1 | \noPageBreak
	\bar "||"
	
	r8 a g a d,4 bes' | \noPageBreak
	a8 g f e d d' c8. bes16 | \noPageBreak
	a4 b c2~| \noPageBreak
	c8 b a4 gis2 | \noPageBreak
	a4. g16 f g2 | \noPageBreak
	r8 d'4~d16 e16 f4 g | \noPageBreak
	a4. g8 f2 | \noPageBreak
	e8 d c b16 a b4 c | \noPageBreak
	b2 c | \noPageBreak
	s2 r8 a g a | \noPageBreak
	d,4 bes' a8 g f e | \noPageBreak
	d4 r2. | \noPageBreak
	\oneVoice
	R1 | \noPageBreak
	r2 \voiceOne r8 e'8 d e | \noPageBreak
	a,4 f' e8 d c b | \noPageBreak
	a4 d2 cis4 | \noPageBreak
	d4. e8 c2 ~| \noPageBreak
	c4 bes2 a4~| \noPageBreak
	a8 a g f e4 a~| \noPageBreak
	a gis a4. b8 | \noPageBreak
	c4 d e2 | \noPageBreak
	a,4 bes2 a4 | \noPageBreak
	g2 a | \noPageBreak
	R1 | \noPageBreak
	r8 a' g a d,4 bes' | \noPageBreak
	a8 g f e d4 g8 f | \noPageBreak
	e d c4 f8 e d4 | \noPageBreak
	e8 d c d b2 | \noPageBreak
	c8 b c d e4. d8 | \noPageBreak
	c2 b | \noPageBreak
	a1~| \noPageBreak
	<a f>4 g f e | \noPageBreak
	f g a2 ~| \noPageBreak
	a1 ~ | \noPageBreak
	a1 | \pageBreak
	\bar "|."

}
altoxii = \relative c'
{
	s1 |	
	s1 |
	r8 d c d a4 f' |
	e8 d c b a b c d |
	e d16 c b8 cis d a d4 ~|
	d cis  d2 |
	cis2 d ~|
	d8 c16 b c4 d2 ~|
	d e4 d |
	e1~|
	e2. f4 |
	r8 a8 g a d,4 bes' |
	\oneVoice
	a8 g f e d e f g |
	e c f2 e4 ~|
	e8 f d4. e16 d cis4 |
	\voiceTwo
	d4 r4 r2 |
	s2. \change Staff="down" \voiceOne d4 ~|
	d cis d8 e \change Staff="up" \voiceTwo f g |
	a e a g fis d g4 |
	f2 e4 a |
	gis2 a ~|
	a4 g2. |
	f4 e8 d \voiceOne cis2 |
	d4 r2. |
	\oneVoice
	r8 d8 c d a4. f'8 |
	e d c b a b c d |
	e4. d16 c d8 e c b |
	c e f g a4 g |
	\showStaffSwitch
	\change Staff="down" \voiceOne
	f4. g16 f e2|
	f4 g f c |
	d g8 f e4 d8 e |
	\change Staff="up" \voiceTwo
	f4 e8 a8 ~ a16 a gis fis gis4 |
	a2 f4 g |
	a4. g8 a4 d~ |
	d c2 bes4 |
	a2. d,4 |
	e1 |
	f4 e8 d c2 ~|
	c4. bes8 a4. g16 a |
	bes2 a2 ~|
	a1 ~|
	a1 |
	%--------
	\oneVoice
	d4. e8 f4 g | 
	a4. g16 f e8 c' b a |
	gis b16 a gis a fis gis a4. g8 |
	f4. g8 a4 g8 f |
	\voiceTwo
	e4. f8 g4 f |
	e2 a4 b |
	
	e, a2 \voiceThree g4 |
	f4. g8 f4 \once \override Beam.positions = #'(0.4 . 0.3) e8 d |
	\tieDown c1 ~| \tieNeutral
	\voiceTwo
	c2 r |
	\oneVoice
	r8 a'4 g8 f4 e |
	d c4. bes8 a g |
	a f' e d c a' g f |
	\voiceTwo
	e d e4 a g8 e |
	a4 e_\lh c' bes |
	g4. f16 g a8 b c4 ~|
	c16 fis, b8~b16 e, a8~a16 g f e f8. f16 |
	e8 d e4 f8 e f g |
	a4 b a8 e a g16 f |
	e8 c' b a gis4 a~|
	a gis r8 a4 g8 |
	f4 e d cis |
	d4. \voiceOne cis8 d4. e8 |
	f4 g a2 |
	g a4. g16 f |
	g4. \voiceTwo f16 e f2 |
	e8 a g f e4 a~  |
	\voiceThree
	a g4. \once \override Beam.positions = #'(1.2 . 0.9) f16 e \shape #'( (0 . -0.8) (0 . -1.2) (0 . -1.2) (0 . -0.8) ) Tie f4~|
	f e8 d \voiceTwo cis4 d~|
	d cis8 b cis2 |
	d1 |
	\hideStaffSwitch
	%-----------------
	\change Staff = "down"
	d,4. e8 f4 g |
	\showStaffSwitch
	\change Staff = "up"	
	a2 bes4 c |
	d2 r8 e8 d e |
	\change Staff="down" \voiceOne a,4 \change Staff="up" \voiceTwo f' e8 d c b |
	a b c d4 cis16 b cis8 d16 e |
	f4.. g16 a4 \change Staff="down" \voiceOne d, |
	cis2 d |
	\hideStaffSwitch
	c8 d \change Staff="up" \voiceTwo e fis g4 a ~|
	a gis a2 |
	\voiceOne
	g4 f \voiceTwo e2 |
	f2 c |
	d8 e f4. g16 f e4 |
	\change Staff="down" \voiceOne
	d2. c4 |
	b2 a4. b8 |
	\change Staff="up" \voiceTwo
	c4 d e4. f16 g |
	f4 e8 d e2|
	f4 g a4. g8 |
	f2 c |
	d e~|
	e c4 d |
	g f g e |
	f2 e4 f~|
	f e f2 |
	R1 |
	d4._\lh e8 f4 g |
	a d8 c bes a g4 |
	c8 bes a g f4 bes8 a |
	g4 a2 gis4 |
	a2 gis |
	a2. g4~|
	g f e2 |
	s4 d c bes |
	c d cis16 e d cis d4 ~|
	d8 d cis b cis2 |
	d1 |

}
tenorxii = \relative c'
{
	\clef bass
	R1 |		
	R1 |		
	R1 |		
	R1 |		
	R1 |
	r8 a8 g a d,4 bes'|
	a8 g f e d e f g |
	a4.	f8 bes4. a16 g |
	a4. b8 c4 b8 a |
	b2 c |
	b a |
	a2. g4 |
	f c d bes'~|
	bes a g4. c8 |
	a4. bes8 g4. a16 g |
	f4 g a8 c b a |
	gis2 a4 s4 |
	s1 |
	R1 |
	\oneVoice
	r8 d8 c d a4 f' |
	e8 d c b a g f e |
	\voiceOne
	d f e d cis2 |
	\showStaffSwitch
	d4 g \change Staff="up" \voiceTwo a4. g8 |
	f8 g16 a bes2 \change Staff="down" \voiceOne a4 ~|
	a g2 f4 |
	g2 a4. b8 |
	c8 e, a2 gis4 |
	a4. g8 f a bes c |
	\voiceTwo
	d a d2 cis4 |
	d g, a2 |
	bes c4 r |
	\voiceOne
	R1 |
	\oneVoice
	r8 a8 g a d,4 bes' |
	a8 g f e d e f g |
	a4. g8 fis8 d g4 ~|
	\voiceOne
	g8 f e f e4 a |
	b2 c^\rh |
	bes2. a4 ~|
	a g2 f4 ~|
	f8 f e d e4 f4 ~ |
	f8 f e d e4. fis16 g |
	fis1 |
	%---------
	R1 |
	\oneVoice
	a4. b8 c4 d |
	e4. d8 cis8 e16 d cis d b cis |
	\voiceOne
	\hideStaffSwitch
	d8 a d c16 bes a8 \change Staff="up" \voiceTwo f' e d \showStaffSwitch \change Staff="down" \voiceOne |
	c b c d e g, a b |
	c b a g fis4 gis |
	a8 b c a d4 \change Staff="up" \voiceTwo e8 d16 e |
	f8 g f e d c bes4 ~|
	bes \change Staff="down" \voiceOne a g2 |
	a8^\rha a4 b8 c4 d |
	e2 r8 a,4 g8 |
	f4 e d4. e8 |
	f4 g a b |
	c2 d4 b8 cis |
	d8 d c8. bes16 a4 bes |
	c2 r2 |
	R1 d,2\rest d4. e8 |
	f4 g a2 ~ |
	a8 e' d4. c8 b a |
	b2 a4 r |
	r8 a4 g8 f4 e |
	d \change Staff="up" \voiceTwo g f g |
	c d e f~|
	f e f8 e16 d c8 d |
	e8 d16 c \change Staff="down" \oneVoice b8 cis d a d4 |
	a4 b c4. d8 |
	\change Staff="up" \voiceTwo
	e8 d16 c b8 cis d2~|
	d8 c bes4 \change Staff="down" \voiceOne a8 e f g |
	a1 ~|
	a1 |
	%------------
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r8 a g a \voiceTwo d,4 bes' |
	a8 g f e d e f g |
	a2 e'8 d c d |
	\voiceOne
	e2^\rh r8 a,4 b8 |
	\change Staff="up" \voiceTwo
	c4 \hideStaffSwitch d \change Staff="down" \voiceOne s2 |
	s1 |
	s1 |
	s1 |
	s1 |
	R1 |
	\oneVoice
	r2 r8 a g a |
	d,4 bes' a8 g f e |
	d4. e8 f2 |
	bes4 b c8. c16 b8 a |
	\voiceOne
	b2 r4 a |
	g a e a~|
	a g8 f g4 a8 bes |
	c2 ~c8 c b a |
	d2 e8 a, g a |
	f2 r |
	R1 |
	R1 |
	\oneVoice
	r2 r8 e' d e |
	a,4 f' e8 d c b |
	a b c d e f e d |
	\voiceOne
	\showStaffSwitch
	cis a d2 \change Staff="up" \voiceTwo cis4 |
	d8 \change Staff="down" \voiceOne d,4 e8 f4 g |
	a8^\rhb f e d e4 f16 d e f |
	e2~e16 e fis g fis8.\trill e16 |
	fis1 |



}
bassxii = \relative c
{
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	r8 d8 c d a4 f' |
	e8 d c b a b c d |
	e4. d8 cis a d4 ~|
	d cis d g, |
	a2 bes |
	c1 |
	f2 e |
	d4 e f d |
	e2 f |
	e4 a d, r |
	R1 |
	s1 |
	s1 |
	r2 r8 a g a |
	d,4 bes' \oneVoice a8 g f e |
	d4. \voiceTwo d'8 e c f a, |
	bes2 c4 d |
	e2 f4. e16 d |
	c2 b |
	a r |
	s1 |
	s1 |
	s1 |
	R1 |
	s1 |
	s1 |
	s1 |
	r8 d8 c d a4 f' |
	e8 d c b a b c e |
	d4 e f2 |
	c d |
	g,2. f8 g |
	a1 |
	d, |
	%----------
	R1 |
	s1 |
	s1 |
	d'4. e8 f4 g |
	a4. g16 f e4 d |
	c2. b4 |
	a r r2 |
	\oneVoice
	d,4. e8 f4 g |
	\voiceTwo
	a4. bes8 c2 |
	f,4 f' e d~|
	d cis d a |
	bes c g2 |
	d'4 r2. |
	a'4. g8 f4. e8 |
	d4 r2. |
	s1 |
	R1 |
	s1 |
	r2 a4. b8 |
	c4 d e2 ~|
	e a,4 e' |
	f cis d8 a4 g8 |
	f4 e d8 d' c bes |
	\oneVoice
	a4 bes c2 |
	c, f |
	s1 |
	s1 |
	r2 d4. e8|
	f4 g \voiceTwo a2 ~ |
	a1 |
	d,1 |
	%--------------------
	s1|
	s1|
	r2 a'4. b8 |
	c4 d e2 |
	f e |
	d s |
	s1 |
	s1 |
	r8 e8 d e a,4 f' |
	e d2 cis4 |
	d4. e8 f4 a | 
	bes4. a8 g4 c~|
	c8 b16 a b8 a gis e a4 ~|
	a gis a2 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\voiceTwo
	r8 e d e a,4 f' |
	e4 d2 cis4 |
	d2 c~|
	c f~|
	f8 f e d cis2 |
	d r |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	r2 r8 a g a |
	d,4 bes' a g |
	f bes a2 ~ |
	a1 |
	d,1 |


}

\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 12"
		\new Staff = "up" << { \soprxii } \\ {\altoxii} >>
		\new Staff = "down" << { \tenorxii} \\ {\bassxii} >>
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

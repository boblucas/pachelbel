soprviii = \relative c''
{
	\key d \minor
	d8 d16 d d8 d bes d16 c bes c a bes |
	g fis g a g bes a g a g a bes a c bes a |
	bes8. bes16 bes8 c d cis d e | 
	f2 g4 cis, |
	d4 ~ d16 f ees d c4 ~ c16 ees d c |
	bes4 ~ bes16 d c bes a2 |
	bes8 a bes c bes2 |  
	c2 r16 f,16 g a bes c d bes |
	ees c d ees f g ees f d8. c16 bes16 c bes a |
	g4 a bes2 |
	a4. g8 f2 |  
	g2. f4 |
	e2 d4 ~ d16 a' g a |
	bes4 ~ bes16 bes a bes c4 bes16 c bes c |
	a2 g |  
	R1 |
	r |
	\stemNeutral
	g'8 g16 g g8 g f a16 g f g e f |
	d cis d e  d f e d  e d e f  e g f e |  
	f e f g f g f ees \stemUp d c d ees d ees d c |
	bes8 a16 bes c2 bes4 |
	a2 bes8 a g f |
	g2 f4. ees8 |  
	d16 c d e d f e d e d e f e bes' a g |
	a f' e f e8. d16 cis8 d e4 |
	d4. cis8 d2 ~|
	d4 c ~ c16 d a c bes4 ~|  
	bes16 c g bes a4 bes2 |
	R1 |
	b2\rest d8 d16 d d8 d |
	bes8 d16 c  bes c a bes  g fis g a  g bes a g  |  
	a g a bes a c bes a bes c a bes g bes a g |
	a c bes c a c d e f2 ~ |
	f16 f e f g f e d cis8 d4 cis8 |
	d cis d e f2 |  
	g4 c,4. bes16 c d c bes a |
	bes2. ~ bes16 bes a c |
	fis,4 ~fis16[ d g8.] a16 e g fis8.\trill g16 |
	g1 |
	\bar "|."
}

altoviii = \relative c''
{
	s1 |
	s |
	g8 g16 g g8 g f a16 g f g e f |
	d cis d e  d f e d  e d e f  e g f e |
	f8 d bes bes' ~ bes16 bes a g a4 ~ |
	a16 a g fis g2 fis4 |
	g8 fis g fis g2 |
	\showStaffSwitch
	f4 ees \change Staff="down" \voiceOne d2 |
	c bes8 c d bes |
	\change Staff="up" \voiceTwo
	ees8 f16 ees d ees d c d4 e |
	f d8 cis d4 d ~|
	d cis d8 a d4 ~ |
	d cis d2 |
	s1 |
	d8 d16 d d8 d bes d16 c bes c a bes |
	\change Staff ="down" \voiceOne
	g fis g a g bes a g a g a bes a c bes a |
	bes8 c16 d ees4 ~ ees16 f ees f d4 ~ |
	d cis d4. cis8 |
	d4 r8 d4 d cis8 |
	\hideStaffSwitch
	d d d c bes \change Staff ="up" \voiceTwo bes' bes a |
	g4 a16 bes e, g fis8 d g4 ~|
	g fis g8 fis d c |
	bes2 c |
	\showStaffSwitch
	\change Staff ="down" \voiceOne
	f, g |
	\hideStaffSwitch
        \change Staff ="up" \voiceTwo
	
	r2 a'8 a16 a a8 a |
	f a16 g f g e f d cis d e  d f e d  |
	e d e f  e g f e f2 |
	c4 ~ c16 f ees f d4 ~ d16 d c d |
	
	e4 ~ e16 e d e f \change Staff ="down" \voiceOne f, bes a g c c bes |
	a d d c bes8 c16 bes a2 |
	g2. g4 ~|
	g8 g4 f f e8 |
	f2 \change Staff ="up" \voiceTwo r16 f' e f d f g a |
	bes4 g4. f8 e4 |
	f8 e f g a2 |
	g a ~|
	a16 d, e fis g4 e2 |
	r16 a, bes c bes8. g16 a2 |
	bes1 |
}

bassviii = \relative c'
{
	\clef bass
	\key d \minor
	R1 |\noPageBreak
	R | \noPageBreak
	R | \noPageBreak
	R | \noPageBreak
	R | \noPageBreak
	r2 d8 d16 d d8 d | \pageBreak
 	bes d16 c bes c a bes g fis g a g bes a g | \noPageBreak
 	a g a bes a c bes a \voiceTwo bes2 ~| \noPageBreak
 	bes4 a bes2 | \noPageBreak
 	r  g8 g16 g g8 g |  \noPageBreak
 	f a16 g f g e f d cis d e  d f e d |  \noPageBreak
 	e d e f  e g f e  f4 ~ f16 f e d | \noPageBreak
 	g e f g a bes g a fis8 e fis d | \noPageBreak
 	g g, g' f e16 fis e fis g4 ~| \noPageBreak
 	g fis g4. f8 | \noPageBreak
 	ees4 bes c d | \noPageBreak
 	g, r16 g' f g a8 f bes d, | \noPageBreak
 	e2 d4. a'8 | \noPageBreak
 	bes4 f g a | \noPageBreak
 	d, r2. | \noPageBreak
 	\once \override MultiMeasureRest #'staff-position = #2
 	R1 | \noPageBreak
 	\stemNeutral
	d8 d16 d d8 d bes d16 c bes c a bes | \noPageBreak
	g fis g a g bes a g a g a bes a c bes a | \noPageBreak
	\stemDown
	bes2 g4 c | \noPageBreak
	f,8 f' g e a f cis a | \noPageBreak
	d4. a'8 bes2 | \noPageBreak
	g4 a d, ~ d16 f ees d | \noPageBreak
	ees8 c f f, bes16 f' g a bes8 bes, | \noPageBreak
	c16 g' a bes c8 c, d4 e | \noPageBreak
	fis g2 fis4 | \noPageBreak
	g4. f8 ees4. e8 | \noPageBreak
	c4 d g, c | \noPageBreak
	f,2 r | \noPageBreak
	r a'8 a16 a a8 a | \noPageBreak
	f a16 g  f g e f  d cis d e  d f e d  | \noPageBreak
	e d e f  e g f e fis4 d | \noPageBreak
	g r8 bes, c16 g' a bes c8 c, | \noPageBreak
	d1 | \noPageBreak
	g, | \pageBreak
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 8"
		\new Staff ="up" << { \soprviii } \\ {\altoviii} >>
		\new Staff ="down" {\bassviii }
	>>
	\layout 
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			\Score
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
		}
	}
	\midi {\tempo 4=100}
}
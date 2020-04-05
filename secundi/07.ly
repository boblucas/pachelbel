rh = \markup { \postscript # "0.20 setlinewidth 0.8 -2.4 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 -1.5 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprvii = \relative c''
{
	\key d \minor
	R1|
	R |
	s|
	s|
	s|
	s|
	r4 d bes g |
	c2 d |
	g,4 a bes2 |
	s1 |	
	s |
	s |
	s |
	s |
	s |
	s |
	\stemNeutral
	b2\rest g2 |
	f4 d g2 |
	a2 d,4. g8 |
	a bes c a bes c a g |
	a4  b2.\rest |
	\stemUp
	R1 |
	s |
    s |
    s |
    s |
	r2. g'4 |
	f d g2 |
	a d,4 e |
	f2 ~ f8 ees d c |
	d4. d8 c bes a d |
	bes2 a |
	bes4. d8 c4 bes |
	a4. g16 a b8 g c4 ~|
	c bes2 a4 |
	g2 f |
	e f |
	e4 d2 cis4 |
	d fis g a |
	bes c2 bes4 |
	a2 g |
	\bar "|."
}

altovii = \relative c''
{
	R1 |
	R |
	\stemNeutral
	b4\rest g f d g2 a |
	d,4 e f2 ~ |
	f8 f ees d ees4 d8 c |
	\stemDown
	d2. ees8 d |
	c4 f4. e16 d g8 f |
	e4 fis g2 |
	\stemNeutral
	a g8 a g f |
	d a' g a f4 \stemUp  bes ~ |
	\voiceOne
	bes8 a16 g c8 bes a d bes c |
	a2 bes |
	g2. f4 ~|
	f ees d2 |
	c bes |
	\stemDown \voiceTwo
	a1_\lh |
	s  |
	s  |
	s  |
	s1 |
	R1 |
	\stemNeutral
	b'4\rest d bes g |
	c2 d |
	g,4 a bes a8 g |
	a2 g |
	\stemDown
	\showStaffSwitch
	f4 \change Staff ="down" \voiceOne d2 cis4 |
	d2 ~ d8 c16 b c8 b |
	a4 d8 c b4 cis |
	d8 a d4 \change Staff ="up" \voiceTwo g a |
	bes d, e fis |
	g8 d g2 fis4 |
	g4. bes8 a4 g ~ |
	g f2 ees4 |
	d g4. c,8 f4 ~ |
	f e2 d4 ~ |
	d4 cis d2 |
	bes2 a ~ |
	a4 d4. e8 f4 |
	g ees d2 ~|
	d b |
}

tenorvii = \relative c'
{
        \stemNeutral
	r4 d bes g |
	c2 d |
	g, a4 bes~|
	bes8 bes a bes c4 bes8 a |
	bes4 a8 g a4 d, |
	d'2 g,4 a |
	bes2 g |
	a bes ~|
	\stemUp
	bes4 a g8 a bes c |
	d2 e4 d ~|
	d cis d2 |
	\change Staff = "up" \voiceTwo
	e2 fis4 g ~ |
	g fis g4. f8 |
	ees d c bes a4 d8 c |
	b g c2 bes4 ~|
	bes a2 \change Staff = "down" \voiceOne g4 ~|
	g f e2 |
	d8 e f g16 f e2 ~|
	e8 e d e fis d g4 ~ |
	g f2 e4 |
	f d'8 e f2 ~|
	f8 ees d c d c bes c |
	a2 g |
	a4 g f8 e16 f g8 f |
	ees4 d8 c d4 e |
	f2 e | 
	s1 |
	s |
	s |
	s |
	R1 |
	d2.\rest \stemNeutral d'4 |
	bes g c2 | 
	d g, ~|
	g4. g8 a4. bes8 |
	c8 bes16 a g8 a bes a16 g f8 g |
	\stemUp
	a2^\rh a^\rh |
	g4 f e8 d e4 |
	fis^\rh a g c^\rh |
	d^\rh a8 g fis4 g ~|
	g fis g2 |
}

bassvii = \relative c'
{
	\clef bass
	\key d \minor
	s1 |
	s |
	s |
	s |
	s |
	s |
	s |
	s |
	r2. g4 |
	f d g2 |
	a d, |
	\once \override MultiMeasureRest #'staff-position = #2
	R1 |
	d4\rest d bes g |
	c2 d |
	g, ~ g8 d' g f |
	e d16 e f8 e d c16 d e8 d |
	cis a d2 c4 | \noPageBreak
	d2. c8 b | \noPageBreak
	c2. bes4 | \noPageBreak
	a2 g | \noPageBreak
	f4 bes' a d, | \noPageBreak
	g a fis g ~| \noPageBreak
	g fis g8 f ees d | \noPageBreak
	c2. b4 | \noPageBreak
	c2 g | \noPageBreak
	d'4 a8 bes c d e c | \noPageBreak
	d e f g16 f e8 d e4 | \noPageBreak
	d f e2 | \noPageBreak
	f2. e4 | \noPageBreak
	d2 r | \noPageBreak
	R1 | \noPageBreak
	s | \noPageBreak
	s | \noPageBreak
	s | \noPageBreak
	s | \noPageBreak
	s | \noPageBreak
	r4 a f d | \noPageBreak
	g2 a | \noPageBreak
	d,4 d'8 c bes4 a | \noPageBreak
	g c d2 ~| \noPageBreak
	d g, | \noPageBreak
	
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅱ 7"
		\new Staff = "up" << { \soprvii } \\ {\altovii} >>
		\new Staff = "down" << {\tenorvii } \\ {\bassvii} >>
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
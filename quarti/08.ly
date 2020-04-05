rh = \markup { \postscript # "0.20 setlinewidth 0.8 -2 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }

soprviii = \relative c''
{
	R1 |   \noPageBreak
	R1 |   \noPageBreak
	s1 |  \noPageBreak
	s1 |  \noPageBreak
	s1 |  \noPageBreak
	e8 e c8.\trill b32 c d8 d b8.\trill a32 b |  \noPageBreak
	c4 d b cis |  \noPageBreak
	d4. c8 b4 c |  \noPageBreak
	a b a r |  \noPageBreak
	r2  a'8 a f8.\trill e32 f |  \noPageBreak
	\stemNeutral g8 g e8.\trill d32 e f16 g f e d c b a |  \noPageBreak
	\stemUp gis4 s2. |  \noPageBreak
	s1 |   \noPageBreak
	s1 |   \noPageBreak
	s2 e'8 e c8.\trill b32 c |  \noPageBreak
	d8 d b8.\trill a32 b c2 ~ |  \noPageBreak
	c4 ~ c16 c b a gis b a gis a b c d |  \noPageBreak
	e b c d c4 b2 |  \noPageBreak
	r16 e,16 fis gis a b c d e2 |  \noPageBreak
	\bar "|."
}

altoviii = \relative c''
{
	\showStaffSwitch
	R1 |
	R1 |
	\stemNeutral
	a8 a f8.\trill e32 f g8 g e8.\trill d32 e |
	f8 g a g16 f e8 d e fis |
	gis4 a fis gis |
	\stemDown
	a r2. |
	a8 a f8.\trill e32 f g8 g e8.\trill d32 e |
	f8 d16 e f g a8 gis4 a |
	fis gis a2 |
	d,4 e d_\lh r |
	s1 |
	e8 e \stemNeutral c8.\trill b32 c d8 d b8.\trill a32 b |
	c8 c a16 b c d e f g e f4 |
	e d16 e d c b4 c | 
	a b \stemDown a_\lh a'~|
	a gis a8 e a16 b a g |
	f2 e~ |
	e4 ~ e16 fis gis a gis a gis fis e4 |
}

tenorviii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\stemNeutral
	e8 e c8.\trill b32 c d8 d b8.\trill a32 b |
	\stemUp
	c4 d b c |
	a d2 cis4 |
	d2 c8 b c d |
	\change Staff="up" \voiceTwo
	<b e>4 e a, d |
	\change Staff="down" \voiceOne
	a2. gis4 |
	a4 r4 r2 |
	d,2\rest e'8 e c8.\trill b32 c |
	d8 d b8.\trill a32 b c4 d^\rh |
	b cis^\rh d2 ~ |
	d4 cis d2 |
	b4 \stemNeutral a8 a f8.\trill e32 f g8 g |
	e8.\trill d32 e f4 e d16 e f g |
	\change Staff="up" \voiceTwo a c b a b c b a gis4 a|
	fis gis \change Staff="down" \voiceOne a2 |
	b a |
	r16 a b c d2 c4 |
	gis a b ~ b16 d c b |
	<a c>2 <gis b> |
}

bassviii = \relative c'
{
	s1 |
	a8 a f8.\trill e32 f g8 g e8.\trill d32 e |
	f2 e |
	d8 e f g a2 |
	e8 e c8.\trill b32 c d8 d b8.\trill a32 b |
	c4 f b, e |
	a, r4 r2 |
	s1 |
	d2\rest a'8 a f8.\trill e32 f |
	g8 g e8.\trill d32 e f2 |
	e4 a d,8 e f d |
	e4 s2. |
	s1 |
	r2 e8 e c8.\trill b32 c |
	d8 d b8.\trill a32 b c4 f |
	d e  a,8. b16 c8 a |
	d2 e ~|
	e1 ~|
	e1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅳ 8"
		\new Staff = "up" << { \soprviii } \\ {\altoviii} >>
		\new Staff = "down" << {\tenorviii } \\ {\bassviii} >>
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
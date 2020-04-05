\version "2.18.2"

soprxvi = \relative c''
{
	s1 |
	s1 |
	s1 |
	r2 a16 f g a d, f e d |
	e a g a e g f e f8 d16 e f g a b |
	c2 r2 |
	R1 |
	e16 c d e a, c b a b e d e b d c b |
	c8 a16 b c d e f g8 a16 g f8.\trill e16 |
	<< { f4 } \\ { a,16 f g a } >>
	d,16 f e d e a g a e g f e |
	f8 d16 e f g a b c4 ~ c16 c bes a |
	d f, g a g8.\trill f32 g a16 c, d e f a b c |
	d4~d16 d c b 
	<< {c4} \\ {e,16 c d e} >> 
	a, c b a |
	b e d e b d c b c8 a16 b c d e f |
	g2 s |
	\oneVoice
	r a'16 f g a d, f e d |
	e a g a e g f e f8
	d,16 e f g a b |
	c8 c16 d e d c d b8 b16 c d c b c |
	a8 a16 b c b a b gis4 a8 b |
	\voiceOne
	c2 b | 
	a8 c16 d e16 d c d b8 b16 c d c b c |
	a4 g8. g16 f8. f16 e8. e16 |
	f2 e |
	d4 r e'16 c d e a, c b a |
	b e d e b d c b c8 a16 b c d e f |
	g2 f |
	e16 a, g a f a g f e2 |
	r b' ~ |
	b8 r16 bes r a r g r a8. r16 f16 g8 |
	fis1 |

	\bar "|."
}

altoxvi = \relative c'
{
        \oneVoice
	R1 |
	r2 e16 c d e a, c b a |
	b e d e b d c b c8 a16 b c d e f |
	\voiceTwo
	g2 f4 d4 ~ |
	d cis d2 |
	r b'8 b16 c d c b c |
	a8 b16 a gis8 a8. g16 a b g8.\trill a16 |
	a4 e e2 ~ |
	e4 
	\change Staff = "down" \voiceOne 
	c b cis |
	d a a2 ~|
	a8 f b f e c f4 ~|
	f e f8 e d c |
	b a gis4 a2 ~|
	a4 gis a2 |
	\change Staff = "up" \voiceOne 
	s2 f''16 a g f bes d, e d |
	\change Staff = "down" \voiceOne 
	cis a d8 d8.\trill cis16 d2 ~|
	d4 cis d r |
	\change Staff = "up" \voiceTwo
	s1 |
	s |
	a'2. gis4 |
	a r2. |
	s1 |
	r4 d,2 cis4 |
	d8 f16 g a g f g e2 |
	e2. c4 |
	\change Staff = "down" \voiceOne 
	b8 e,16 f g a b c d8 d,16 e f g a b |
	cis4 d2 cis4 |
	\change Staff = "up" \voiceTwo
	d16 d' c d a c bes a ~ a4 g~|
	g8  g fis e fis d16 fis e8. cis16 |
	d1 |
}

tenorxvi = \relative c'
{
	\clef bass
	a16 f g a d, f e d e a g a e g f e |
	f8 d16 e f g a b c4 c,8 f |
	e4 gis a a, |
	r8 e'16 f g a b c d4 f,8 bes |
	a2 d, |
	r8 a'16 b c d e f g8 g,16 a b c d e |
	f16 e d8 e16 d c8 b2 |
	c gis | 
	\voiceTwo a e |
	d4 f cis2 |
	d a |
	bes4 c f, r |
	s1 |
	s1 |
	r8 e'16 fis g a b c d4 g,~|
	g8 f e4 f bes |
	a2 d, |
	a'8 a16 b c d e f g8 g,16 a b c d e |
	f8 f,16 g a b c d e e, d e c d c b |
	<< {e16 c d e } \\ {a,4 } >>
	\voiceOne a16 c b a b e d e b d c b |
	c8 a16 b c d e f g8 g16 a b c d e |
	f8 f,8. f16 e8. e16 d8. d16 cis8 |
	<< {a'16 f g a} \\ {d,4} >>
	d16 f e d e a g a e g f e |
	f8 d16 e f g a b c2 |
	\voiceTwo gis a |
	e d |
	a' ~ a16 a g a e g fis e |
	fis2 r8 g,16 a bes8 a16 g d'1 |
	d,1 | \pageBreak
}

\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 16"
		\new Staff = "up" << { \soprxvi } \\ { \altoxvi}  >> 
		\new Staff = "down" << {\tenorxvi} >>
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
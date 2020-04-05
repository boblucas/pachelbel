rh = \markup { \postscript # "0.20 setlinewidth 0 -2 moveto -1 0 rlineto 0 3 rlineto stroke" }
lh = \markup { \postscript # "0.20 setlinewidth -0.5 0 moveto 0 4 rlineto 1.5 0 rlineto stroke" }


soprv = \relative c''
{
	\time 12/8
	d4 d8 d4 d8 b4 g8 b c d |
	c d e d e c b4 c8 d4 b8 |
	c4. ~ c4 b8 a b c b c d |
	c d e a, d c b c b a4\trill g8 |
	a4 b8 a4 a8 b2. |
	a4 g8 a4. g4 a8 b a b |
	c4. ~ c4 b8 c4. d |
	e8 f e f4. e4 d8 c4 b8 |
	a4 b8 a4. g r |
	s1. | 
	s1. | 
	s1. | 
	s1. | 
	s1. | 
	r2. g4 g8 g4 g8 |
	e4 c8 e f g f g a g a f |
	e4 d8 c d c d'4 d8 d4 d8 |
	b4 g8 b c d c d e d e c |
	b\trill a g c4 g'8 f e f d e f |
	e4. e d4 e8 d4. |
	e g a4 c,8 d4. |
	e d2. c4. |
	d8\rest b4 d8\rest c4 d8\rest b4 d8\rest a4 |
	b8\rest g4 b8\rest a4 b8\rest g4 b8\rest fis4 |
	g4. s s2. |
	\bar "|."
}

altov = \relative c''
{
	s1. |
	r2. g4 g8 g4 g8 |
	e4 c8 e f g f g a g a f |
	e4. fis g2. |
	fis4 g4. fis8 g2. |
	e8 fis g fis4. b,4 c8 d c d |
	g4 e8 g4. a b |
	c ~ c8 d b c4 b8 a4 g8 |
	fis4 g4. fis8 g4. r |
	b2.\rest g'4 g8 g4 g8 |
	e4 c8 e f g f g a g a f |
	e f d c d b c d b a b g |
	fis4 g4. fis8 g4. ~ g4 f8 |
	e4. fis g4 f8 e4. ~|
	e4 e8 d e c b4 c4. b8 |
	c4. c2. d4. |
	c4 b8 a b a \change Staff="down" \voiceOne b4 b8 a4. |
	g4. d' a2. |
	g2. a4. b |
	c \change Staff="up" \voiceTwo c' b4 c4. b8 |
	c4. ~ c4 b8 a4 a8 b4. |
	c8 g c g a f e2. |
	d4 d8 e4 e8 d4 d8 c4 c8 |
	b4 b8 c4 c8 b4 b8 a4 a8 |
	b4. r r2. |	
}

tenorv = \relative c'
{
	\clef bass
	R1. |
	R1. |
	R1. |
	R1. |
	\stemNeutral
	d4 d8 d4 d8 b4 g8 b c d |
	\stemUp
	c d e d e c b4 r2 |
	s1. |
	s1. |
	d4^\rh d8 d4 d8 b4 g8 b c d |
	c d e d e c b4 e8 d4. |
	c c2. b4. |
	c4 b8 e4 d8 e4 d8 c4 b8 |
	a4 b8 a4. g d'^\rh |
	g, a d^\rh ~ d8 g, c |
	a4. f ~ f4 e8 d4. |
	c4. c a b |
	\voiceTwo
	c4 d8 e4 fis8 g4. ~ g4 fis8 |
	g4.  g2. f4. ~ |
	f e d g |
	c,4 d8 e4 f8 \stemUp g4. s |
	s1. |
	s1. |
	s1. |
	s1. |
	s1. |

}

bassv = \relative c'
{
	R1. |
	R1. |
	R1. |
	R1. |
	s1. |
	r2. g4 g8 g4 g8 |
	e4 c8 e f g f g a g a f |
	e4. d c2. |
	d4 g,8 d4. g g' |
	e fis g4 c4. b8 |
	c4. c, d g |
	c,4 r8 r4. r2. |
	d4 d8 d4 d8 b4 g8 b c d |
	c d e d e c b4. c4 e,8 |
	f2. g |
	c,4. s4. s2. |
	s1. |
	s1. |
	s1. |
	s2. g'4 g8 g4 g8 |
	\stemNeutral
	e4 c8 e f g f g a g a f |
	e4. b' c4 d8 e d c |
	g'4. r r2. |
	g,4. r r2. |
	g4. r r2. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 5"
		\new Staff ="up" << { \soprv } \\ {\altov} >>
		\new Staff ="down" << {\tenorv } \\ {\bassv} >>
	>>
	\layout 
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			%\Score
			%\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
		}
	}
	\midi {\tempo 4=100}
}
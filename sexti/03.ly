
sopriii = \relative c'
{
	\time 12/8
	\key f \major
	s1. |
	s1. |
	s1. |
	s1. |
	s1. |
	s1. |
	s1. |
	f4 f8 g4 g8 a g a f4 c'8 |
	d c d bes c d c bes c a bes c |
	bes a bes g a bes a g a f4. |
	e8 f g f g e f4 bes8 a4 g8 |
	a2. g4 c8 b4. |
	c4. ~ c4 bes2 a4. ~ |
	a g2. f4. ~|
	f e d2. |
	c4. \oneVoice r c'4 c8 d4 d8 |
	e d e c4 g'8 a g a f e f |
	g f g e f g f e f d e f |
	e d e c4. d2. |
	c8 bes c a bes c bes4 c8 d4. |
	\voiceOne c2 g' f4. e8 |
	f4. ~ f4 e8 f4. g4 f8 |
	e4. f4 e8 d4. e4 d8 |
	c4. d8 c d b4 g'8 f e d |
	e4. f g e ~ |
	e a d, g |
	c, d c2. ~|
	c4. bes2. a4. |
	g2. a4. bes |
	c a4 g8 f4. d'4. ~|
	d c2. bes4. ~|
	bes a2. g4. ~|
	g4 c,8 f2 e8 d e c' bes |
	a2. ~a8 g f bes4. ~|
	bes8 f a4 d,8 g4 c,8 f4 bes,8 e |
	\clef bass
	f4 c8 d4. c bes |
	a2. ~ a8 g f bes4. |
	a1. |

	\bar "|."
}

altoiii = \relative c'
{
	\showStaffSwitch
	R1. |
	R1. |
	R1. |
	c4 c8 d4 d8 e d e c4 \voiceOne g'8 |
	a g a f g a g f g e f g |
	f e f d e f e d e c4. |
	\voiceTwo
	d2 ees8 d \voiceOne \change Staff = "down" c4. bes |
	a bes4 c2 c4. |
	bes2. a |
	g f4. a4 \change Staff = "up" \voiceTwo d8 ~|
	d4. cis d c ~|
	c f e f |
	g e4 d8 c2. |
	\change Staff = "down" \voiceOne
	bes a |
	g4. c2. b4. |
	c4 c8 bes a g a4. b |
	c2. ~ c4. d ~|
	d c2. b4. |
	c c2 bes8 a bes c bes |
	a2. g4 a8 bes4. ~ |
	bes8 a g c4 bes8 \change Staff = "up" \voiceTwo f'4 f8 g4 g8 |
	a g a f4 c'8 d c d bes c d |
	c bes c a bes c bes a bes g a bes |
	a g a f4. g8 f e a4 b8 |
	c4. bes4 a8 g4. c4 bes8 |
	c2. bes |
	a4. bes2. a4. ~|
	a4 d,8 g2 f8 e f4. ~ |
	f2 e4 f4. e4 d8 |
	c4. f4 e8 f2. |
	e d | 
	c bes |
	\change Staff = "down" \voiceOne
	a g |
	f4 \change Staff="up" \voiceTwo f'8 ees f ees d4. ~ d4 d8 |
	c4. bes a g |
	a2 a8 bes4 g8 a4 g8 e |
	f4 f8 ees f ees d2 c8 bes |
	f'1. |
}

bassiii = \relative c
{
	\showStaffSwitch
	\clef bass
	\key d \minor
	f4 f8 g4 g8 a g a f4 c'8 |
	d c d bes c d c bes c a bes c |
	bes a bes g a bes a g a f4. ~ |
	f4 e8 f d g c,4. ~ c4  \voiceTwo \change Staff = "up" e'8 |
	f e f d e f e d e c d e |
	d c d b c d c4  \change Staff = "down" g8 e4 a8 |
	bes4 f8 bes2 e,8 a4 d,8 g |
	f4. ~ f4 e8 f4. a ~ |
	a g2. f4. ~ |
	f e f2. |
	g4. a d, e |
	f4 g8 a4 bes8 <c c,>4 c,8 d4 d8 |
	e8 d e c4 g'8 a g a f g a |
	g f g e f g f e f d e f |
	e d e c d e f e f d g f |
	e d c d4 e8 f4 e8 d4 g8 |
	c,4. e f2. |
	e4. a d, g |
	c, e4 a8 fis4. g ~ |
	g fis g ~ g4 f8 |
	e2. f4 d8 bes4 c8 |
	\oneVoice f,4. r r2. |
	R1. |
	R1. |
	\clef treble
	c''4 c8 d4 d8 e d e c4 g'8 |
	a g a f g a g f g e f g |
	f e f d e f e d e c4 f8 |
	bes,4. ~ bes4 c8 d4. ~ d4 a8 |
	\clef bass
	bes8 a g c4 c,8 <f f,>4 f,8 g4 g8 |
	a8 g a f4 c'8 d c d bes c d |
	c bes c a bes c bes a bes g a bes |
	a g a f4 f'8 d c d e d e |
	\voiceTwo f4. ~ f4 a,8 bes4. c |
	f, r f r |
	\oneVoice
	f r f r |
	f r f r |
	f r f r |
	f1. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 3"
		\new Staff = "up" << { \sopriii } \\ {\altoiii} >>
		\new Staff = "down" << {\bassiii} >>
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
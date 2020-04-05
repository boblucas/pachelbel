sopriii = \relative c''
{
	\time 12/8
	R1. R1. |
	a4 a8 e'4 e8 e a, d d g, c |
	c f, b b e, a a4 gis8 a4. |
	f8 bes16 a g f g8 c16 bes a g a8 f'16 e d c b8 e16 d c b |
	c4. r8 c16 d e c f e f g f g e d e f e f |
	d c d e d e c b c d c d b a b c b d cis4 d8 |
	e4 a,8 g a e f4. r4. |
	d4 d8 a'4 a8 a d, g g c, f |
	f b, e e a, d d4 cis8 d4. |
	\change Staff="down" \voiceOne
	b8 g16 a b g c4. a4. r4.
	\change Staff="up" \oneVoice
	f'4 f8 c'4 c8 c f, bes bes e, a |
	a d, g g c, f f4 e8 f4. |
	r8 d16 e f d g4. r8 e16 f g f e8 d c |
	c'4. r8 e,16 f g e a g a b a b g f g a g a |
	f e f g f g e d e f e f d c d e d f e f e d c8 |
	r4. g'16 a g f e8 r2. |
	a4 a8 e'4 e8 e a, d d g, c |
	c f, b b e, a a4 gis8 a4. |
	fis8 d fis g4. r8 e16 f g e f4. |
	d8 e f ~ f bes e, ~ e a d, e f d |
	c d e a, a' e f4. r8 f16 g a f |
	bes a bes c bes c a g a bes a bes g f g a g a f e f g f g |
	e d e f e g f4. r4. r4 a8 |
	g16 f g a g a f e f g f g e d e f e f d4 d'8 |
	c16 bes c  d c d bes a bes c bes c a g a bes a bes g f g a g a |
	f e f g f g e4. ~ e8 a, d ~ d e cis d1. \bar "|."
}

tenoriii = \relative c'
{
	\clef treble d4 d8 a'4 a8 a d, g g c, f | 
	f b, e e a, d d4 cis8 d4. | 
	r4. r8 c16 d e c f e f g f g e d e f e f | 
	d c d e d e c b c d c d b a b c b d cis8 a cis | 
	d4. e f r4. \clef bass a,4 a8 e'4 e8 e a, d d g, c | 
	c f, b b e, a a4 gis8 a e' d | 
	cis4 d8 e4 cis8 d4 a8 g4. | 
	f4. r8 f16 g a f bes a bes c bes c a g a bes a bes | 
	g f g a g a f e f g f g e d e f e g fis8 d16 e fis d | 
	\stemDown
	g4. e8 c16 d e c f8 a, bes c g' e | 
	\stemNeutral
	f4. r8  a16 bes c a   d c d  e d e  c bes c  d c d | 
	bes a bes c bes c a g a bes a bes g f g a g bes a8 f16 g a f | 
	bes4. r8 g16 a bes g c4. r4. | 
	c,4 c8 g'4 g8 g c, f f b, e |  
	e a, d d g, c c4 b8 c4. | 
	e16 f e d c8 r4. g'16 a g f e8 c'16 d c b a8 | 
	c,16 d c b a8 r8 c16 d e c f e f g f g e d e f e f | 
	d c d e d e c b c d c d b a b c b d cis8 a cis | 
	d4. r8 b'16 c d  b c4. r8 a16 bes c a |  
	bes4 a8 g4. f g | 
	a4. r4. d,4 d8 a'4 a8 | 
	a d, g g c, f f b, e e a, d |  
	d4 cis8 d4 a'8 g16 f g a g a f e f g f g | 
	e d e f e f d4 d'8 c16 bes c d c d bes a bes c bes c | 
	a g a bes a bes g f g a g a f e f g f g e d e f e f | 
	d8 a' d g,16 f g a g a f4. e | 
	d1. |
}

\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 3"
		\new Staff="up" { \sopriii}
		\new Staff="down" {\tenoriii }
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
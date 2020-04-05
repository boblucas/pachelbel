
soprix = \relative c''
{
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	r8 d e d16 c b c b c d4 |
	g,8 a b16 c a b c b c d c e d c |
	b4 c8 d e c b4 |
	c b a2 |
	g fis4 g8 a |
	b4 a g4. f8 |
	e4 d c d |
	r2 \stemNeutral r8 g' a g16 f |
	e f e f g4 c,8 d e16 f d e |
	f g e f d f e d e4 ~ e16 f e d |
	\stemUp
	c d c b c e d c b8 c16 b a b a g |
	a4 g8 a b4 a |
	b16 c b c d4 ~d16 g, a b c4 |
	r16 c d e f8 e d4 c8 d |
	e4 d8. f16 e f e f g4 |
	r8 c,8 f2 e4 ~|
	e16 e d8 c4 b a |
	g f ~ f16 f e d e4 ~|
	e8 e d8.\trill c16 d2 |
	\bar "|."
}

altoix = \relative c''
{
	\showStaffSwitch
	R1 |
	\stemNeutral
	b2\rest r8 g a g16 f |
	e f e f g4 c,8 d e16 f d e |
	f4 ~ f16 a g f e g f e d e d c |
	\change Staff="down" \voiceOne
	b4 c8 a d4 d e8 fis g2 fis4 |
	\change Staff="up" \voiceTwo
	g8. f16 e8 f g4. d8 |
	e f g2 f4 ~ |
	f e \change Staff="down" \voiceOne a, g8 fis |
	g4. fis8 \change Staff="up" \voiceTwo b16 c b c d4 ~ |
	d8 c4 b8 a4 ~ a16 c b a |
	b c b c d4. \change Staff="down" \voiceOne c4 b8 |
	c4. b8 a b c4 ~ |
	c b c8 g c d |
	\change Staff="up" \voiceTwo
	e d e fis g4 fis8 e8 |
	fis4 g8 fis g4 ~ g16 e fis8 |
	g4. f8 e2 a4 d8 c b4 c8 b |
	c4 ~ c16 a b8 c4. bes8 |
	a4. a8 g4. c8 ~|
	c16 c b8 a4. g4 f8 ~ |
	f e4 d8. d16 c b c4 ~|
	c8 c b8.\trill a16 b2 |
}

bassix = \relative c'
{
	\showStaffSwitch
	\clef bass
	r8 d e d16 c b c b c d4 |
	g,8 a b16 c a b c4 a8 b |
	c4 b a g |
	a8 d, d'4 g,8 c b a |
	g4 e8 fis g4 b |
	c b a2 |
	r8 g a g16 f e f e f g4 |
	c,8 d e16 f d e f c d e f g a b |
	c g a b c d b c r8 \voiceTwo d, e d16 c |
	b c b c d4 g,8 a b16 c a b |
	c d e f g[ d g8.] g16 fis e fis4 |
	g4 ~g16 a g f e4 f8 g |
	c, d e4 f e |
	d g c, r |
	\once \override MultiMeasureRest #'staff-position = #2
	R1 |
	\stemNeutral
	d'8\rest d e d16 c b c b c d4 |
	g,8 a b16 c a b c4 r16 c, d e |
	f4 r16 d e f g8 g, a g16 f |
	e f e f g4 c,8 d e16 f d e |
	f g f e d d' c d b g a b c d e d32 c |
	g'4 ~ g16 g fis8 g16 f e g f e d f |
	e d c e d c b d c4 ~ c16 e d c|
	g'2 g, | 
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅲ 9"
		\new Staff = "up" << { \soprix } \\ {\altoix} >>
		\new Staff = "down" <<  {\bassix} >>
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
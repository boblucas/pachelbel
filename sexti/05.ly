
voice_a = \relative c'
{
	\clef bass
	\oneVoice r8 f c d c c16 d c8 d | 
	c f c c16 d c8 c16 bes a bes a g |
	f4. e8 f4 a8 bes |
	a4. bes8 a b c g |
	\voiceTwo
	e4 a8 g f16 c f4 e8 |
	f4. bes,8 f'4. bes,8 |
	f'1 |

	bes4 g c4. e8 |
	d4 g c, r |
	\oneVoice r2 r8 c f, g |
	f8 f16 g f8 g f c' f, f16 g |
	f8 g16 f e f e d c8 c'16 bes a bes a g |
	f \change Staff = "up" \voiceTwo f' e f d g f g e8   c d e |
	f4 e8 d e4. d8 |
	e f e8. d16 e2 |
	f d4 r |
}

voice_b = \relative c''
{
	\oneVoice
	R1 | 
	R1 | 
	r8 c f, g f f16 g f8 g |
	f c' f, f16 g f8 g16 f e f e d |
	c8 e16 d c d c bes \change Staff = "down" \voiceOne a4 g16 bes a g |
	a4. bes8 a4. bes8 |
	a4. bes8 a4 c |
	\change Staff = "up" \voiceTwo
	d2 e4. g8 |
	a4 b c8 e, f g |
	e a g f e4 f8 e |
	f c f e f e f e |
	f d g b c4. c8~ |
	\voiceThree
	c4 b s2 |
}

voice_c = \relative c''
{
	s1*5
	\oneVoice
	r8 f c d c c16 d c8 d |
	c f c c16 d c8 c16 bes a bes a g |
	\voiceOne
	f8 g16 a bes c bes a g8 g'16 f e d c8 |
	f16 e f g f g f g e d c d d4\trill |
	c8. c16 bes16 c bes a g4 a8 bes |
	a4. bes8 a g a bes |
	a b c d e4. e8 |
	d2 c8. c16 bes16 a g bes |
	a4 g8 f g4. f8 |
	g a g8. f16 g4 c8 bes |
	a2 ~ a8 g16 a g a g f |
	e c d e f g a f g f g a bes a bes g |
	a bes a g f g f e d e d c \change Staff = "down" \voiceOne bes a g f |
	e4. f8 e4. f8 |
	e4. f8 e4 g8 f |
	e16 f e d c a' g a f bes a bes g c bes c |
	\oneVoice a4. bes8 a4 f8 bes, |
	\voiceTwo f'4. bes,8 f'2 |
	d4 s2. |
	s1 |
	\oneVoice
	r2 r8 c f, g |
	f f16 g f8 g f c' f, f16 g |
	f8 g16 f e f e d c8 c'16 bes a bes a g |
	f8 f'16 ees d ees d c bes4. bes8 |
	c16 d c bes a8. bes16 c2 |
	f,1 |
}

voice_d = \relative c
{
	s1*13
	\oneVoice r8 f c d c c16 d c8 d |
	c f c c16 d c8 c16 bes a bes a g |
	f8 f'16 ees d ees d c bes8 bes'16 c bes c bes a |
	g e f g a bes c a bes a bes c d c d e |
	f g f e d e d c b c b a \voiceTwo g f e d |
	c2.. f,8 | 
	c'1 ~|
	c4 s2. |
}

voice_e = \relative c''
{
	s1*18 |
	\oneVoice
	r8 c g a g g16 a g8 a |
	g c g g16 a g8 g16 f e f e d |
	c2 d4 e |
	\change Staff="down" \voiceOne f2. a,8 bes a4. bes8 a4 c |
	d8 d16 c \oneVoice b c b a g8 f e16 g a b |
	c8 bes a16 c d e \change Staff="up" \voiceTwo f8 e d16 f g a |
	bes8 bes16 a g a g f e4 f8 e |
	f4. e8 f e f e |
	f d g b c e, e4 |
	f8 a a4 bes8 bes16 a g a g f |
	e4 f16 c f4. e4 c1 |
}

voice_f = \relative c''
{
	\voiceOne
	s1*21 |
	\oneVoice r8 f c d c c16 d c8 d |
	c f c c16 d c8 c16 bes a bes a g |
	f8 f16 e d e d c b d e f g8 f |
	\voiceOne e16 g a bes c8 bes a16 c d e f8 e |
	d d16 c bes c bes a g4 a8 bes |
	a4. g8 a g a bes |
	a b c d e g, c bes |
	a c f ees d d16 c bes c bes a |
	g4 a ~ a16 a bes c g8.\trill f16 |
	f1 |
	\bar "|."
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 5"
		\new Staff = "up" << { \key f \major \voice_b } \\ { \voice_c } \\ { \voice_e } \\ { \voice_f } >>
		\new Staff = "down" << { \key f \major \voice_a } \\ { \voice_d } >>
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
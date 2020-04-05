
soprv = \relative c'
{
	d16 e d c b c b a g a b c d e fis d |
	g4. f8 e4 d |
	e a ~ a16 d, e fis g4 |
	fis2 g4 fis8 a |
	d,4 e ~ e16[ c d8.] b16 c8 ~ |
	c16 b c d c8.\trill b16 <c g'> a' g f e f e d |
	c d e f g a b g c g a g f8.\trill e16 |
	e8 f g a b4 c8 b |
	a4 d b a8 d ~ |
	d e f e16 d e4 d ~|
	d e8 f e4 d8 g |
	e g,16 f e f e d c8 e16 d \change Staff="down" \voiceOne c d c b |
	\change Staff="up" \oneVoice d' e d c b c b a g a b c d e fis d |
	g d g f e8. d16 \voiceOne c b c b c e d c |
	b4 e8 f e4 d8 g |
	e e16 d c e d c d e d c b d c b |
	c d c d b c b c a b a b g a g a |
	fis4 g8 a b4 a8 d ~|
	d g f16 g f g e f e f e f e f |
	e f e f e8.\trill d16 d2 |
	\bar "|."
}

altov = \relative c'
{
	\showStaffSwitch
	s1 \change Staff="down" \oneVoice g16 a g f e f e d c d e f g a b g |
	c4 ~ c16 c b a b4 ~ b16 b a g |
	\change Staff="up" \voiceTwo a4 d8 c b4 a |
	\change Staff="down" \voiceOne b2 a4 g |
	f2 e8 d g b |
	c4 b8 a g4 a8 b |
	\hideStaffSwitch
	c16 g a g32 f e16 \change Staff="up" \voiceTwo e' c f d e32 f g16 f e fis g8 |
	fis2 g4 fis8 a |
	b c4 b8 c2 |
	b4 c8 b c4 b8 d |
	\hideStaffSwitch
	c e,16 d c d c b a8 c16 b \change Staff="down" \voiceTwo a b a g |
	<fis a>4 \voiceOne g8 fis g4 fis |
	d c16 g' c d \change Staff="up" \voiceTwo e8 d e fis |
	g4 c8 b c4 b8 d |
	c8 g16 f e g f e f g f e d f e d |
	e f e f d e d e c d c d b c b c |
	a4 d8 fis g4 fis8 a |
	b e d d d4 c |
	c2 b |
}
bassv = \relative c
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 |
	s1 |
	s1 |
	\oneVoice d16 e d c b c b a g a b c d e fis d |
	\voiceTwo g4 ~ g16 g f e f8. d16 e8. c16 |
	d2 c8 b c g' |
	a4 g8 f e4 d |
	c r2. |
	\oneVoice d'16 e d c b c b a g a b c d e fis d |
	g8 f16 e d8 g c,16 b a g fis d e fis |
	<g g,> a, g f e f e d c d e f g a b g |
	c4 r c s |
	\voiceTwo d g,8 d' e4 d |
	b c r2 |
	g'16 a g f  e f e d c d e f g a b g |
	\oneVoice c8 r2.. |
	R1 |
	d,16 e d c b c b a g a b c d e fis d |
	g8 f16 e f8 g a4 e8 f |
	g2 g, |

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 5"
		\new Staff = "up" << { \soprv } \\ {\altov} >>
		\new Staff = "down" << {\bassv} >>
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
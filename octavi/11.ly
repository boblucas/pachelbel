
soprxi = \relative c''
{
	\key g \major
	\oneVoice
	R1 |
	R1 |
	\voiceOne
	s1 |
	s1 |
	\oneVoice r2 r8 d b c |
	d b16 a g8 a b g' fis e |
	d c16 b c8 d g, g' fis4 |
	\voiceOne e d e d |
	d2 cis4 d8 c16 b |
	a4 b8 cis d4. cis8 |
	d4 r2. |
	s1 |
	s1 |
	\oneVoice
	R1 |
	r2 r8 g, fis g |
	\voiceOne a fis16 e d8 e fis d' cis b |
	a g16 fis g8 a d, g16 fis e a g a |
	fis a d c b c d e cis a d8 d8.\trill cis16 |
	d4. c16 b a8 d b c |
	d d, e4 fis8 b a4 |
	b16 c b c d b c d e f e d c d c b |
	a b a g fis g fis e d e d c b b' c d |
	\oneVoice e8. d16 c d32 c b16 c d4 ~ d16 d e fis |
	g fis, g a b4 ~ b16 c b a a8.\trill g16 |
	g1 |
	\bar "|."
}

altoxi = \relative c''
{
	\showStaffSwitch
	s1 |
	s1 |
	\oneVoice r8 g fis g a fis16 e d8 e |
	fis d' cis b a g16 fis g8 a |
	\change Staff="down" \voiceOne
	d, cis16 d e fis g a fis4 g ~ |
	g8 d e4 d c |
	b a b8 e8. e16 d8 |
	c \change Staff="up" \voiceTwo c'4 b8 c2 |
	b4 a8 b e, a fis g ~ |
	g fis e d e fis e4 |
	fis8. g16 a4 ~ a16 d, g8 a16 b c d |
	<<
		{b8. c16  d b a g  fis8 g4 fis8 g4 r2. } \\
		{r8 d b c d b16 a g8 a b g' fis e d c16 b c8 d }
	>>
	\change Staff="down" \voiceOne
	g,8 c4 b8 c g16 a b c d8 |
	a16 b c d e8 d16 c b4 a8 b |
	a4 \change Staff="up" \voiceTwo b8 cis d fis e4 ~ |
	e8 d8. c16 b a b4 cis |
	d2 e8 d e4 |
	fis4 g8 e fis4 g8 fis16 e |
	d8 b cis4 d8 g4 fis8 |
	g2. a8 g |
	fis e d c b a \change Staff="down" \voiceOne g4 ~ |
	g8 e a g fis16 d e fis g4 |
	g2. fis4 |
	\change Staff="up" \voiceTwo b1 |
}

bassxi = \relative c'
{
	\key g \major
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	r8 d b c d b16 a g8 a |
	b g' fis e d c16 b c8 d |
	g,4 d'8 b a d b cis |
	d4 e fis8 d8. c16 b a |
	\voiceTwo b4 cis d e |
	b c g a ~|
	a8 g4 fis8 e16 fis g a b4 |
	c16 d e fis \oneVoice g8. f16 e8 a16 g fis16 d e fis |
	<< {g4} \\ {r8 g, } >>
	fis g a fis16 e d8 e |
	fis d' cis b a g16 fis g8 a |
	d, d'8. c16 b a b8. a32 g fis4 |
	g2 d8 e4 d8 |
	g,8. g'16 a b c e, fis8 g8. f16 e d |
	e8 d16 c d4 c16 d e fis g8 d16 e |
	fis g a b c e, fis8 g4 d8 g |
	fis4 g8 fis16 e d4 a'8 g |
	fis b e, fis g e a4 |
	d,8 fis g b a b g a |
	<< {d4} \\ {r8 d, } >>
	b c d b16 a g8 a |
	b g' fis e d c16 b c8 d |
	g, a b g c4 r |
	d4 r g8 d e d |
	\voiceTwo c2. b4 |
	c4 ~ c16 d c b c4 d |
	g,1 |
}


\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 11"
		\new Staff = "up" << { \soprxi } \\ {\altoxi} >>
		\new Staff = "down" <<  {\bassxi} >>
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
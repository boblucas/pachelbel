
soprxiii = \relative c''
{
        \oneVoice
	g16 g, a b c d e fis g8 g, r4 |
	g'16 g, a b c d e fis g8 g, r g' |
	\voiceOne fis16 a fis d e4\trill d16 fis g a b a g a |
	fis8. g16 a g fis e fis d' c b a g fis e |
	fis g a g fis4 g ~ g16 a g fis |
	g a b c a c b a b c b c d4 ~ |
	d c2 b8.\trill a16|
	b4. a g16 fis e fis |
	\oneVoice d4 ~ d16 e d cis d4 r |
	d'16 d, e fis g a b cis d8 d, r4 |
	d'16 d, e fis g a b cis d8 d, r d' |
	b16 d b g a4\trill g16 fis g a g a g f |
	e4 r2. |
	g'16 g, a b c d e fis g8 g, r4 |
	g'16 g, a b c d e fis g8 g, r g' |
	fis16 a fis d e4\trill d16 a b c d e d c |
	\voiceOne b8 e4 d8 c2 |
	b a ~ |
	a8 d b4 a2 |
	b4 c b8 e4 d8 ~ |
	d4 c2 b4 |
	a4 g16 b e, g a8. d16 b4 |
	r16 g a4 g8 a4 b ~ |
	b16 b a g fis8.\trill g16 g2 |
	\bar "|."
}

altoxiii = \relative c
{
	\showStaffSwitch
	s1 |
	s1 |
	\change Staff="down" \oneVoice
	r2 d'16 d, e fis g a b cis |
	d8 d, r4 d'16 d, e fis g a b cis
	d8 d, r d' b16 d b g a4\trill |
	g8 \change Staff="up" \voiceTwo g'4 fis8 g4. f8 |
	e2 d ~ |
	d4 c b2 |
	\change Staff="down" \voiceOne a4 g fis16 a g fis g b a g |
	a4 g fis b8 c16 b |
	a4\trill g fis a |
	g8 d' c4 b r8 d |
	e8. f16 d16 f e d e4 d8 c |
	d4 c b e8 f16 e |
	d4\trill c b4. cis8 |
	d4. cis8 d2 |
	g,8 \hideStaffSwitch \change Staff="up" \voiceTwo g' fis b4 e,8 a4 ~ |
	a g2 fis16 g fis e |
	fis4 d8 g4. fis4 |
	g4. fis8 g4 fis |
	e2 d4. g8 |
	fis4 r fis r16 fis g e |
	fis4 r16 d8. ~ d4. g8 ~ |
	g4 r8 c, b2 |
}

bassxiii = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 | 
	R1 | 
	s1 | 
	s1 | 
	s1 | 
	R1 | 
	g16 g, a b c d e fis g8 g, r4 |
	g'16 g, a b c d e fis g8 g, r g' |
	\voiceTwo fis16 a fis d e4\trill d e |
	fis e d g |
	fis e d fis |
	g4. fis8 g4 r8 b |
	c16 g c4 b8 c b16 c b8 a |
	b4 a g c |
	b a g8. fis16 e4 |
	fis8 b g a fis2 |
	g4 \oneVoice r2. |
 	d16 d, e fis g a b cis d8 d, r4 |
	d'16 d, e fis g a b cis d8 d, r d' |
	b16 d b g a4\trill g a16 c b d |
	c g a b c d e fis g d e fis g a b c |
	d8 d, r4 d'8 d, r4 |
	d'8. c16 b8. a32 g fis16 d e fis g g, b c |
	d8 c, d4 g2 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 13"
		\new Staff = "up" << { \soprxiii } \\ {\altoxiii} >>
		\new Staff = "down" << {\bassxiii} >>
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

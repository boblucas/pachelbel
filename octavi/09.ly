
soprix = \relative c''
{
	\key g \major
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\oneVoice r2 d4. d8 |
	fis,4. fis8 g a b c |
	d d16 e d e d e c8 c16 d c d c d |
	\voiceOne b2 a8 a16 b c d c d |
	b2 ~ b8 a16 g a8. g16 |
	fis2 e4 e' |
	e2. d4 ~ |
	d cis d2 |
	s1 |
	\oneVoice r2 g4. g8 |
	cis,4. cis8 d e fis g |
	a8 a16 b a b a b g8 g16 a g a g a |
	fis2 \voiceOne e8 d c16 d c d |
	b a b c b d c b a2 ~ |
	a8 a d8. c16 b2 |
	a4 r a r |
	g8 d' c8. b16 e2 ~ |
	e4  d cis r |
	cis r d4. cis8 |
	d2 r8 d d8. c16 |
	b2 a4 r |
	a r4. \oneVoice d16 e d e d e |
	c8 c16 d c d c d \voiceOne b2 |
	r16 g a b c d e e, fis a b c d fis, g8 ~ |
	g16 a b c fis,8.\trill g16 g2 |
	\bar "|."
}

altoix = \relative c''
{
	\showStaffSwitch
	\oneVoice
	R1 |
	R1 |
	r2 g4. g8 |
	cis,4. cis8 d e fis g |
	a8 a16 b a b a b g8 g16 a g a g a |
	\change Staff="down" \voiceOne fis8 g16 fis e8 fis d4 b |
	c2 b4 g |
	a b a2 |
	\hideStaffSwitch
	g8 \change Staff="up" \voiceTwo d'16 e d e d e c8 d e fis |
	g fis e d e2 ~ |
	e4 d cis cis' |
	b2 r8 a16 b a b a b |
	g8 g16 a g a g a fis2 |
	\oneVoice r8 a16 b a b a b g8. g16 fis g fis g |
	\change Staff="down" \voiceOne e8 fis16 e d e d c b8 c b4 |
	g2 fis |
	e4 fis e2 |
	d8 a'16 b a b a b c8 d \change Staff="up" \voiceTwo e fis |
	g d g2 fis8. e16 |
	d2 ~ d8 d g8. g16 |
	fis4 r fis r |
	g4 r4. e8 a8. g16 |
	fis2 e4 r|
	e r d e |
	fis8 fis fis8. g16 a2 ~ |
	a4 g fis r |
	e r2 \change Staff="down" \voiceOne g,4 ~  |
	g fis \change Staff="up" \voiceTwo d'2 |
	e4 s2. |
	s2 b |
}

bassix = \relative c'
{
	\clef bass
	\key g \major
	d4. d8 fis,4. fis8 |
	g8 a b c d d16 e d e d e |
	c8 c16 d c d c d b8 a g fis |
	e4 a fis d |
	cis4. d8 e4 b'8 cis |
	\voiceTwo d b c a b4 g |
	a d, e2 |
	fis4 g2 fis4 |
	g4 \oneVoice r2. |
	g4. g8 cis,4. cis8 |
	d e fis g a8 a16 b a b a b |
	g8 g16 a g a g a fis4 b |
	e, a d,8 d'16 e d e d e |
	c8 c16 d c d c d b8 g a b |
	\voiceTwo c a b a g4. fis8 |
	e4 a, d2 |
	cis4 d2 cis4 |
	d4 \oneVoice r2. |
	r2 d'4. d8 |
	fis,4. fis8 g a b c |
	d d16 e d e d e c8 c16 d c d c d |
	<< {b4 s4 } \\ {g4. g8} >> cis,4. cis8 |
	d8 e fis g a a16 b a b a b |
	g8 g16 a g a g a  
	<< { s4. \tweak Stem.length #8 \tweak Stem.transparent ##t a8 ~  a2 } \\ { fis8 b g a8 d,4. d8 } >> fis,4. fis8 |
	g8 a b c d8 d16 e d e d e |
	c8 c16 d c d c d \voiceTwo b2 |
	a4 d \oneVoice <g, g'>16 d' e fis g a b g |
	<< {c2. b4 ~ b a g2 } \\ {r4 c, d4.. cis16 d2 g, } >> 

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 9"
		\new Staff = "up" << { \soprix } \\ {\altoix} >>
		\new Staff = "down" << {\bassix} >>
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

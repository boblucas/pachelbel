sopriii = \relative c'
{
	\key g \minor
	c16 g' d g ees g c, g' d g b, g' g, g' d f |
	ees8 c c' c bes fis g bes |
	fis a fis fis g8. a16 b16 c d b |
	c ees d c d f ees d ees8 d c ees |
	d2 ~ d16 d ees d c4 |
	fis,8 g16 d' c8. d16 bes4 r |
	s1 |
	\oneVoice g16 d' a d  bes d g, d'  a d fis, d' d, d' a c |
	bes8 g g' g ees f g16 g, aes bes |
	aes g f aes g g' f ees f g ees f d f ees d |
	\voiceOne ees8 d c ees b d b4 |
	c16 d ees f ees4 d8 g a16 a, d c |
	bes[ c d8.] c16 bes a bes8. bes16 a c bes a |
	bes8 c d bes a2 |
	g16 a bes c bes8 b c8. bes16 a4 ~|
	a16 a d c bes[ a g8.] g16 f g d f ees d |
	\voiceTwo
	ees8 d c ees g4 r |
}

soprsubiii = \relative c''
{
	s1*16 |
	\voiceOne
	c16 g' d g ees g c, g' d g b, g' g, g' d f |
	ees4 ~ ees16 ees d c bes8 c d bes |
	c8 a4. g16 a bes g c8. d16 |
	b8. b16 c8 d ees e f8 g16 g, |
	aes8 bes c d ees d c ees |
	d4 b c8. bes16 aes4 ~ |
	aes8 bes16 aes g4. f16 ees f8 c' ~|
	\oneVoice c16 d c b ees f ees d g c, b f' ees g, d' f, |
	ees d' c b c g fis16. g32 \voiceOne g2 |
	\bar "|."
}

altoiii = \relative c'
{
	\change Staff = "down"
	\voiceTwo
	\key g \minor
	\oneVoice R1 |
	r2 g16 d' a d  bes d g, d'  |
	a d fis, d' d, d' a c bes8 g \change Staff = "up" \voiceTwo g' g |
	ees16 g f ees f4 g8 b c4 |
	b2 g4 c16 bes a g |
	fis[ d g8.] g16 a8 g4 e16 f g a |
	\oneVoice fis4 g16 f ees f d f ees d \change Staff="down" \voiceOne c bes a d |
	bes8 a g bes d4 a |
	d4. c4 d8 ees4 ~|
	ees8 d4 c4. b4 |
	\change Staff="up" \voiceTwo c16 g' d g ees g c, g' d g b, g' g, g' d f |
	ees8 c c' c bes8. a32 g fis8 d |
	g8. d16 e8 fis g16 d g4 fis8 |
	g2 fis |
	g4. d8 c4 ~ c16 c f ees |
	d4 r2.
}

tenoriii = \relative c
{
	\showStaffSwitch
	\clef bass
	\voiceTwo

	s1 |
	s1 |
	s1 |
	\oneVoice
	r2 c16 g' d g ees g c, g' |
	d g b, g' g, g' d f ees8 c c' c ~ |
	c bes e, fis g16 a bes g c8 bes |
	a d16 c bes8 c bes g \voiceTwo a fis |
	g fis g4 fis8 d fis4 |
	g8. f16 ees4 aes g |
	f ees d g |
	R1 |
	R1 |
	R1 |
	\oneVoice g,16 d' a d  bes d g, d'  a d fis, d' d, d' a c |
	bes8 g g' g ees16 d c8 f4 |
	fis g8. a16 b8 a b g |
	c b c4 b8 g b4 |
	\change Staff = "up" \voiceTwo
	
	c16 d ees c f8 fis g2 |
	fis g4 ~ g16 g fis8 |
	g d ees b c c'16 bes aes8 e |
	f g aes g16 f g8 f g4 |
	f8 d4. c4 ees |
	d d8 d c4. \change Staff="down" \voiceOne c16 d |
	ees8 d c b ees d c b |
	c d ees a, \change Staff="up" \voiceTwo b2 |
}

bassiii = \relative c'
{
	s1*17 |
	\oneVoice r2 g16 d' a d  bes d g, d'  |
	a d fis, d' d, d' a c bes8 g a d, |
	g4 r2. |
	r2 c,16 g' d g ees g c, g' |
	d g b, g' g, g' d f ees8 c c' c |
	bes4 bes8 bes aes4. \voiceTwo aes8 |
	g1 ~ |
	g2 g, |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 3"
		\new Staff = "up" << { \sopriii } \\ {\soprsubiii} \\ {\altoiii} >>
		\new Staff = "down" << {\tenoriii } \\ {\bassiii} >>
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
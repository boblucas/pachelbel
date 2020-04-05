
soprviiiextra = \relative c''
{
	s1*20 |
	\oneVoice
	d4 ees d r8 g |
	fis e16 d g8 a bes4 a |
	g4 ~ g16 f ees d ees f ees d c d c bes |
	\voiceOne a bes c a d c b a b4 c |
	b8 c16 d ees4 d ees8 f |
	g4 f8 ees16 d ees4 d |
	c8 g8. bes16 aes g aes4 g8 a |
	bes4 c d2 ~|
	d4 c bes2 |
	a g16 d' c b c d c d |
	ees f ees f g ees d c b4 c |
	b8 c16 d ees4 d ees8 d |
	c4 bes aes8.\trill g16 g4 ~|
	g8 g f\trill e f8. c'16 fis,8.\trill g16 |
	g1 |
	\bar "|."
}

soprviii = \relative c''
{
	\showStaffSwitch 
	\key g \minor
	s1*8 |
	r2 g4 aes |
	g r8 c b a16 g c8 d |
	ees4 d c2 ~|
	c8 bes aes g aes2 |
	g4. a8 bes2 |
	d2 ~ d8 bes c16 bes c a |
	bes4 ~ bes16 c g bes aes bes g aes f aes g f |
	g4 ~ g16 g f ees d8 g4 f8 |
	g4. ees8 d4 ees8 f |
	g4 r16 f ees d e8 f16 g c,16 ees d c |
	d16 ees d ees f4. bes,8 ees4 ~ |
	ees16 ees f ees d f ees d ees8 g \change Staff = "down" \voiceOne f16 ees d c |
	b4 c4. bes16 a bes4 |
	a d8 c d4. c8 |
	b c d b c d ees c |
	\change Staff = "up" \voiceTwo
	f ees d f g4. f8 |
	g2 g ~ |
	g8 g a b c4 bes |
	c4 
}

altoviii = \relative c'
{
	\showStaffSwitch 
	\oneVoice R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	c4 ees d r8 g |
	fis e16 d g8 a bes4 a |
	g8 f16 e d8 f ees2 ~ |
	\voiceTwo ees4 d ees2 ~ |
	ees4 f g ees8 f |
	g2 ~ g8 f16 e f4 ~|
	f e f8 ees16 d c8 d |
	ees8 d16 ees c4 d8 e16 fis g4 |
	a8 fis bes a g4. f8 |
	g d ees2 d4 ~|
	d8 g, c4. b8 c4 |
	b8. a16 g4 g2 ~|
	g8 a bes2 a4 |
	bes r2. |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s4 r c4 ees |
	d r8 g fis e16 d g8 a |
	bes4 a g2 ~ |
	g4 fis g r |

}

tenorviii = \relative c'
{
	\key g \minor
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	\oneVoice g4 aes g r8 c |
	b a16 g c8 d ees4 d | \voiceOne
	c8 bes16 a g8 a bes16 a bes c bes4 |
	a bes8 c d \change Staff ="up" \oneVoice g4 fis8 |
	g8 f16 ees d4. \change Staff ="down" \voiceOne c8. d16 c b |
	c4. g16 a bes2 |
	a4 g8 fis g4 fis |
	g2 ~ g8 g c bes |
	aes2 g4 c |
	bes c d c ~ |
	c bes aes4. f8 |
	\oneVoice g4 c f,8 g aes bes |
	\voiceOne c2 r |
	s1 |
	s1 |
	\voiceTwo
	r2 g,4 as |
	\oneVoice g r8 c8 b a16 g c8 d |
	ees4 d c2 |
	bes4 ~ bes16 c' bes aes g4. f16 ees |
	f4 bes \voiceTwo g8 ees aes f |
	g4 c, g'2 |
	d4 bes'8 a g4 fis |
	g2 r |
	\oneVoice r g4 as |
	g r8 c8 b a16 g c8 d |
	ees4 d c g8. f16 |
	e4 c f c |
	g' ees d bes8 a |
	g g' c, d ees d16 c bes8 c |
	d a' d c b g a b |
	\change Staff = "up" \voiceTwo c d ees f g8. f16 ees8 f |
	g2 g4. f8 |
	g4 f ees4. d8 |
	c1 |
	b |
}

bassviii = \relative c
{
	s1 |
	s1 |
	c4 ees d r8  g8 |
	fis e16 d g8 a bes4 a |
	g4. f8 ees4 d |
	ees8 d c4 r8 d g4 |
	d8 c bes a g4 d'8 c |
	b2 c |
	f ees4 c8 d |	
	ees4 aes g aes |
	g2 r |
	s1 |
	c,4 ees d r8 g |
	fis e16 d g8 a bes4 a |
	g4. ees8 f2 |
	\voiceOne
	ees4. f8 g4 r |
	\voiceTwo
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	\oneVoice r2 g,4 aes |
	g r8 c b a16 g c8 d |
	ees4 d c4. bes8 |
	aes2. a4 |
	g1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅶ 8"
		\new Staff = "up" << { \soprviii } \\ {\altoviii} \\ {\soprviiiextra} >>
		\new Staff = "down" << {\tenorviii } \\ {\bassviii} >>
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
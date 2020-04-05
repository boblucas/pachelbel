
sopriivi = \relative c''
{
	s1*18 |
	\voiceOne
	\oneVoice r2 d16 d d d d d d d |
	d8 d d d e e b c |
	d16 a b c d e c d b c b a g d' g f |
	e f d e c d b c \voiceOne a4 ~ a16 b c d |
	b4 c2 b4 |
	c4 g8 a d,4 r16 d e f  |
	e4 r16 e fis g fis4 r16 fis g a |
	g4 r16 g a b fis a b c d fis, g8 ~ |
	g16 fis g a g8.\trill fis16 <g d b>2 |
}

soprivi = \relative c'''
{
	s1*10 |
	\oneVoice
	g16 g g g  g g g g  g8 g g g |
	a a e f g16 d e f g a g f |
	e f e d c b a g \voiceOne fis4 b |
	a2 g |
	s1 |
	\oneVoice r2 g16 g g g  g g g g |
	g8 g g g a a e f |
	g4 f e16 f e f d e d e |
	\change Staff = "down" \voiceOne
	c2 b |
	a4. b8 c4 g |
	a2 g8 a b g |
	\oneVoice c d e c r16 c d e \change Staff="up" \voiceTwo f4 ~ |
	f e d2 |
	c2. b4 |
	\change Staff="down" \voiceOne r16 e, f g a4 r16 fis g a b4 |
	r16 g a b c2 b8. b16 |
	a8 g a4 g2 |
}

soprvi = \relative c''
{
	\oneVoice
	d16 d d d d d d d d8 d d d |
	\voiceOne
	e e b c d4 e |
	b d c ~ c16 e d c |
	b c b c d4 c16 g' f g e f d e |
	c d e d c d c b a4 b |
	a d8 c b8. c16 d8 e |
	a,16 c b c a c b a b4 c ~|
	\oneVoice c b c g8 a |
	d, e16 f g a d, f e g a b c b a g |
	fis2 g4 \change Staff="down" \voiceOne f |
	e d e d8.\trill e16 |
	f4 c d2 |
	c8 d e c \change Staff="up" \voiceTwo d4 g ~ |
	g fis g8 b,16 c d8 e |
	\oneVoice a,4 r16 d c d b4 r16 c b c |
	\change Staff="down" \voiceOne a b g a f4. e8 d4 |
	e c'2 c4 |
	b8 b16 c d c d b \voiceTwo  c4 b ~ |
	b8 e, a2 g4 ~ |
	g fis e2 |
	fis g4 r |
}

altovi = \relative c''
{
	\showStaffSwitch
	s1 |
	r2 g16 g g g g g g g |
	g8 g g g a a e f |
	g4 f16 g f g e8 g c b |
	a b a g fis4 g ~ |
	g fis g2 |
	fis8 g4 fis8 g2 |
}

tenorvi = \relative c'
{
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	s1*4 |
	\oneVoice r2 d16 d d d  d d d d |
	d8 d d d e e b c |
	\voiceOne d c d4 d e |
	d2 c ~ |
	c4 b c a |
	\oneVoice r16 a b c d e a, c b c b c d4 ~|
	d8 c4 b8 c4 b |
	a2 b |
	\voiceTwo c4 d,4\rest s2 |
}

bassvi = \relative c'
{
	\oneVoice R1*3 | 
	R1 |
	s1 |
	s1 |
	r2 g16 g g g g g g g |  
	g8 g g g a a e f |
	\voiceTwo g2 c,4 r |
	s1 |
	s1 |  
	s1 |
	s2 d16 d d d  d d d d |
	d8 d d d e e b c |
	d c b a g16 g' f g e8 d |  
	c b a d16 c b8 c4 b8 |
	c8. d16 e8 c f4 a |
	g2 s |
	s1 |  
	s1*3 |
	\oneVoice g,16 g g g g g g g g8 g g g |  
	a a e f g16 d' e f g8 g, |
	\voiceTwo c4. a8 d4. b8 e4. c8 d2 ~|
	d g, |
	\bar "|."
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 6"
		\new Staff = "up" << { \soprvi } \\ {\soprivi} \\ {\sopriivi} \\ {\altovi} >>
		\new Staff = "down" << {\tenorvi } \\ {\bassvi} >>
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
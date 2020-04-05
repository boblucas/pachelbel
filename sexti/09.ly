
soprix = \relative c''
{
	\key f \major
	s1 |
	s1 |
	r8 f e a d, g c, f |
	b, e a, d g, c c b |
	c bes16 a g8 a bes c16 bes a8 g16 f |
	g4 a bes a |
	g f e8 f g4 |
	a2 g ~|
	g4. r8 r2 |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	r8 f' e a d, g c, f |
	\oneVoice b, e a, d g, c c b |
	c4 ~ c16 c bes a bes4 ~ bes16 bes a g |
	\voiceOne f8 g a bes16 a g4 a |
	bes8 a16 g a4 g8 f16 e f4 |
	e8 f g4 a2 |
	r2 r8 g c8.\trill bes16 |
	\oneVoice a8 c f8.\trill ees16 d8. c16 bes4 ~|
	bes a16 c bes a g2 \trill |
	f1 |
	\bar "|."
}

altoix = \relative c''
{
	\showStaffSwitch
	\oneVoice r8 c a d g, c f, bes |
	e, a d, g c, f f e | \voiceTwo
	f4 c'8 bes16 a bes4 a8 g16 f |
	g4 f4. e8 d4 |
	c8 d e c d e f4 |
	e f4. e4 d8 ~ |
	d c4 bes a8 bes c ~ |
	c d16 e f4 ~ f4. e8 |
	d4 r8 f16 e f8 e16 d e4 |
	\oneVoice d c8 b16 a b8 c d4 |
	e16 f g f e f d e c d e d c d bes c |
	r8 c' a d g, c f, bes |
	e, a d, g c, f f e |
	f4. e16 d cis8 d e8.\trill d32 e | \voiceTwo
	f4 r2. |

}

tenorix = \relative c'
{
	\key f \major
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	R1 | 
	\oneVoice r8 c a d g, c f, bes |
	e, a d, g c, f f e |
	f4. g16 a bes8 a16 g c4 | \voiceOne
	b c4. bes4 a8 ~|
	a g4 f e8 f g |
	g2 r |
	a bes8 a16 g a8 g16 f |
	g8 f16 e f8 e16 d e8 a g4 |
	f8 g16 a bes4 a b8 cis |
	d4 c bes a |
	g f8 e16 d e4 d |
	e8 d e f g a bes c |
	\change Staff="up" \voiceTwo d e f d e4 f ~|
	f8 e4 d c bes8 ~ |
	bes a bes c4 c8 f8.\trill ees16 |
	d2 \change Staff="down" \voiceOne bes4 g |
	f2 r8 d g f |
	e16 d e8 f2 e4 |
	f1 |
}

bassix = \relative c'
{
	\key f \major
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	r8 g e a d, g c, f |
	b, e a, d g, c c b |
	c4. d8 e4. c8 |
	f2 ~ f8 e4 d8 ~ |
	d8 c4 bes a8 bes c |
	d4 g4. f8 g a |
	d,4 a'8 f g e f d |
	e c d b c a f g |
	c2 r |
	\oneVoice r r8 c a d |
	g, c f, bes e, a d, g |
	c, f f e f4 a | \voiceTwo
	bes8 f' bes8.\trill a16 g4 e |
	f a, bes2 |
	c1 |
	f,1 |

}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 9"
		\new Staff = "up" << { \soprix } \\ {\altoix} >>
		\new Staff = "down" << {\tenorix } \\ {\bassix} >>
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

soprvii = \relative c''
{
	\key f \major
	
	\oneVoice r8 c c c d4 d8 c16 bes |
	c8 f, r f' e16 g e g c, e c e |
	d f d f b, d b d c e c e g, bes g bes | \voiceOne
	a8. g16 a bes a bes c4 c8 d |
	e8. f16 g4 f d |
	e c2 a4 |
	bes16 f bes a g c bes c a b c4 bes8 |
	c4 g16 a g a bes4 a16 g a bes |
	g2 f4 a8 bes |
	g a c4 e4. e8 |
	f4 f e2 ~ |
	e4 d2 c4 |
	d2 e8 r16 e r f r g |
	r c, r f r f r e f4 c16 d c d |
	c4 c8 d b c g4 |
	c2 bes |
	a ~ a8 g16 a bes4 ~ |
	bes a g2 |
	a r |
	R1 | 
	R1 | 
	R1 | 
	\oneVoice r2 r8 g g g |
	a4 a8 g16 f g8 c, r c' |
	a16 c a c f, a f a g bes g bes e, g e g |
	f a f a c, ees c ees d4 g ~ |
	g fis g16 a g a f g f g |
	e4 r d'16 f d f bes, d bes d |
	c e c e a, c a c bes d bes d g, bes g bes |
	a c a c a c a c a c a c g bes f a |
	\voiceOne g2 f4. g8 |
	e f a4 g e |
	f2 e |
	f4 c'2 bes4 ~ |
	 bes16 a32 g f e d c aes'4 g2 |
	<f c>1 | 
	\bar "|."
}

altovii = \relative c'
{
	\showStaffSwitch
	s1 | 
	s1 | 
	s1 | 
	r8 f f f a4 a8 g16 f |
	g8 c, r c' a16 c a c f, a f a |
	g bes g bes e, g e g f a f a c, ees c ees |
	d4 e f8. e16 d c d8 |
	c d e f g d16 e f4 ~ |
	f e f f8 g |
	e f a4 c4. c8 |
	a4 d g, bes |
	f2 e |
	a4 b c8 r16 c r bes r bes |
	r a r a r g r g a2 |
	e8. d16 e8 f d e e4 ~ |
	e a d, g |
	c, ees f2 |
	g4 f2 e4 |
	f2 r |
	R1 |
	R1 |
	R1 |
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
	s2.. \voiceTwo bes,8 |
	a1 |
}

tenorvii = \relative c'
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
	R1 | 
	R1 | 
	R1 | 
	\oneVoice r8 c c c d4 d8 c16 bes |
	c8 f, r f' e16 g e g c, e c e |
	d f d f b, d b d c e c e g, bes g bes |
	a c b a b g a b c b c d e c d e |
	f d e f g8 f e c d e | \voiceOne
	f a, bes c f4 r |
	s1 |
	s1 |
	s1 |
	s1 |
	r8 c c c d4 d8 c16 bes |
	c8 f, r f' e16 g e g c, e c e |
	d f d f b, d b d c e c e g, bes g bes |
	a4 d4. g,8 c4 ~ |
	c16 b c d c8.\trill b16 c2 ~ |
	c8 a d4 e e |
	f c d bes |
	c2 bes4 ~ bes16 bes a g |
	\oneVoice a8 d, d'8. c16 b2 |
	c16 e c e a, c a c bes d bes d g, bes g bes |
	a c a c f, a f a g bes g bes e, g e g |
	f4 g a bes |
	\change Staff="up" \voiceTwo c2 a4 bes |
	g8 a c4 c2 |
	a4 d g, bes |
	c a'4. d,8 g4 |
	e \voiceThree \tieDown f ~ f16 d e f e4  |
}

bassvii = \relative c
{
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	R1 |
	s1 |
	s1 |
	s1 |
	s1 |
	s1 |
	r2 r8 f f f |
	a4 a8 g16 f g8 c, r c' |
	a16 c a c f, a f a g bes g bes e, g e g |
	f a f a c, ees c ees d4. c16 d |
	e8 c f a, bes8 a16 bes c8 c, |
	f2 ~ f8 f bes4 |
	a a' g e |
	f d e2 |
	f4 ~ f16 f e d e4 ~ e16 e d c |
	d8 g, g' f e8. d16 e8 c |
	f2 c'8. bes16 a8. g16 |
	f4 a bes g |
	a2 r |
	s1 | 
	s1 | 
	s1 | 
	s1 | 
	\oneVoice r8 c, c c d4 d8 c16 bes |
	c8 f, r f' e16 g e g c, e c e |
	d f d f b, d b d c e c e g, bes g bes |
	a4 ~ a16  c bes a bes4 ~ bes16 bes a g |
	c4 b c2 |
	f,1 |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅵ 7"
		\new Staff = "up" << { \soprvii } \\ {\altovii} >>
		\new Staff = "down" << {\tenorvii } \\ {\bassvii} >>
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
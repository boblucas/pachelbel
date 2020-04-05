
soprxii = \relative c'
{
	\key g \major
	R1 |
	R1 |
	r8 d fis16 g a fis b8 b, fis' g |
	a a, e' fis g g, d' e |
	fis2 g8 fis16 g e a g a |
	fis4 r r8 d'16 d d d d d |
	c8 c16 c c c c c b8 b16 b b b b b |
	a8 d,8. e16 d cis d4 r |
	r8 g b16 c d b e8 e, b' c |
	d d, a' b c c, g' a |
	b4 ~ b16 b a b c8 c,16 d e fis g a |
	b4 r r8 g16 g g g g g |
	f8 f16 f f f f f e8 e16 e e  e e e |
	d2 r |
	r8 d' fis16 g a fis b8 b, fis' g |
	a a, e' fis g g, d' e |
	fis8 fis,16 fis fis fis fis fis e8 e16 e e e e e |
	d8 d'16 d d d d d c8 c, g' a |
	b b, fis' g a a, e' fis |
	g4 r r8 g'16 g g g g g |
	f8 f16 f f f f f e8 e16 e e e e e |
	d8 d, fis16 g a fis b8 b, fis' g |
	a a, e' fis g g, d' e |
	fis8. g16 fis g a fis g8. a16 g a b g |
	c4 b ~ b16 b a g fis8.\trill g16 |
	g1 |
	\bar "|."
}

bassxii = \relative c'
{
	\key g \major
	\showStaffSwitch
	%\change Staff = "up"
	\clef bass
	r8 g b16 c d b e8 e, b' c |
	d d, a' b c c, g' a |
	b4 r r8 d16 d d d d d |
	c8 c16 c c c c c b8 b16 b b b b b |
	a8 d16 e d c b a b4 cis4 |
	d8 d, fis16 g a fis b8 b, fis' g |
	a a, e' fis g g, d' e |
	fis b e, a fis d16 e fis g a fis |
	b4 g \clef treble r8 g'16 g g g g g |
	f8 f16 f f f f f e8 e16 e e e e e |
	d8 e16 f g8 f e4 r |
	\clef bass
	r8 g,,8 b16 c d b e8 e, b' c |
	d d, a' b c c, g' a |
	b16 b' a g fis g a fis g8 a16 g fis8 e |
	d2 r8 d'16 d d d d d |
	c8 c16 c c c c c b8 b16 b b b b b |
	a8 d, a' b c c, g' a |
	b b, fis' g a e16 e e e e e |
	d8 d16 d d d d d c8 c16 c c c c c |
	b8 g' b16 c d b e8 e, b' c |
	d d, a' b c c, g' a |
	b4 r r8 d,16 d d d d d |
	c8 c16 c c c c c b8 b16 b b b b b |
	a8 d4 c8 b e4 d8 |
	c16 d e fis g a b g c8 cis d c |
	b16 g a b c c, e c g'8 g,4. |
}

\include "merge.ly"
\score
{
	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅷ 12"
		\new Staff = "up" << { \soprxii } >>
		\new Staff = "down" << {\bassxii} >>
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
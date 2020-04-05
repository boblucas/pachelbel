soprix = \relative c''
{
        \oneVoice
	r8 a16 a f8 a d, a'16 a f8 a |
	\voiceOne
	d, cis d16 f e d f4 e8 f16 g |
	a8 f e f16 g a8 b c gis |
	a4. g8 f4~f8. g16 |
	e4 f8 e f e f e |
	f16 g a g f8 g a b c a~ |
	a a c a~a b a4 ~|
	a2 r2 |
	s1 |
	r8 d16 d c8 d a d16 d c8 d |
	a gis a16 c b d c e gis, b a e' d e |
	f4 b,16 e d e cis a b cis d f e d |
	cis4 d16 e d cis d8 cis d16 e d cis |
	d f e g f8 cis d e16 f e f e d |
	c8 b c b c b c b|
	c16 d e d c8 d e d16 e f e d c |
	b2 \shape #'((0 . 0.5) (0 . 0.5) (0 . 0.5) (0 . 0.5)) Tie a~|
	a \shape #'((-0.25 . 1.2) (0 . 1.7) (0 . 1.2) (0 . 0.5)) Tie a~|
	a \voiceThree \once \override NoteColumn.force-hshift = #-1.4 g4. \voiceOne a16 bes |
	a2 b2\rest |
	R1 |
	\oneVoice
	r8 a'16 a f8 a d, a'16 a f8 a |
	d, cis d16 f e d f4 e8 f16 g |
	\voiceOne
	e4 a,16 b a gis a8 gis a16 b a gis |
	a16 c b d c8 d a4~ a16 a b c |
	b16 c b a gis a fis gis a e' d e cis8 b16 cis |
	d8 e16 f e f e d cis4  d16 e d cis |
	d8 cis d16 e d cis d8 e f cis |
	d16 e c d bes8. a16 a2 |
	g4 ~g16 g f g a2 ~|
	a \shape #'((0 . 0.5) (0 . 0.3) (0 . 0.3) (0 . 0.5) ) Tie a~|
	a8 b a4~  \shape #'( (0 . 0.5 ) (0 . 0.3) (0 . 0.3) (0 . 0.5)) Tie a2~ |
	a4 ~ a16 b gis8 a16 e' d e cis a a' g |
	f2 ~ f4. e16 d |
	cis e d cis d4~d16 d cis b cis8.\trill d16 |
	d1\fermata \bar "|."
}
altoix = \relative c'
{
	s1 |
	r2 r8 d16 d c8 d  |
	a d16 d c8 d a gis a16 c b d |
	c8 b16 a b8 e~e16 a, b cis d a d8~|
	d cis d cis d cis d cis |
	d e d2 e8 d |
	cis d e d c b c d |
	e4 ~e16 e d e f e d c b c d e |
	\stemUp
	cis d b cis d e f d g a f g e f d e |
	\stemDown
	f4 s2. |
	s1 | 
	s1 |
	r8 a16 a f8 a d, a'16 a f8 a |
	d,8 cis d16 f e g f4 g8 gis |
	a gis a gis a gis a gis|
	a b a2. ~|
	a4 gis \voiceThree  \once \override Beam.positions = #'(1 . 1) a8 e f e |
	f e f e \once \override Beam.positions = #'(1.4 . 2) f16 g a g \tieDown f4 ~ |
	\tieUp
	\shape #'((0 . -1) (-0.25 . -1) (-0.5 . -3) (-1 . -1.2)) Tie
	\voiceOne \once \override Beam.positions = #'(1.2 . 1)  f2 ~ f8 \voiceThree e16 d e4 |
	f2 s2 |
	R1 |
	\voiceTwo
	s1 | 
	s1 |
	r8 e16 e c8 e a, e'16 e c8 e |
	a, gis a16 c b d c8 d16 e f8 e |
	d b e d cis b a16 a' g a |
	f8 d g16 a g f e4 f8 e |
	f e f e f a4 g8 |
	a4 g~g16 g f e f4 ~ |
	f16 f e d e4 r16 e d e cis e d e |
	\voiceThree
	f4 e8 f \once \override Beam.positions = #'(0.6 . 0.8) e f e f |
	e2 s16 \once \override Beam.positions = #'(0.6 . 0.6) e d e \once \override Beam.positions = #'(0.6 . 0.6)  c e d e |
        \voiceTwo
        f4 e2 r4 |
	r16 a16 g a f d d' c bes2 |
	a1 ~ |
	a1 |
}
tenorix = \relative c'
{
	\clef bass
	R1*4 |
	r8 a16 a f8 a d, a'16 a f8 a |
	d,8 cis  d16 f e g f4 e8 f |
	e f e f e2~|
	e8 f16 g a2 gis4 |
	a2 b4 cis |
	d \change Staff="up" \voiceTwo f f2 ~|
	f16 \change Staff="down" \voiceOne a, b8 a e~e2 |
	r16 a b a gis4 a~a8 bes |
	\override Rest.staff-position = #0
	a4 r r2 |
	\override Rest.staff-position = #8
	R1 |
	\oneVoice
	r8 e'16 e c8 e a, e'16 e c8 e |
	a, gis a16 c b d c4 d |
	\voiceOne
	e16 b c d e f d e \change Staff="up" \voiceTwo cis4 d8 cis |
	\once \override NoteColumn.force-hshift = #0.5 d cis d cis d e d4 ~ |
	d8 e16 d c4 d c |
	c16\rest c d e f4 c16\rest d e f g4 |
	c,16\rest cis d e f4 e16 f e d d8.\trill cis16 |
	\change Staff="down" \voiceOne
	d4 a2 a4~|
	a8 g a4~ a8 g a b |
	c4 r r2 |
	R1 |
	R1 | 
	\oneVoice
	d,2\rest f8\rest a16 a f8 a |
	d, a'16 a f8 a d, cis d16 f e g |
	f4 ~f16 f e8 f g a f |
	bes b c4 cis a |
	\change Staff="up" \voiceTwo
	d e8 d \once \override NoteColumn.force-hshift = #0.5 cis d e d |
	c b c4 ~c8 b a4 |
	\change Staff="down" \voiceOne
	r16 a16 d c b4 a2 ~|
	a r16 d c d bes g g'8 ~|
	g4 f16 d e f e2 |
	fis1 |
}
bassix = \relative c
{
	R1*4 s1 |
	r2 r8 d16 d c8 d |
	a d16 d c8 d a gis a16 c b d |
	c4. c8 d4 e |
	a, f' e a |
	d, a'8 bes f bes a bes |
	f e c gis a b c4 |
	d e a, f'8 g |
	a,4 s s2 |
	R1 |
	s1 |
	s1 |
	r2 r8 a16 a f8 a|
	d, a'16 a f8 a d, cis d16 f e g |
	f4. g16 a bes8 g c4 |
	f, r16 d'16 e f g4 r16 e f g |
	a4 r16 d, e f g8 f e4 |
	d4. e8 f4 d8. e16 |
	f8 e f cis d2 |
	a'4 r4 r2 |
	R1|
	R1 |
	s1 s1 s1 s1|
	\oneVoice
	d,8\rest d16 d c8 d a d16 d c8 d |
	a gis a16 c b d c2 |
	\voiceTwo
	d4 e cis2 |
	d g |
	a1 | 
	d,1 |	
}


\include "merge.ly"
\score
{

	\new PianoStaff <<
		\accidentalStyle "piano"

		\set PianoStaff.instrumentName = # "Ⅰ 9"
		\new Staff ="up" << { \soprix } \\ {\altoix} >>
		\new Staff="down" << { \tenorix} \\ {\bassix} >>
	>>
	\layout  
	{
		\context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
		\context 
		{
			\Score
			\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
		}
	}
	\midi {\tempo 4=100}
}
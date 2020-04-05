
tracka = \relative c { 
    \key d \minor
    \time 12/8
    f'4 f8 f4 f8 g4 g8 g4 g8 
    a bes c a g f a g a b a b
    c4 g8 c2. b4.
    c4 b8 c4. bes g
    %% 5
    a d4 c8 bes2. 
    a4 g8 a4. c d~
    d4 g,8 c2. b4.
    c4 b8 c4. d2.\rest
    s1.
    %% 10
    c4 c8 c4 c8 d4 d8 d4 d8
    e8 f g e d c d c d e d e
    f4. f2. e4.
    f4 e8 f4. c d
    e2. d
    %% 15
    c bes8 c bes a bes a
    g4. e' f2.
    e4 d8 e4. d c
    c2. bes
    a g
    %% 20
    a g4. bes
    a4 g8 a4. c d~
    d8 c b c2. bes4.~
    bes a2. g4.~
    g f2. e4.
    %% 25
    <f c>4. <a f>4 c8 d4. c
    bes a d, c
    d c d d
    e e <f c> <f c>
    <a f> < a f> <a f>2.\fermata 
    \bar "|."
}

trackb = \relative c { 
    \override MultiMeasureRest #'staff-position = #-6
    s1.
    s1.
    c'4 c8 c4 c8 d4 d8 d4 d8 
    e8 f g e d c d c d e d e
    %% 5
    f4.~ f4 e8 d4. g
    f4 e8 f4.~ f2.
    e f
    \tieUp e4 d8 e4. f g~
    g8 f e f4.~ f8 e d e4.
    %% 10
    f e4.\rest e2.\rest
    \override MultiMeasureRest #'staff-position = #-3
    s1.
    f4 f8 f4 f8 g4 g8 g4 g8 
    a bes c a g f a g a b a b
    \tieDown c2.~ c8 bes a bes4.~
    %% 15
    bes a g f
    e c'2. b4.
    c4 b8 c4. bes2.
    a~ a4. g~
    g f2. e4.
    %% 20
    f2.~ f4. e
    f4 e8 f4.~ f2.
    e d
    g4. f2. c4.~
    c2. d4. c
    %% 25
    a c4 a'8 bes4. a
    d, c bes a
    bes a bes bes 
    bes bes a a 
    c c c2.
}

trackc = \relative c { 
    \key d \minor
    \time 12/8
    \clef bass
    \override MultiMeasureRest #'staff-position = #0
    R1.
    R1.
    R1.
    R1.
    %% 5
    \oneVoice
    f4 f8 f4 f8 g4 g8 g4 g8 
    a bes c a g f a g a b a b
    \voiceOne
    c2. a4. g4\trill f8
    g4.~ g4 c8 bes2.
    a2. g4.~ g8 c bes
    %% 10
    a4. g a b
    c c2. bes!4.
    a c d c~
    c2. r2.
    s1.
    %% 15
    \override MultiMeasureRest #'staff-position = #4
    s1.
    c4 \clef violin c8 c4 c8 d4 d8 d4 d8 
    e8 f g e d c d c d e d e
    f e f c bes c d c d es d es
    c bes c d c d bes a bes c bes c
    %% 20
    \clef bass c4. d bes2.
    c4 c8 c2. g4.~
    g2. a4. g
    c2. bes
    a g4.~ g8 f g
    %% 25
    d8\rest c f~ f4.  s2.
    s1.
    s1.
    s1.
    s4. s8 f4~ f2.\fermata
}

trackd = \relative c { 
    s1.
    s1.
    s1.
    s1.
    %% 5
    \override MultiMeasureRest #'staff-position = #-2
    s1.
    s1.
    c4 c8 c4 c8 d4 d8 d4 d8 
    e8 f g e d c d c d e d e
    f4. d8 e c bes4. c
    %% 10
    f e f4 d8 g4.
    c,2. g'
    f4 g8 a4 f8 bes4 g8 c4 c,8
    f4 c8 f2. d4.
    c8 c' bes a bes g f4. g8 a f
    %% 15
    e d c f c f, bes2.
    c4. s4. s2.
    s1.
    s1.
    s1.
    %% 20
    f,4 f8 f4 f8 g4 g8 g4 g8 
    a bes c a g f a g a b a b
    c4.~ c8 d e f e f g f g
    e d e f e f d c d e d e
    f e f a, g a bes a bes c4.
    %% 25
    f,2. d'8\rest f bes, d8\rest f f,
    d'8\rest f bes, d8\rest f f, d'8\rest f bes, d8\rest f f,
    d'8\rest f bes, d8\rest f f, d'8\rest f bes, d8\rest f bes,
    d8\rest f bes, d8\rest f bes, d8\rest f f, d'8\rest f f,
    d'8\rest f f, d'8\rest f f,~ f2.
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 3"
        \new Staff = "up" << { \tracka } \\ {\trackb} >>
        \new Staff = "down" << {\trackc } \\ {\trackd} >>
    >>
    \layout 
    {
        \context { \PianoStaff \override InstrumentName #'font-size = #5  }
		\context { \Staff \consists #merge-rests-engraver }
		\context { \Staff \consists #merge-mmrests-engraver }
        \context 
        {
            %\Score
            %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
        }
    }
    \midi {\tempo 4=100}
}


tracka = \relative c'' { 
    s1
    s1
    s1
    s1
    %% 5
    s1
    s1
    s1
    s1
    s1
    %% 10
    s2 c4 g
    a4. g16 a f8 g a bes
    c g c2 b4
    c8 g f16 e f g e4 d
    c8 f4 e8 f4. es8
    %% 15
    d2 c4. f8
    g a bes [ c16 bes ] a4 d~
    d c2 bes4~
    bes a2 g4~
    g8 f f2 e!4
    %% 20
    f b4\rest b2\rest
    s1
    s1
    f'4 c d4. c16 d
    bes8 c d es f c f4~
    %% 25
    f e! f4. es8
    d4. c8 bes4 a
    g2 f4 c'8 bes
    a bes c bes16 a g4. g'8
    f e f [ g16 f ] e2
    %% 30
    d c
    bes4. c8 d2
    c2 bes8 a16 bes c4
    a2 g
    f4 c'2 bes4~
    %% 35
    bes8 bes a8. g16 a2~
    a4 b4\rest b2\rest
    \bar "|."
}

trackb = \relative c { 
    \oneVoice
    f'4 c d4. c16 d
    bes8 c d es f c \tieUp f4~
    f e! f8 c f4
    a8 g f [ e16 d ] e2
    %% 5
    d e8 f g4
    f e \tieDown f2~
    f4. g8 c,2
    bes8 a16 bes c4. c8 f4~
    f8 es es [ d16 es ] d2
    %% 10
    c2 s 
    \voiceTwo
    s4 c4 d2
    e4. d16 c d8 g, g'8. f16
    e4 d r8 c8 bes16 a bes c
    s1
    %% 15
    s1
    s2. f4
    es2 d
    c4 f8 es d2
    c2. bes4
    %% 20
    c8 d c bes a2
    \oneVoice
    g4. g'8 f e f [ g16 f ]
    e8 f16 g a2 g4
    \voiceTwo
    f2~ f8 d f4
    g2 f
    %% 25
    g f8 g a4
    bes f g8 d f4~
    f e f2~
    f2. e4
    d2 c8 g' c4~
    %% 30
    c8 bes16 a bes2 a4
    bes8 f g a bes2~
    bes4 a g4. g8~
    g4 f2 e4
    f2 d~
    %% 35
    d8 d c8. bes16 c2~
    c4 s4 s2
}

trackc = \relative c { 
    \clef bass
    s1
    s1
    \oneVoice
    c'4 g a4. g16 a
    f8 g a bes c g c4~
    %% 5
    c b c4. bes8
    \voiceOne
    a bes c bes a4 bes8 c
    d c bes4 a2
    g4. g8 a4. g16 f
    g4 a bes8 f bes4~
    %% 10
    bes a g2
    f4 s2.
    s1
    s1
    a4 g f8 g a4
    %% 15
    bes2. a4
    g2 f8 c' s4
    s1
    s1
    a4. g16 f g2
    %% 20
    f f~
    f4 e d2
    c4 r8 c'8 bes a bes c16 bes
    a2 bes4. a8
    \oneVoice
    g4 bes8 c d a d c
    %% 25
    bes4 c d4. c8
    bes2 f2\rest
    c'4 g a4. g16 a
    f8 g a bes c g c4~
    c b c4. c8
    %% 30
    \voiceOne
    d4. e8 f4 r4
}

trackd = \relative c { 
    \oneVoice
    R1
    R1
    s1
    s1
    s1
    \voiceTwo
    f4 c d4. c16 d
    bes8 c d es f c f4~
    f e! f d~
    d c bes8. c16 d8 e!
    %% 10
    f c f2 e4
    f2 \oneVoice r2
    R1
    R1
    \voiceTwo
    f4 c d4. c16 d
    %% 15
    bes8 c d es f c f4~
    f4 e! f4. f8
    g f16 g a8 f bes4 d,8 es
    f2 bes4. a16 g
    b,2\rest c4 g
    %% 20
    a4. g16 a f8 g a bes
    c g c2 b4
    c2 d4 e
    f2 b,2\rest
    s1
    s1
    s1
    s1
    s1
    s1
    %% 30
    d2\rest f4 c
    \stemNeutral d4. c16 d bes8 c d es
    f8 c f2 e!4
    f8 c d16 c d a bes8 g c bes
    a a'16 g a8 f bes16 f g a bes bes, d bes
    %% 35
    f'2~ f16 f e d c bes a g
    f4 d'4\rest d2\rest
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 12"
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
            %\override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        }
    }
    \midi {\tempo 4=100}
}

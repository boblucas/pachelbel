
tracka = \relative c { 
    \key f \major
    \time 4/4
    c''8 c16 c c8 d c4 b8\rest a8
    bes c d e f4 c8 bes
    a bes16 c d c bes a g bes a c bes d c es
    d8 c16 d es2 d8 c16 d
    %% 5
    e!4 f2 e8 d
    e4. f8 d2
    c8 d4 c8 d a bes4~
    bes a8 g a4~ a16 a bes a
    g a g a g a g a f g f g f g f g 
    %% 10
    es c' d es d8.\trill c16 d e d c bes d c bes
    a bes a bes c4. bes8 a4
    g4. f8 g4 c~
    c16 c8 c bes bes16~ bes bes8 bes a a16
    bes4 r4 r2
    %% 15
    b2\rest f8 f16 f f8 g
    f4 b8\rest d,8 es f g a
    bes4 g f r4
    r2 \stemNeutral c'8 c16 c c8 d
    c4 b8\rest a8 bes c d e
    %% 20
    f4~ f16 g d f es f d es c es d c
    \stemUp d4~ d16 c bes c d2
    g,8 a bes c d es f8. es16
    d4~ d16 es d c bes8. c16 bes c bes a
    g8 a g f g a16 bes c8 f16 es
    %% 25
    d4~ d16 d c bes a bes c8~ c bes
    c4. bes8 a4. bes8
    a4~ a16 a bes a g2~
    g8 d'16\rest g,16 d'16\rest f, d'16\rest e, d'16\rest f, d'16\rest f, d'16\rest f, d'16\rest f,
    d'16\rest es, d'16\rest es, d'16\rest es, d'16\rest es, d'16\rest d, d'16\rest d, d'16\rest d, d'16\rest d,
    %% 30
    d'16\rest d, d'\rest d, c8.\trill bes16 c2
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    s1
    c'2\rest f8 f16 f f8 g
    f4 r8 d8 es f g a
    bes4 g16 c bes c a8 f bes4~
    %% 5
    bes8 a g f g4. f8
    g a16 bes c4~ c8. c16 b16\rest bes16 b16\rest bes16
    a4 g f2
    r2 c8 d16 es f4~
    f es2 \change Staff="down" \voiceOne d4
    c2 bes8 c d e
    \change Staff="up" \voiceTwo
    f4. c8 d g4 f8
    e4. f8 e4. f16 es
    d8 d d d c c c c 
    d4~ d16 es c d es f d es c d bes c
    %% 15
    s1
    s1
    bes4 es4. d8 es16 d c es
    d es c d bes c a bes s2
    s1
    s1
    f'8 f16 f f8 g f4 r8 d8
    es8 f g a bes4 c
    bes8 f bes a g a g f
    e! f e f e4. c'8~
    %% 25
    c16 c bes a bes4 a r16 f8.~
    f8 es d4 c f8 e
    f c f4~ f16 f es d es4~
    es8 es d c d d d d 
    d d c c c c bes bes
    %% 30
    bes bes s2.
}

trackc = \relative c { 
    \clef bass
    \oneVoice
    s1
    s1
    s1
    s1
    %% 5
    r2 c'8 c16 c c8 d
    c4 r8 a8 bes c d e 
    f4 es d4. c16 bes
    \voiceOne 
    c4. bes8 s2
    s1
    %% 10
    s1
    s1
    s1
    s1
    s1
    %% 15
    a2 bes
    a4 bes c2
    s1
    s2 g4 a8 bes
    a16 bes a bes c4 bes2
    %% 20
    a16 f g a bes2 a4
    bes r4 s2
    s1 
    s1
    \stemNeutral c8 c16 c c8 d c4 d,8\rest a'8
    %% 25
    bes c d e! f8. es16 d8. c32 bes
    a16 bes c a \stemUp bes bes, d es f4 r4
    s1
    s1
    s1
    %% 30
    s4 a8. g16 a2
}

trackd = \relative c { 
    \oneVoice
    R1
    R1
    R1
    R1
    %% 5
    s1
    s1
    s1
    f8 f16 f f8 g f4 d8\rest d8
    es f g a bes f bes4~ 
    %% 10
    bes a bes d,4\rest
    R1
    \stemNeutral c8 c16 c c8 d c4 d8\rest a8
    bes c d e f c f es
    d bes bes' a g f es d
    %% 15
    \stemDown c8 d16 es f8 es d c d es
    f4 g c,8 d es f
    g4. c16 bes a8 bes g a
    bes a g f e! c f bes,
    f'2 g
    %% 20
    d4. bes8 c4 f
    bes,4. es8 bes16 f' g a bes4
    c8 bes16 a g8 f16 es d d' c bes a8 f
    bes4 d,4\rest d2\rest
    s1
    %% 25
    s1
    r2 f,8 f16 f f8 g
    \stemNeutral f4 d'8\rest d,8 es f g a
    bes2~ bes8 c d bes
    c d es f g4 d8 es
    %% 30
    \stemDown f2 f,
}



\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 6"
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

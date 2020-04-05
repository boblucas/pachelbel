
tracka = \relative c { 
    \key f \major
    \oneVoice
    R1
    R1
    s1
    s1
    \voiceOne
    c''4 d c8 bes16 a bes8 c
    a4 bes a8 bes c4~
    c bes2 a4
    g f g8 a g4
    a8. g16 f4 f'2\rest
    s1
    f4 g f8 es16 d es8 f
    d4~ d16 c bes a bes4~ bes16 c bes c
    a8. a16 g a g f g4 f
    g8 a g4 f8. es16 d es d es
    %% 15
    f8 bes4 a8 bes4 c4~
    c bes~ bes8 bes a8.\trill g16
    a1
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    \time 4/4
    s1
    s1
    \oneVoice
    f'4 g f8 es16 d es8 f
    d4 es f8 g16 f es f d es
    \voiceTwo
    c4 r4 r2
    f4 g f8 es16 d es8 f
    d4 g4. c,8 f4
    e f e8 f4 e8
    f4 d f g
    %% 10
    << {c,4 bes c8 d c4} \\ {a4 bes a8 bes4 a8} >>
    s1
    s2 g8 d' g4~
    g8 f e d e4 f
    e8 f4 e8 f4 s4
    %% 15
    a,8 d c4 <d f> f
    d2~ d8 d c8. bes16 
    c1
}

trackc = \relative c { 
    \key f \major
    \clef bass
    \oneVoice
    c'4 d c8 bes16 a bes8 c
    \voiceOne
    a4 bes c8 d g, a
    bes2 a8 bes4 a8
    bes4 a8 g f4 g
    %% 5
    a bes a g
    f bes,8 c d4 c8 bes16 a
    bes4~ bes16 bes' a g a4. bes8
    c4 r4 r2
    c4 d c8 bes16 a bes8 c
    %% 10
    f,4 g \voiceTwo f8 es16 d es8 f
    \voiceOne bes2 bes4. c8~ 
    c bes a4 s2
    d,2\rest \stemDown c'4 d
    \stemUp c8 bes16 a bes8 c a4 bes
    %% 15
    s1 
    s1
    s1
}

trackd = \relative c { 
    \key f \major
    \time 4/4
    s1
    f4 g f8 es16 d es8 f
    d4 es f8 g c,4
    bes c d es
    %% 5
    f bes, f'4. e!8
    f4 s2.
    s1
    c4 d c8 bes16 a bes8 c
    a4 bes a g8 f16 e
    %% 10
    f4 s2.
    d'4 es d8 g4 a8
    fis8 g4 fis8 d2\rest
    s1
    r2 f,4 g
    %% 15
    \stemNeutral f8 es16 d es8 f d16 d' c bes a a' g a
    bes f g a bes bes, d bes f'2
    f,1
}


\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 7"
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

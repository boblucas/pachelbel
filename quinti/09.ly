
tracka = \relative c' { 
    \oneVoice
    R1
    r2 c16 d c d c d c d
    \showStaffSwitch
    \change Staff="down" \voiceOne
    f,8 f \change Staff="up" \oneVoice f'4 c d
    e2 d4 g~
    %% 5
    g8 f f2 e4
    f c16 d c d e4 f
    e2 d
    e4 b'4\rest f16 g f g f g f g
    c,8 c c'4 f, g
    \voiceOne
    a2~ a16 g f g e g f e
    f8 g16 a bes2 a8 bes16 a
    g2 a4 r8 c16 d
    e4 f g c,~
    c b c c8\rest g8
    %% 15
    a16 bes a bes g a g a f g f g f g f g
    e f e f e f e f d e d e d4
    s2 c'16 d c d c d c d
    f,8 f f'4 \stemUp c d
    e f2 e4~
    %% 20
    e d4. e8 cis4
    d d2 c!4~ c bes8 c16 bes a2
    g a4 bes
    c8 c bes8.\trill a16 g4 a~
    a16 a bes c g8.\trill f16
    f2
    \bar "|."
}

trackb = \relative c { 
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
    s1
    d'4~d16 d c bes c8 d16 e f4~
    f e f a
    g8 c b8. a16 g2
    g g4 r8 e8
    %% 15
    f4 e2 d4~
    d c2 s4
    \stemUp c2 \stemDown s2
    s2 e8 a g8. f16
    g4 a bes4. c16 bes
    %% 20
    a2 g
    f8 d16 e f8 g a g16 f e8 f
    g d g2 f4~
    f e f8 f e8.\trill d16 
    c4 d e f~
    f e <c a>2
}

trackc = \relative c { 
    \clef bass
    \oneVoice
    f16 g f g f g f g c,8 c c'4
    f, g a8 g f e
    d4. c16 d e4 f8.\trill e32 f
    g8 c, c'4. bes8 bes [ a16 g ]
    \voiceOne
    a4. g16 f g2
    \change Staff="up" \voiceTwo
    a g8 c4 b8
    c2. b4
    c8 g c2 \change Staff="down" \voiceOne bes!4~
    bes4 a4. g16 f e8 d16 e
    %% 10
    f8 \change Staff="up" \voiceTwo c' d2 cis4
    s1
    \change Staff="down" \oneVoice c16 d c d c d c d f,8 f f'4
    c4 d e~ e16 e d c
    \voiceOne d2 e4 s4
    %% 15
    s1
    s2. bes4~
    bes a g2
    a4 d s2
    s1
    %% 20
    s1
    s1
    s1
    s1
    s1
}

trackd = \relative c { 
    s1
    s1
    s1
    s1
    %% 5
    r2 c16 d c d c d c d
    \oneVoice
    f,8 f f'4 c d
    e16 f e d c bes a g f8 f'16 e d8 g
    e8. d16 c8 e \voiceTwo d2
    c4 f d c
    %% 10
    f,~ f16 f' e d e4 a
    d, d4\rest d2\rest
    s1
    s1
    g16 a g a g a g a c,8 c c'4
    %% 15
    f, g a8 f d8\rest bes'8
    g e d8\rest a'8 f d d8\rest g8
    e c f2 e4
    d2 \stemNeutral a'4 \tieUp bes~
    bes8 c16 bes a8 f g4 c,
    %% 20
    f4. e16 d e4 a,
    d4 d4\rest d2\rest
    d2\rest f,16 g f g f g f g
    c,8 c c'4 f, g
    a bes4. c16 bes a8 bes
    c2 f,
}



\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 9"
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
            \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8)
        }
    }
    \midi {\tempo 4=100}
}

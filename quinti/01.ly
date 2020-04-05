
tracka = \relative c { 
    \key d \minor
    R1
    R1
    s1
    s1
    b''2\rest f4 c
    d4 bes' a g
    f2 g
    a g
    f8 g a4 g f
    s1
    c'4 g a f'
    \oneVoice
    e d c2~
    c8 bes a g a2
    \voiceOne
    g f
    s1
    s1
    s1
    s1
    s1
    r2 f'4 c
    d bes' a g
    f8 [ e ] f g16 f e2
    d4 g f8 c f4~
    f e f d
    c bes2 a4~
    a8 g16 f g4 f e
    d4. e8 f4 g
    a bes2 a4
    g2. a8 bes
    a1
    \bar "|."
}

trackb = \relative c { 
    R1
    R1
    \oneVoice
    c'4 g a f'
    e d c d
    \voiceTwo
    e4. d8 c4. c8
    bes8 c d e f4 e~
    e d e2
    f2. \voiceThree e4
    f s4 s2
    \oneVoice
    e2 d
    \voiceTwo
    c2 r2
    s1
    s1
    c4 g a f'
    \oneVoice
    e d c c'~
    c8 bes bes2 a4~
    a g f e~
    e d2 cis4
    d f bes2~
    \voiceTwo
    bes8 bes a g a2
    s2 f4 e
    d2 c8 g' c4~
    c8 [ bes ] bes a16 g a4. g16 f
    g8 a bes4 c a
    g f e2
    \voiceThree
    d c
    bes c8 d e4
    f2 \voiceTwo e4 f~
    f e8 d e2
    f1
}

trackc = \relative c { 
    \key d \minor
    \clef bass
    \oneVoice
    f4 c d bes'
    a g f2
    c8 [ d ] e d16 e f4 e8 d
    g4. f16 g a4 g8 f
    g c, c' bes a4. a8
    g2 a8 bes c bes
    a g16 a bes8 a g4 c8 bes
    \showStaffSwitch
    \voiceOne a8 f a bes \change Staff="up" \voiceTwo c4 bes
    c4. \change Staff="down" \voiceOne a8 b c4 b8
    c2. b4
    c2. d4
    c bes a2
    g f2~
    f4 e f8 e d4
    \oneVoice
    g8 a bes2 a4
    \voiceOne
    d c8 bes8 c2
    bes8 c d4 c bes
    a2 g8 [ f ] g a16 g
    f4 a d2
    c1
    bes8 c d e s2
    s1
    R1
    \oneVoice
    c4 g a f'
    e d c4. bes16 a
    \change Staff="up" \voiceTwo
    bes4. bes8 a4 g
    f4. g8 a4 bes
    c d \change Staff="down" \voiceOne g, a8 bes
    c1~
    c
}

trackd = \relative c { 
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    r2 c4 g \noPageBreak
    a f' e d \noPageBreak
    c8 c16 bes a8 a'16 g f8 d g f \noPageBreak
    e2 f4 e8 d \noPageBreak
    e8 f g4. c,8 f4~ \noPageBreak
    f e f a,8 bes \noPageBreak
    c2 f,4 r4 \noPageBreak
    s1 \noPageBreak
    b2\rest f'4 c \noPageBreak
    d bes' a g \noPageBreak
    f2 e \noPageBreak
    d2~ d8 d g f \noPageBreak
    e2 f8 g a g16 a \noPageBreak
    bes2 f4 \tieUp c'~ \noPageBreak
    c b c d,4\rest \noPageBreak
    R1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    \oneVoice
    r2 f,4 c \noPageBreak
    d bes' a g \noPageBreak
    \voiceTwo
    f8 f' e d \tieDown c2~ \noPageBreak
    c1 \noPageBreak
    f,1 \noPageBreak
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
        \accidentalStyle "piano"
        \set PianoStaff.instrumentName = # "Ⅴ 1"
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
            \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
        }
    }
    \midi {\tempo 4=100}
}

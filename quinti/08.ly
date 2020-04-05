#(set-global-staff-size 17)

tracka = \relative c { 
    \key f \major
    \time 4/4
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    s1  \noPageBreak
    b''8\rest f16 g f g f g f8 a g16 f e d  \noPageBreak
    c8 c'16 d c d c d a4 g  \noPageBreak
    f8 f a16 b a b c8 g c4~  \noPageBreak
    %% 15  \noPageBreak
    c b c g16 a g a \pageBreak  \noPageBreak
    bes!8 a16 g f g f g a8 g16 f e f e d  \noPageBreak
    r2 \stemNeutral b'8\rest c16 d c d c d  \noPageBreak
    c8 d c16 bes a g f8 f'16 g f g f g  \noPageBreak
    e4 d c8 c d16 e d e  \noPageBreak
    %% 20  \noPageBreak
    \stemUp f4 e d2~  \noPageBreak
    d8 c d4 e2  \noPageBreak
    f8 c d16 e d e f4 c16 d c d  \noPageBreak
    e8 e16 f g8 e f f16 g a g a f  \noPageBreak
    g2~ g8 f g4  \noPageBreak
    %% 25  \noPageBreak
    a2 g4 f  \noPageBreak
    e4 d c8 bes a4  \noPageBreak
    g2 a~  \noPageBreak
    a4 b c2~  \noPageBreak
    c4 bes! a c  \noPageBreak
    %% 30  \noPageBreak
    g4 c2 b4  
    c bes! a g  
    f g16 a g a bes4 a 
    g16 a g a f2 e4  
    f1\fermata 
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    \oneVoice
    r8 c'16 d c d c d c8 d c16 bes a g
    f8 f'16 g f g f g e4 d
    c8 c d16 e d e f2
    c4 d e2
    %% 5
    f4 g8 f16 g a8 c, f4
    e8 f16 e d4 e8 f g4
    c, d e2~
    e8 d e4 f2
    g4 f e d
    %% 10
    c2 bes~
    bes8 a16 g a4 g2
    \voiceTwo
    a r2
    s1
    d2 c8. d16 e8 d16 c
    %% 15
    d8 [ g, ] g'8. f16 e8 c e16 f e f
    g8 f16 e d e d e f8 e16 d c d c bes
    \stemUp c d e d c d c bes \stemDown s2
    s1
    s1
    %% 20
    r2 r8 g'16 a g a g a
    g8 a g16 f e d c8 c'16 d c d c d
    a4 g f8 f a16 b a b 
    c8 c16 d e8 c d d16 e f8 d
    e2 e8 d e4
    %% 25
    f4 c4. g8 a16 b a b
    c4 bes! a8 g f4~
    f e f2~
    \voiceThree
    f4 g g2
    f8 c \voiceTwo d16 e d e f2
    %% 30
    e2 d
    r8 c8 d16 e d e f4 e
    s1
    r2 r8 c16 d c d c bes
    a1
}

trackc = \relative c { 
    \clef bass
    s1
    s1
    \oneVoice
    r2 r8 f16 g f g f g
    f8 a g16 f e d c8 c'16 d c d c d
    %% 5
    a4 g f8 f a16 b a b
    c4. b8 c4. bes8
    \voiceOne
    a8. [ a16 g8 f ] g2~
    g8 f g4 \change Staff="up" \voiceTwo a d~
    d8 c4 b8 c4 bes4~
    %% 10
    bes8 \change Staff="down" \voiceOne a16 g a4.  d,8 g4~
    g f2 e4
    f2 s2
    s1 
    s1 
    %% 15
    s1 
    s1 
    s2 a2
    e8 f e4 f2
    g16 a g a bes4 a b8 cis
    %% 20
    d4 c! b2
    s1 
    s1 
    s1
    \oneVoice
    r8 c16 d c d c d c8 d c16 bes a g
    %% 25
    f8 f'16 g f g f g e4 d
    c8 c d16 e d e f4. a,16 bes
    \voiceOne
    c8 bes c c, f2
    \change Staff="up" \voiceTwo
    c'4 d e2
    f4 s4 s2
    s1
    s1
  
    d8 \change Staff="down" \voiceOne d, e16 f e f g4 f
    e a8 g16 f g2
    f1\fermata
}

trackd = \relative c { 
  \oneVoice
    R1
    R1
    s1
    s1
    s1
    s1
    \voiceTwo
    g2\rest b8\rest c16 d c d c d 
    c8 d c16 bes a g f8 f'16 g f g f g 
    e4 d c8 c d16 e d e
    \voiceTwo
    f4. a,8  bes4. c8
    d4. a16 bes c8 bes c4
    f,2 f'4 g
    a e f8 a bes16 c bes c
    \oneVoice
    R1
    R1
    R1
    \voiceTwo
    a16 bes c bes a bes a g f2
    c8 bes c4 d2
    c4 d8 e f4 e
    d8\rest d8 e16 f e f g2
    \oneVoice
    R1
    R1
    R1
    \voiceTwo
    s1
    s1
    s1
    s2 r8 f,16 g f g f g
    \oneVoice
    f8 a g16 f e d c8 c'16 d c d c d
    a4 g f8 f a16 b a b
    %% 30
    c8 c e16 f e f g8 g, g'8. f16
    e8 a g4 d8\rest f, g16 a g a
    \voiceTwo bes4 a r8 g8 a16 bes a bes
    c1
    f,
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 8"
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

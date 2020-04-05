tracka = \relative c { 
    \time 6/8
    \oneVoice
    R2.
    R2.
    R2.
    R2.
    %% 5
    R2.
    R2.
    R2.
    \voiceOne
    s2.
    s2.
    %% 10
    s2.
    s2.
    s2.
    \oneVoice
    c''4 c8 d c d
    bes a bes c bes c
    %% 15
    \voiceOne
    a g f a4 bes8
    c4. bes8 a g
    a4 bes8 c4.~
    c8 bes a bes4.
    c4.~ c8 f, bes~
    %% 20
    bes4 a8 bes4.~
    bes a
    bes2.
    a~
    a4. g~
    %% 25
    g8 a e f4.
    \oneVoice
    R2.
    f'4 f8 g f g 
    es d es f es f
    d c bes d4 es8
    %% 30
    f4 c8 d es a,
    b a g c4.~
    \voiceOne
    c bes~
    bes a
    g f
    %% 35
    g e
    f2.
    e8 d c e4 f8
    g4. a g2. f4. d
    c8 f4. g4
    %% 40
    a2.
    \bar "|."
}

trackb = \relative c { 
    s2.
    s2.
    s2.
    s2.
    %% 5
    s2.
    s2.
    s2.
    \oneVoice
    f'4 f8 g f g
    es d es f es f
    %% 10
    d c bes d4 es8
    f4. es8 d c
    d es d c d bes
    \voiceTwo
    s2.
    s2.
    %% 15
    s4. f'4.
    r8 c8 f~ f4 e8
    f4.~ f8 g es
    \showStaffSwitch
    \change Staff="down" \oneVoice
    d4. d8 c bes
    a bes c d4.
    \change Staff="up" \voiceTwo
    %% 20
    c bes
    c2.
    f4 d8 f4 g8
    r8 f8 c d es c
    bes2.
    %% 25
    s2.
    s2.
    s2.
    s2.
    s2.
    %% 30
    s2.
    s2.
    d2. 
    c8 d e f4.
    e a,
    %% 35
    bes g
    c4 a8 b8\rest c8 d
    g,4. c~
    c c8 f4~
    f4.~ f8 e4
    %% 40
    r8 c8 a~ a a bes~
    << { bes4 a8 bes4.} { s4. s8 c8\rest e8} >>
    \voiceThree
    d8\rest f4~ f4.
}

trackbb = \relative c { 
    s2.*41
    \stemDown s4 \tieDown c'2
}

trackc = \relative c { 
    \clef bass
    s2.
    s2.
    s2.
    c'4 c8 d c d
    %% 5
    bes a bes c bes c
    a g f a4 bes8
    c4. bes8 c g
    a4. bes
    c a
    %% 10
    bes2. 
    r8 f8 bes s4.
    s2.
    a2.
    g
    %% 15
    f4. s4.
    s2.
    s2.
    s2.
    s2.
    %% 20
    s2.
    s2.
    s2.
    s2.
    s2.
    %% 25
    a4. r8 a8 d~
    d bes es c f es
    d2.
    c
    bes
    %% 30
    a
    g
    s2.
    \oneVoice
    a4.~ a8 a bes
    \voiceOne
    c4. r4. 
    %% 35
    s2. 
    s2. 
    s2. 
    s2. 
    s2. 
    %% 40
    s2. 
    s2. 
    a4.\rest f4.
}

trackd = \relative c { 
    f4 f8 g f g
    es d es f es f
    d c bes d4 es8
    f4. d
    %% 5
    g e
    f2.
    e8 d c d4 e8
    f4. es
    c d
    %% 10
    bes~ bes8 bes c
    d4. g4 a8
    bes4. a4 g8
    f2.~
    f4. e
    %% 15
    f d8\rest f8 g
    \oneVoice
    a4. g
    f r
    s2.
    s2.
    %% 20
    f4 f8 g f g
    es d es f es f
    d c bes d4 e!8
    f4. fis
    g8 a f! es f d
    %% 25
    \voiceTwo
    c4. d
    g a
    bes b
    c a~
    a g
    %% 30
    f2.~
    f4. es8 d es 
    f es f g f g
    s2.
    c,4 c8 d c d
    %% 35
    \oneVoice
    bes a bes c bes c
    a g f a4 bes8
    c4. d8\rest c8 d e d c f4 a,8
    bes a g c4 c,8
    f2.~
    %% 40
    f~
    \voiceTwo
    f
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 11"
        \new Staff = "up" << { \tracka } \\ {\trackb} \\ {\trackbb} >>
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

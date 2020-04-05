
tracka = \relative c'' { 
  \time 12/8
    \oneVoice
    R1.
    R1.
    R1.
    R1.
    %% 5
    R1.
    s1.
    s1.
    s1.
    \voiceOne
    c4 c8 a4 a8 bes4 bes8 g4 g8
    %% 10
    c8 d c bes c bes a bes a g a g
    f4. g8 a f e4 f8~ f4 e8
    f4. b4.\rest b2.\rest
    \oneVoice
    R1.
    R1.
    \voiceOne
    %% 15
    s1.
    s1.
    s1.
    s1.
    s1.
    %% 20
    f'4 f8 e4 e8 f4 f8 d4 d8
    g a g f g f e f e d e d
    c4.~ c4 b8 c2.
    d c4. a
    g c bes2.
    %% 25
    g a4. bes
    a~ a4 g8 f g a bes4.~
    bes8 a g a g f e d e f c f 
    g c, g' a c, a' g c, f~ f4 e8
    f1.
    \bar "|."
}

trackb = \relative c { 
    s1.
    s1.
    s1.
    s1.
    %% 5
    s1.
    \oneVoice
    f'4 f8 e4 e8 f4 f8 d4 d8
    g a g f g f e f e d e d
    c4.~ c8 c f d4 e8 f g f
    \voiceTwo
    e4. f d e~
    %% 10
    e2. f4. d~
    d2. c
    a4. s4. s2.
    s1.
    s1.
    %% 15
    \oneVoice
    c4 c8 a4 a8 bes4 bes8 g4 g8
    c d c bes c bes a bes a g a g
    f2. bes8 c bes a bes a
    g2. c8 d c bes c bes
    a4. d2. cis4.
    \voiceTwo
    %% 20
    s1.
    s1.
    e4. d e4 g8 a4.~
    a4 d,8 g a g~ g4 c,8 f4.
    e2. d
    %% 25
    c2.~ c4. g'
    c,8 d e f4 e8 d2. 
    c~ c4. s4. 
    s1.
    c1.
}

trackc = \relative c { 
  \time 12/8
  \clef bass
    s1.
    s1.
    c'4 c8 a4 a8 bes4 bes8 g4 g8
    c8 d c bes c bes a bes a g a g
    %% 5
    f g a bes4.~ bes8 a g c d bes
    a4. g a f
    bes a g4 a8 bes4.~
    bes8 a g a4. b8 g c~ c4 b8
    c4. f, g2.
    %% 10
    a4. g f bes
    a8 g a bes4 a8 g4 a8 g4.
    f4 f8 e4 e8 f4 f8 d4 d8
    g a g f g f e f e d e d
    c f e d g f e4. d8 e f
    %% 15
    e4. f2. e4.~
    e2. f4. e
    d2. g4. f
    e2. a4. g
    s1.
    %% 20
    d'4. c! d b~
    b4 g8 a4 b8 c4. b
    s1.
    \oneVoice
    bes2. a4.~ a4 bes8
    \voiceOne
    c4 g8 a4. f g
    %% 25
    e2. f4. e
    f2.~ f4.~ f8 e d
    e4. f g a
    e f e4 a8 g4.
    a1.
}

trackd = \relative c { 
    f4 f8 e4 e8 f4 f8 d4 d8
    g a g f g f e f e d e d
    c4. f g4 g,8 c4 bes8
    a4 a'8 d,4 e8 f4 f,8 bes4 c8
    %% 5
    d4.~ d8 c d e4.~ e4 e8
    f4. c a bes
    g2. c4. d4 e8 
    f2.~ f4 e8 d4.
    c d g, c
    %% 10
    a2. d4. bes4 c8
    d4. bes c2.
    f,4. c' a bes
    b2. c4. f,4 g8
    a4. b c8 g c~ c4 b8
    %% 15
    c4. d g, c
    a g f2.
    bes8 c bes a bes a g2.
    c8 d c bes c bes a4. r4.
    f'8 g f e f d e2.
    %% 20
    d4. a' f g
    e4. d c g'
    \oneVoice
    d4 f8 g4. c, c'8 bes! a
    s1.
    \voiceTwo
    c,4 c8 a4 a8 bes4 bes8 g4 g8
    %% 25
    c8 d c bes c bes a bes a g a g
    f4.~ f8 g a bes2.
    c1.~
    c1.
    f,
}


\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 10"
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


tracka = \relative c { 
    \key f \major
    \time 4/4
    \override MultiMeasureRest #'staff-position = #0
    R1
    R1
    c'4. d8 e f g16 f e d
    c8 g' a e f d g d
    %% 5
    e f g4. c,8 f4~
    f8 e16 d e8 f g4 d
    e2 d
    d'2\rest f,4. g8
    a8 bes c16 bes a g f8 c' d a
    %% 10
    bes g c g a2
    \override MultiMeasureRest #'staff-position = #4
    s1
    c4. d8 \oneVoice e f g16 f e d
    c8 g' a e f d g d
    \voiceOne
    e2 d
    %% 15
    c~ c8 bes16 a bes4~
    bes8 a16 bes c4 a2
    c4 g8 c a2
    g f
    e d4 bes'~
    %% 20
    bes8 e, a4. d,8 g [ f16 g ]
    e8 [ c ]c' d16 c bes4. c16 bes
    a4. b8 c4 b
    c2 d~
    d8 c16 b c2 b4
    %% 25
    c8 g c4~ c4. bes!16 a
    bes2. a4~
    a g a4. c8
    d4 e f4. es16 f
    d8 c16 d bes4~ bes8 c16 bes a g a bes
    %% 30
    e, f g8~ g16 c, f8~ f16 f e d e4\trill
    <f c>1
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    \time 4/4
    s1
    s1
    s1
    s1
    %% 5
    s1
    s1
    s1
    c'8 d e4 d c4\rest
    s1
    %% 10
    s1
    \oneVoice
    g'2 f
    \voiceTwo
    e \change Staff="down" \voiceOne g8 c, d b
    c4 e d2
    c8 \change Staff="up" \voiceTwo g' a e f d g d
    %% 15
    e c f4~ f2
    g2~ g8 f16 e f4~
    f4 e f8 e f4~
    f e2 d4~
    d cis d r4 
    %% 20
    s1
    s1
    c4. d8 e f g16 f e d
    c8 g' a e f d g d
    e2 d4. g16 f
    %% 25
    e4. f8 g f16 e d4~
    d f8 g c,4 f~
    f e f8 e f4~ 
    f8 bes g bes c bes16 c a4~ 
    a g8 f e4 f
    %% 30
    e4 s2.
    a,1
}

trackc = \relative c { 
    \key f \major
    \time 4/4
    \clef bass
    \oneVoice
    f4. g8 a bes c16 bes a g
    f8 c' d a bes g c g
    a g f4 g8 a e g
    a e f g a bes4 b8
    %% 5
    c4. bes!8 a4. g16 f
    \voiceOne
    g4 c2 b4
    c8 b c2 b4
    c~ c16 d c bes a8 g f4~
    f e f8 g a4
    %% 10
    g2 f8 c' d a
    bes g c g a g16 a b4
    c8 g c4. \voiceTwo a8 b g
    e4 c'2 b4
    c2. bes!4~
    %% 15
    bes a d4. c16 d
    \voiceOne e4. c8 f4 e4\rest
    s1
    s1
    s1
    %% 20
    s1
    s1
    s1
    s1
    s1
    %% 25
    \stemNeutral c,4. d8 e f g4~
    g8 f16 e d8 e \stemUp f2
    s1
    s1
    s1
    %% 30
    b8\rest b16\rest bes a8. a16 g8 f g4
    \voiceOne
    f1
}

trackd = \relative c { 
    \key f \major
    \time 4/4
    \override MultiMeasureRest #'staff-position = #-2
    s1
    s1
    s1
    s1
    s1
    c4. d8 e f g16 f e d
    c8 g' a e f d g d
    e d c4 d2
    c d8 e f4~
    %% 10
    f e f2~
    f4 e2 d8 g
    c,2 s2
    \override MultiMeasureRest #'staff-position = #-4
    s1
    s1
    s1
    b2\rest f'4. g8
    \stemNeutral a bes c16 bes a g f8 c' d a
    bes g c g a f bes f
    \tieUp g e a g f d~ d16 d' c bes
    %% 20
    c4~ c16 c bes a bes2~
    bes4 a4. d,8 g4~
    g8 f16 e f8 e16 d c8 a g [ g' ]
    a e f c'~ c b16 a b4
    c4. a16 g f8 d g4
    %% 25
    s1 %% c,4. d8 e f g4~
    \stemDown s2 f,4. g8 %% g8 f16 e d8 e
    a bes c16 bes a g f8 c' d a
    \stemUp bes g c g a g f4
    bes4. a16 bes \tieDown c2~
    %% 30
    c1
    \voiceTwo
    f,
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 4"
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


#(set-global-staff-size 17)


tracka = \relative c { 
    \key f \major
    R1
    R1
    R1
    R1
    s1
    s1
    d''2\rest c4 c8 c
    d g, g' f e4  d
    c8 b a d b4 c~
    c4 b c2~
    c4 bes!8 c16 bes a2
    g a4 bes
    a4. g16 f e8 f16 g f8.\trill e16
    f2 b2\rest
    a,8 c d e f c \tieDown f4~
    f e d2
    e4 f e2
    b'2\rest f4 f8 f
    g c, c' bes a4 g
    f4. f'8 e4. f16 e
    d4. c16 bes a8 bes \tieUp c4~
    c8 d16 e f2 e4
    d2 c8 g' f4
    e2 r2
    a, g
    a4 bes a2
    g f
    e4 f2 e4
    <f c a>1
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    R1
    R1
    R1
    R1
    \oneVoice
    f'4 f8 f g c, c' bes
    a4 g f4. e16 d
    \voiceTwo
    e8 c f2 e4
    d2 c4 r4
    s4 f4. e8 e d16 c
    d2 e4 c8 d
    e f g2 f4~
    f e f e~
    e d2 cis4
    d s2.
    s1
    s1
    s1
    d2 c
    s1
    s4 d2 c4
    bes8 c d e f4. g8
    a4. g16 f g4 c~
    c b c4. b8
    c4 g4. \stemUp a8 bes4
    s1
    s1
    s1
    s1
    s1
}

trackc = \relative c { 
    \key f \major
    \clef bass
    s1
    r2 c'4 c8 c
    d g, g' f e4 d
    c2~ c8 bes16 a bes4
    %% 5
    a2 g
    f4 e d8 a' bes4~
    bes a g c~
    c b c b
    c s2.
    %% 10
    s1
    s1
    s1
    s1
    s4 a8 b c4 bes8 c16 bes
    %% 15
    \stemDown f4 bes8 a16 g a4. f8
    \stemUp g4 c2 b4
    c b c2~
    c4 bes2 a4
    g2 f4 e
    %% 20
    d8 a' s2.
    s1 
    d,2\rest \stemNeutral c'4 c8 c
    d g, g' f e4 d
    \set followVoice = ##t
    \hideStaffSwitch
    c4. d8 e \change Staff="up" \stemDown \tieDown f g4~
    %% 25
    g8 c, f2 e4
    f e2 d4~
    d c2 \change Staff="down" \stemUp \tieUp bes4~
    bes8 a a4 g2
    f1\fermata
}

trackd = \relative c { 
    \key f \major
    f4 f8 f g c, c' bes \noBreak \noPageBreak
    a4 g f8 e d c \noBreak \noPageBreak
    b2 c8 c' f, g \noBreak \noPageBreak
    a4 e8 f g4 d8 e  \noBreak \noPageBreak
    f2. e4 \break \noPageBreak
    f8 f, c'4 d2 \noPageBreak
    c1 \noPageBreak
    g'2 c,4 g' \noPageBreak
    a f g a \noPageBreak
    f g c, d4\rest \break \noPageBreak
    d2\rest f4 f8 f \noPageBreak
    g c, c' bes a4 g \noPageBreak
    f2 g4 a \noPageBreak
    d,2 e8 f g4 \override MultiMeasureRest #'staff-position = #-6 \noPageBreak
    s1 \break \noPageBreak
    c,4 c8 c d g, g' f \noPageBreak
    e4 d c8 d e f \noPageBreak
    g f16 e d8 e f2~ \noPageBreak
    f4 e4. d4 cis8 \noPageBreak
    d2 g4 a \break \noPageBreak
    bes2 d,2\rest \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    s1 \noPageBreak
    \stemNeutral f,4 f8 f g c, c' bes \break \pageBreak
    a4 g f d'16\rest f e d 
    e8 e, d'16\rest e d c d8 d, \stemDown d'16\rest d c bes 
    c4~ c16 d c bes c4 c, 
    f1
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 2"
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

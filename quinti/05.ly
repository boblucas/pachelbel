
tracka = \relative c { 
    \key f \major
    \oneVoice R1
    R1
    R1
    s1
    s1
    s1
    s1
    \voiceOne
    c''4 r8 c8 a a r8 d8
    g, g r8 c8 f, f b8\rest bes
    e,8.\trill d32 e f4 g~ g16 g a bes
    a8 g a bes c2~
    c4 b c a
    g2 f
    e d'2\rest
    s1
    \oneVoice
    f4 r8 f e e \stemNeutral r8 a
    d, d b8\rest g' c, c b8\rest f'
    b,8.\trill a32 b c4 d2
    e8 [ f ] g f16 e d4~ d16 c d e
    \voiceOne c8 d16 e f4 g2
    f4 f16 e f g e d e f e f e f
    d c d e d e d e c d c bes a c bes a
    bes8 c d16 e d e f g f g e4
    d2 e4~ e16 g f e
    f4~ f16 f e d e4~ e16 e d c 
    d4 c2 b4
    c2 c8. bes16 a g a bes
    a4 g a~ a16 a g a
    bes4~ bes16 bes a g a4~ a16 a g f
    g4 g16\rest c,16 f8~ f16 f e d e8. f16
    s2 b8\rest g8 c16 d c bes
    a2. g16 a g f
    e g a bes c2~ c16 c bes8\trill
    <a f>1
    \bar "|."
}

trackb = \relative c { 
    \key f \major
    \time 4/4
    s1
    s1
    s1
    \oneVoice f'4 r8 f8 e [ e ] r8 a
    d, d r8 g c, c r8 f
    b,8.^\trill a32 b c4 d2
    e4~ e16 f e f d e c d \set followVoice = ##t \change Staff="down" \stemUp bes c a bes
    g2 f8 c' \change Staff="up" \voiceTwo f4~
    f4 e d2
    c2 d4 e
    f2 g4 e16 g f e
    f4~ f16 f e d e4 f4~
    \voiceThree
    \hideStaffSwitch
    f e d2
    \change Staff="down" \voiceOne
    g,4 \change Staff="up" \voiceTwo r8 e'8 d2
    \oneVoice
    c8 bes16 c a16 c bes a bes c a bes g bes a g
    \change Staff="down" \voiceOne
    a4 d2 s4
    s1
    s1
    s1
    %% 20
    \change Staff="up" \voiceTwo
    r2  c'4 b8\rest c8
    a a r8 d8 g, g r8 c8 
    f, f r8 bes8 e,8._\trill d32 e f4
    g2 a8 b c4~
    c b c c~
    %% 25
    c b c8. bes!16 a4
    g8 f e4 f2
    g8 e16 f g a f g a8. g16 f4~
    f e f16 e f g f4~ 
    f16 f e d e4~ e16 e d c s4
    %% 30
    s1
    \voiceOne
    d2 \voiceTwo c
    r8 c f16 g f e d2
    e4~ e16 e f8~ f16 g d f e4
    c1
}

trackc = \relative c { 
    \key f \major
    \clef bass
    \oneVoice
    c'4 r8 c8 a a r8 d8
    g, g r8 c8 f, f r8 bes
    e,8.\trill d32 e f4 g2
    f8. [ g16 a8 f ] c'4 bes8\trill a
    %% 5
    bes4 a8\trill g a4 g8\trill f
    g4 e8 a f e16 f g8 g,
    c g' c4 \voiceTwo bes8 a g f~
    f4 e f4. bes8
    \oneVoice
    c2. bes4~
    bes4 a bes c~
    \voiceOne
    c8 bes c4 c2
    d c4 r8 c8
    \change Staff="up" \voiceTwo
    d4 c2 b4
    \once \override Beam.positions = #'( -4.5 . -5 )
    c8 \change Staff="down" \voiceOne g a2 g4~
    %% 15
    g4 f2 e4
    \voiceThree
    s4 s2 c'4
    bes2 a
    g a4 b
    c2. bes!4
    %% 20
    a2 g 
    f4 d4\rest d2\rest
    \oneVoice
    R1
    R1
    \voiceOne
    \clef violin g'4 b8\rest g8 e e b'8\rest a8
    %% 25
    d, d b'8\rest g8 c, c b'8\rest f8
    b,8.^\trill a32 b c4 d2
    e8 c16 d e f d e f8 c \clef bass d [ bes ]
    c2 r2
    \change Staff="up" \voiceTwo
    s2. d4~
    %% 30
    d16 g, c bes a8. a16 b4~ b16 b c8~
    c4 \change Staff="down" \voiceOne b g2
    f r8 f8 bes16 c bes a
    g4 a8. f16 g2 
    f1 
}

trackd = \relative c { 
    \key f \major
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    s1
    f4 d8\rest f8 e e d8\rest a'8
    d, d d8\rest g8 c, c r8 f8
    b,8.\trill a32 b c4 d2
    c4 r8 c8 bes [ a ] bes c16 bes
    \stemDown a4 d g, c
    f4. g8 a2~
    a4 g2 f4~
    f4 e f g
    c,8 d e f g2~
    g4 f2 e4 
    f s2.
    s1 
    s1 
    s1 
    s1 
    s1 
    s2. r4
    c4 r8 c8 a a r8 d8
    \oneVoice
    g, g d'8\rest c8 f, f d'8\rest bes8
    e,8.\trill d32 e f4 g2~
    \voiceTwo
    g8 d' g16 a g f e2
    f bes,
    c1
    f, 
}

\include "merge.ly"
\score
{
    \new PianoStaff <<
		\accidentalStyle "piano"

        \set PianoStaff.instrumentName = # "Ⅴ 5"
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
            \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/16)
        }
    }
    \midi {\tempo 4=100}
}

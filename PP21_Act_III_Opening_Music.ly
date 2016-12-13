\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "Act III Opening Music"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Andante." 4 = 96

  \bar "||"
}

upper = {
  \clef treble

  \key d \minor
}

lower = {
  \clef bass

  \key d \minor
}


\score {
  \new PianoStaff
    \with {
      instrumentName = #"Piano"
    }
  \keepWithTag #'score-only
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout {}
}

\score {
  \new PianoStaff
    \with {
      midiInstrument = #"acoustic grand"
    }
  \keepWithTag #'midi-only
  <<
    \new Staff = "upper"
    % \articulate
    \unfoldRepeats
    <<
      \upper
      \dynamics
    >>
    \new Staff = "lower"
    % \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
}

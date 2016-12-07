\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "“Ent’racte”"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsAllegroOne = {
  \tempo "Allegro." 4 = 132

}

upperAllegroOne = {
  \key a \minor
}

lowerAllegroOne = {
  \key a \minor
}

pedalAllegroOne = {
}


dynamicsAllegroTwo = {
}

upperAllegroTwo = {
}

lowerAllegroTwo = {
}

pedalAllegroTwo = {
}


dynamicsCantabileOne = {
  %\tempo "Cantabile."

}

upperCantabileOne = {
}

lowerCantabileOne = {
}

pedalCantabileOne = {
}


dynamicsCantabileTwo = {
}

upperCantabileTwo = {
}

lowerCantabileTwo = {
}

pedalCantabileTwo = {
}


dynamicsCantabileThree = {
}

upperCantabileThree = {
}

lowerCantabileThree = {
}

pedalCantabileThree = {
}


dynamics = {
  \set Score.tempoHideNote = ##t
  \time 2/4

  \dynamicsAllegroOne
  \dynamicsAllegroTwo
  \dynamicsCantabileOne
  \dynamicsCantabileTwo
  \dynamicsCantabileThree
}

upper = {
  \clef treble

  \upperAllegroOne
  \upperAllegroTwo
  \upperCantabileOne
  \upperCantabileTwo
  \upperCantabileThree
}

lower = {
  \clef bass

  \lowerAllegroOne
  \lowerAllegroTwo
  \lowerCantabileOne
  \lowerCantabileTwo
  \lowerCantabileThree
}

pedal = {
  \pedalAllegroOne
  \pedalAllegroTwo
  \pedalCantabileOne
  \pedalCantabileTwo
  \pedalCantabileThree
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
    \new Dynamics = "pedal" \pedal
  >>
  \layout {
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  \new PianoStaff
    \with {
      midiInstrument = #"acoustic grand"
    }
  \keepWithTag #'midi-only
  <<
    \new Staff = "upper"
    \unfoldRepeats
    <<
      \upper
      \dynamics
      \pedal
    >>
    \new Staff = "lower"
    \unfoldRepeats
    <<
      \lower
      \dynamics
      \pedal
    >>
  >>
  \midi {
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}


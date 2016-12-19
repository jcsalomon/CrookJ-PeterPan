\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Terrorism of the Pirates"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120

	<>\p
	s2*16		|
  \bar "|."
}

upper = {
  \clef treble

  \key d \major
}

lower = {
  \clef bass

  \key d \major
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
    \articulate
    \unfoldRepeats
    <<
      \upper
      \dynamics
    >>
    \new Staff = "lower"
    \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
  % \layout {}
}

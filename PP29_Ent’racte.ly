\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "Ent’racte"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 4/4
  \tempo "Allegretto grazioso." 4 = 120

  \partial 4

		s4\p	|
	s1*22		|
	s2.	%…

  \bar "|."
}

upper = {
  \clef treble

  \key g \major
}

lower = {
  \clef bass

  \key g \major
}

pedal = {
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
      \pedal
    >>
    \new Staff = "lower"
    % \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
      \pedal
    >>
  >>
  \midi {}
  % \layout {}
}

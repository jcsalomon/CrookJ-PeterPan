\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Approach of Peter"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Agitato e vivo." 4 = 120

  \partial 8

		s8\pp	|
	s2*7		|
	s4.	s8\f	|
	s2*4		|
	s4.	%…

  \bar "|."
}

upper = {
  \clef treble

  \key a \minor
}

lower = {
  \clef bass

  \key a \minor
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
  % \layout {}
}

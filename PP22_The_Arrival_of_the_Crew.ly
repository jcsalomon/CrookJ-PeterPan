\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Arrival of the Crew"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


upperOne = {
}

lowerOne = {
}


upperTwo = {
}

lowerTwo = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Allegretto." 4 = 116

  \partial 8
	<>\f
		s8	|
	s2*7		|
	s4.	%…
  \bar "||"

  % \partial 8
		s8	|
	s2*9		|
	s4.	%…
  \bar "|."
}

upper = {
  \clef treble

  \key g \major
  \upperOne

  \upperTwo
}

lower = {
  \clef bass

  \key g \major
  \lowerOne

  \lowerTwo
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

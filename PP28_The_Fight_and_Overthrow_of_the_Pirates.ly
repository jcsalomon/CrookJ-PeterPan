\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Fight and Overthrow of the Pirates"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/2
  \tempo "Allegro con Spirito." 4 = 140

	<>\ff
	s1*31	|

	s2	%…
  % Extending 2-crotchet note + 2-crotchet fermata:
  % temporary tempo = current × time÷(time + fermata)
  % = 140 × 2÷(2 + 2) = 140÷2 = 70
  \tempo 4 = 70
		s2	|
  \tempo 4 = 140

  \bar "|."
}

upper = {
  \clef treble

  \key a \major
}

lower = {
  \clef bass

  \key a \major
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

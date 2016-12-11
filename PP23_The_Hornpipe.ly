\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Hornpipe"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
	<>\f
		s8	|
	s2*16		|
}

upperOne = {
}

lowerOne = {
}


dynamicsTwo = {
	s2*16		|
}

upperTwo = {
}

lowerTwo = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120

  \partial 8
  \dynamicsOne
  \bar "||"

  \dynamicsTwo
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
}

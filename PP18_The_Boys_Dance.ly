\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Boys Dance"
  style = "Dance"
}

\tagGroup #'(midi-only score-only)


upperOne = \relative c' {
  \repeat unfold 4 {
	<a cs>4				q8		q		|
  }
}

lowerOne = \relative c {
  \repeat unfold 4 {
	<a e'>4				q8		q		|
  }
}


upperTwo = {
}

lowerTwo = {
}


upperThree = {
}

lowerThree = {
}


upperFour = {
}

lowerFour = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Tempo 1º" 4 = 120

	s2*4	|
  \bar "||"

	s2*8	|
  \bar "||"

	s2*8	|
  \bar "||"

  \tempo "Presto." 4 = 128
	<>\ff
	s2*8	|
  \bar "|."
}

upper = {
  \clef treble

  \key a \major
  \upperOne

  \upperTwo

  \upperThree

  \key a \minor
  \upperFour
}

lower = {
  \clef bass

  \key a \major
  \lowerOne

  \lowerTwo

  \lowerThree

  \key a \minor
  \lowerFour
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

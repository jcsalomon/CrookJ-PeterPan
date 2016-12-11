\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "“Indian Dance”"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
	<>\ff
	s2*2	|
}

upperOne = \relative {
	<c' e>4->			q8		q		|
	q4->				q8		q		|
}

lowerOne = \relative {
	<a, e' a>4->			q8		q		|
	q4->				q8		q		|
}


dynamicsTwo = {
}

upperTwo = {
}

lowerTwo = {
}


dynamicsThree = {
}

upperThree = {
}

lowerThree = {
}


dynamicsFour = {
}

upperFour = {
}

lowerFour = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120
  \dynamicsOne
  \bar "||"

  \dynamicsTwo
  \bar "||"

  \dynamicsThree
  \bar "||"

  \dynamicsFour
  \bar "|."
}

upper = {
  \clef treble

  \key c \major
  \upperOne

  \upperTwo

  \upperThree

  \upperFour
}

lower = {
  \clef bass

  \key c \major
  \lowerOne

  \lowerTwo

  \lowerThree

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
}

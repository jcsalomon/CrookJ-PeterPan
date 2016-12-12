\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Boys in the Caves"
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


upperThree = {
}

lowerThree = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Allegro vivo." 4 = 140

	<>\f
	s2.*16	|
  \bar "||"
  % TODO: fermata over bars

	s2.*8	|
  \bar "||"

	s2.*16	|
  \bar "|."
  % TODO: “Fine.” before bars
}

upper = {
  \clef treble

  \key d \major
  \upperOne

  \key a \major
  \upperTwo
  
  \key d \major
  \upperThree
}

lower = {
  \clef bass

  \key d \major
  \lowerOne

  \key a \major
  \lowerTwo
  
  \key d \major
  \lowerThree
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

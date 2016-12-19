\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Abduction of Wendy"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120

  \partial 8
  \repeat volta 2 {
		s8\p	|
	s2*7		|
	s4.	%…
    \bar "||"
    \mark \markup \italic "Fine."
  }
  \alternative {
    {
      \omit Score.VoltaBracket
		s8\mf	|
	s2*7		|
	s4.	%…
      \bar ""
      \mark \markup \italic "D.C."
    }
    {}
  }
		s8	|
  \bar "|."
}

upper = {
  \clef treble

  \key a \major
  \repeat volta 2 {
		r8	|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r4.	%…
  }
  \alternative {
    {
		r8	|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r4.	%…
    }
    {}
  }
		r8	|
}

lower = {
  \clef bass

  \key a \major
  \repeat volta 2 {
		r8	|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r4.	%…
  }
  \alternative {
    {
		r8	|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r2		|
	r4.	%…
    }
    {}
  }
		r8	|
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

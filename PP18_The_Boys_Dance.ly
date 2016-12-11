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


upperTwo = \relative c'' {
  \repeat unfold 2 {
    << {
	a8		a16	cs	e	fs	e	cs	|
	fs	gs	fs	cs	fs	gs	fs	cs	|
	a8		a16	cs	e	fs	e	cs	|
    } \\ {
	s4				a				|
	a				a				|
	s				a				|
    } >>
  }
  \alternative {
    {
      << {
	e'16	d	cs	d	b4				|
      } \\ {
	gs				gs				|
      } >>
    }
    {
      << {
	e'16	d	b	cs	a4				|
      } \\ {
	gs				a				|
      } >>
    }
  }
}

lowerTwo = \relative c {
  \repeat unfold 2 {
	<a cs e a>4			q8		q		|
	<a cs fs a>4			q8		q		|
	<a cs e a>4			q8		q		|
  }
  \alternative  {
    {
	<a d e b'>4			q8		q		|
    }
    {
	<a d e b'>8	q		<a cs e a>4				|
    }
  }
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

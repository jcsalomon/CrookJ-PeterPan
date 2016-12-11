\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

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
	<a d e b'>8	q		<a cs e a>4			|
    }
  }
}


upperThree = \relative c''' {
  \repeat unfold 2 {
	a16	a,	gs'	a,	fs'	a,	e'	a,	|
	fs'	gs	a	fs	e	cs	b	a	|
    << {
	b	cs	d	fs	e	cs	b	a	|
	b	cs	d	e	cs	b	a8		|
    } \\ {
	gs4				a				|
	gs				a8		%…
    } >>
  }
}

lowerThree = \relative c {
  \repeat unfold 2 {
	<a cs e a>4			q8		q		|
	<a d fs a>4			<a cs e a>8	q		|
	<e' d'>4			<a cs>8		q		|
	<e d'>4				<a cs>8		q		|
  }
}


upperFour = \relative c'' {
  \repeat unfold 2 {
	a8		a16	c	e	a	e	c	|
	e	a	e	c	e	a	e	c	|
  }
  \alternative {
    {
	<a e'>8		a16	c	f	a	f	c	|
	e	d	c	d	b4				|
    }
    {
	a8		a16	c	f	a	f	c	|
      << {
	e	d	c	b	a8		%…
      } \\ {
	gs4(				a8)		%…
      } >>
    }
  }
							r8		|
}

lowerFour = \relative c {
  \repeat unfold 2 {
	<a c e a>4			q8		q		|
	<a c e a>4			q8		q		|
	<a c f a>4			q8		q		|
  }
  \alternative {
    {
	<a d f gs>4			q8		q		|
    }
    {
	<a e'\=1( b'>4^(_(			<a'\=1) c>8))	r	|
    }
  }
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

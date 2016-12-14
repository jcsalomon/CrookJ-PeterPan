\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "Pillow Dance"
  style = "Dance"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
		s8\f	|
	s2.*15		|
}

upperOne = \relative c'' {
  \repeat unfold 2 {
						g8	|
    \repeat unfold 2 {
	a	b	c	d	e	f	|
	g4		e8	c4		b8	|
    }
    \alternative {
      {
	a4		a8	c4		a8	|
	g4.~			g4		g8	|
      }
      {
        << {
	a8	b	c	d4		e8	|
        } \\ {
	f,4		f8	f4		f8	|
        } >>
      }
    }
  }
  \alternative {
    {
	<e c'>4.~		q4		%…
    }
    {}
  }
}

lowerOne = \relative c {
  \repeat unfold 2 {
						r8	|
    \repeat unfold 2 {
	<f a c>4	q8	<d f g b>4	q8	|
	<c e g c>4	q8	<e g c>4	q8	|
    }
    \alternative {
      {
	<f a c>4	q8	q4		q8	|
	<c e g c>4	q8	q4		q8	|
      }
      {
	<f a c>4	<d a'c>8<g b>4		q8	|
      }
    }
  }
  \alternative {
    {
	<c, g' c>4	q8	q4		%…
    }
    {}
  }
}

pedalOne = {
		s8	|
	s2.*15		|
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Allegro vivo." 4 = 140

  \partial 8
  \dynamicsOne
  \bar "||"
}

upper = {
  \clef treble

  \key c \major
  \upperOne
}

lower = {
  \clef bass

  \key c \major
  \lowerOne
}

pedal = {
  \pedalOne
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
    \new Dynamics = "pedal" \pedal
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
      \pedal
    >>
    \new Staff = "lower"
    % \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
      \pedal
    >>
  >>
  \midi {}
  % \layout {}
}


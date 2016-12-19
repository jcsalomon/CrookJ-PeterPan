\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

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
      \bar "|."
      \mark \markup \italic "D.C."
    }
    {}
  }
}

upper = \relative c' {
  \clef treble

  \key a \major
  \repeat volta 2 {
    \repeat unfold 2 {
							e8		|
	<e a>		q		%…
    << {
					b'		cs16	d	|
    } \\ {
					gs,4				|
    } >>
	<a e'>				<gs d'>				|
	<e a cs>8	d'16	cs	<e, gs b>8	cs'16	b	|
    }
    \alternative {
      {
	<e, a>8	[	<d fs>		<cs e>	]	%…
      }
      {
	a'8	[	e		a	]	%…
      }
    }
  }
  \alternative {
    {
      \key d \major
      \repeat unfold 2 {
							a8		|
	<fs a d>8[	<fs a d>	<a d fs>	<fs a d>]	|
	<cs fs a>[	<a d fs>	<fs a d>	<a d fs>]	|
	<a d fs a>	g'16	fs	<g, cs e>8	fs'16	e	|
      }
      \alternative {
        {
	<fs, d'>8[	<g b>		<fs a>	]	%…
        }
        {
	d'8		r		<d fs a d>->	%…
        }
      }
    }
    {}
  }
}

lower = \relative c' {
  \clef bass

  \key a \major
  \repeat volta 2 {
    \repeat unfold 2 {
							r8		|
	<a cs>		q		<e b'>4				|
	<a cs>				<e b'>				|
	<a cs>				<e b'>				|
    }
    \alternative {
      {
	<a cs>8		<a d>		<a cs>		%…
      }
      {
	<a cs>8		e		a		%…
      }
    }
  }
  \alternative {
    {
      \key d \major
      <<
        {
          \repeat unfold 2 {
							s8		|
            \repeat unfold 3 {
	d,,	[	d'		d,		d'	]	|
            }
          }
          \alternative {
            {
	d,	[	d'		d,	]	%…
            }
            {
	<d d'>		r		q->		%…
            }
          }
        }
        {
		r8	|
	s2*3		|
	s4.	d'8	|
        }
      >>
    }
    {}
  }
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

\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Arrival of the Crew"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


upperOne = \relative c' {
							d8		|
	<d g>		q		<fs a>		<g b>16	<a c>	|
	<b d>8		<g b>		<d g>		<ds fs>		|
  << {
	e8		<e e'>		d'16	b	a	g	|
	a	g	a	b	a8		d,		|
  } \\ {
	s4				d				|
	e8		e		d		r		|
  } >>

	<d g>		q		<fs a>		<g b>16	<a c>	|
	<b d>8		<g b>		<d g>		<ds fs>		|
  << {
	e8		e'		d16	b	a	g	|
  } \\ {
	e4				fs				|
  } >>
	g8		d		g,		%…
}

lowerOne = \relative c' {
  \repeat unfold 2 {
							r8		|
	<g b>8		q		<d d'>4				|
	<g d'>8		q		<b, g'>		q		|
  }
  \alternative {
    {
	<c g'>8		q		<g d' b'>4\arpeggio		|
	<c g' a>8	<cs g' a>	<d fs a>	%…
    }
    {
	<c g'>4				<d c'>				|
	<g b>8		d		g,		%…
    }
  }
}


upperTwo = \relative c'' {
							d8		|
	d,[		d'		d,		d']		|
	d,[		d'		d,]		%…

	\upperOne
}

lowerTwo = \relative c {
							r8		|
	<d fs a>	r		<g b>		r		|
	<d fs a>[	<g b>		<d fs a>]	%…

	\lowerOne
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Allegretto." 4 = 116

  \partial 8
	<>\f
		s8	|
	s2*7		|
	s4.	%…
  \bar "||"

  % \partial 8
		s8	|
	s2*9		|
	s4.	%…
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

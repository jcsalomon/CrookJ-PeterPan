\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Prisoners Depart"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Tempo di Marcia." 4 = 120

  \partial 8
		s8\mf	|
	s2*7		|
	s4.	%…
  \bar "|."
}

upper = \relative c'' {
  \clef treble

  \key d \major
  \repeat unfold 2 {
							a8		|
	g16	fs	e	d	<d fs>8		<e a>		|
	<d fs d'>[	<cs fs cs'>	<d g b>		<a d a'>]	|
	<a cs g'>[	<a d fs>	<b e>		<b d>	]	|
  }
  \alternative {
    {
	<a cs>	[	<gs e'>		<a a'>	]	%…
    }
    {
	<a d>	[	<a cs>		<a d>	]	%…
    }
  }
}

lower = \relative c' {
  \clef bass

  \key d \major
  \repeat unfold 2 {
							a8		|
	g16	fs	e	d	<d a'>8		<cs a'>		|
	<b b'>	[	<a a'>		<g g'>		<fs fs'>]	|
  }
  \alternative {
    {
	<e e'>	[	<d d'>		<g g'>		<gs gs'>]	|
	<a e'>	[	<b e>		<cs e>	]	%…
    }
    {
	<cs, cs'>[	<d d'>		<g g'>		<gs gs'>]	|
	<a fs'>	[	<a g'!>		<d fs>	]	%…
    }
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

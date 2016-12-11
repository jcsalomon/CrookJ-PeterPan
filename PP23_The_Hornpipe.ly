\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Hornpipe"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
	<>\f
  \repeat unfold 2 {
		s8	|
	s2*7		|
	s4.	%…
  }
}

upperOne = {
  \repeat unfold 2 {
    \relative c' {
							\trip d16 e fs	|
	<b, d g>8	q		q16	b'	a	g	|
	a8[		<c, e>		q]		\trip e16 fs gs	|
	<c, e a>8	q		q16	b'	c	a	|
	fs8[		<fs a d>	q]		%…

							e'16	fs	|
	g16	fs	e	d	e	d	c	b	|
	e	d	c	b	c	b	a	g	|
	fs8		d'		d16	e	d	c	|
	b8[		g		g]		%…
    }
  }
}

lowerOne = {
  \repeat unfold 2 {
    \relative c {
							r8		|
	<g d' g>8	q		q		r		|
	<c a'>		q		q		r		|
	<a e' a>	q		q		r		|
	<d fs a>[	q		q]		%…

							r		|
      \change Staff = "upper"
      \voiceTwo
	<b' d g>	r		%…
      \change Staff = "lower"
      \oneVoice
					<b, d g>	r		|
	q		r		<g' c e>	r		|
	<d fs a>	r		<fs c' d>	r		|
	<g b d>[	q		q]		%…
    }
  }
}


dynamicsTwo = {
		s8	|
	s2*15		|
	s4.	%…
}

upperTwo = {
}

lowerTwo = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120

  \partial 8
  \dynamicsOne
  \bar "||"

  \dynamicsTwo
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

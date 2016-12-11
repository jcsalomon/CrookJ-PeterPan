\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Hornpipe"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsRepeat = {
		s8	|
	s2*7		|
	s4.	%…
}

dynamicsOne = {
	<>\f
  \repeat unfold 2
    \dynamicsRepeat
}

upperRepeat = \relative c' {
							\trip d16 e fs	|
	<b, d g>8	q		q16	b'	a	g	|
	a8[		<c, e>		q]		\trip e16 fs gs	|
	<c, e a>8	q		q16	b'	c	a	|
	fs8[		<fs a d>	q]		%…

							e'16	fs	|
  \voiceOne
	g16	fs	e	d	e	d	c	b	|
  \oneVoice
	e	d	c	b	c	b	a	g	|
	fs8		d'		d16	e	d	c	|
	b8[		g		g]		%…
}

upperOne = {
  \repeat unfold 2
    \upperRepeat
}

lowerRepeat = \relative c {
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

lowerOne = {
  \repeat unfold 2
    \lowerRepeat
}


dynamicsTwo = {
		s8	|
	s2*7		|
	s4.	%…

  \dynamicsRepeat
}

upperTwo = \relative c'' {
							\trip d16 e fs	|
	g	fs	g	fs	e	d	c	b	|
	e8[		c		c]		\trip e16 fs gs	|
	a	gs	a	gs	a	g	fs	e	|
	fs8[		d		d]		%…

							\trip d16 e fs	|
  \voiceOne
	g	fs	g	d	e	d	e	c	|
  \oneVoice
	d	cs	d	a	b	a	b	g	|
	e8		e'		d16	e	d	c	|
	b8[		g		g]		%…

  \upperRepeat
}

lowerTwo = \relative c {
							r8		|
	<g d' b'>\arpeggio	r	<b d g>		r		|
	<c e g>		r		<e g c>		r		|
	<a, c e a>	r		<cs e a>	r		|
	<d fs a>	r		<fs a d>	%…

							r		|
  \change Staff = "upper"
  \voiceTwo
	<b d g>		r		<c e g>		r		|
  \change Staff = "lower"
  \oneVoice
	<fs, c' d>	r		<g b d>		r		|
	<c, e a>	r		<d fs c'>	r		|
	<g b>[		<g, g'>		q]		%…

  \lowerRepeat
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
}

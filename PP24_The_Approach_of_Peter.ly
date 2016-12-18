\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Approach of Peter"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Agitato e vivo." 4 = 120

  \partial 8

		s8\pp	|
	s2*7		|
	s4.	%…

		s8\f	|
	s2*4		|
	s4.	%…

  \bar "|."
}

upper = \relative c'' {
  \clef treble

  \key a \minor

  \repeat unfold 2 {
							a16	b	|
	c8		a		r		a		|
	b		f'		r		f		|
	e	[	d		c		b	]	|
	c		a		r		%…
  }

							e'		|
	<f a>-.	[	<e g>-.		<d f>-.		<c e>-.	]	|
	<b d>	[	<a c>		<gs b>		<e a>	]	|
	<f b>		<b f'>		r		q		|
	<b e>		<e, gs>		r		<e gs>		|
	<e a>		a,		r		%…
}

lower = \relative c' {
  \clef bass

  \key a \minor
							r8		|
	<a c e>		q		r		q		|
	<a b d f>	q		r		q		|
	<a b d e>[	q		q		q]		|
	<a c e>		q		r4		%…

									|
	<a c e>8	q		r		q		|
	<a b d f>	q		r		q		|
	<a b d e>[	q		q		q]		|
	<a c e>		q		r		%…

							c,8		|
	a	[	c		d		e	]	|
	gs	[	a		b		c	]	|
	d		<d f>		r		q		|
	e		<d e,>		r		q		|
	<a c>		a,		r		%…
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

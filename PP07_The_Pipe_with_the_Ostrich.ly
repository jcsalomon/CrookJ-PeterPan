\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Pipe with the Ostrich"
% style = "Incidental"
  style = "Classical"
}

global = {
  \key d \major
  \time 2/4
}

dynamics = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro non troppo." 4 = 120

  \repeat volta 2 {
    \bar ".|:"

	s4\f	s4	|
	s2*3

	s2*4
	s2*4
	s2*4
  }
  \alternative {
	{ s2*8 }
	{ }
  }
}

upperOne = \relative c'' {
  \repeat volta 2 {
	d8.			e16	d8		b8		|
	cs16	b	cs	d	cs8		a		|
	b16	a	b	cs	b8		fs		|
	a8.			b16	a8		fs16	e	|

	d16	<a e'>	<d fs>	<e g>	<fs a>8		e16	fs	|
	d16	<a e'>	<d fs>	<e g>	<fs a>8		<f b>8		|
	cs'16	bs	cs	d	cs	bs	cs	d	|
	cs16	bs	cs	d	cs8		cs		|

	d8.			e16	d8		b8		|
	cs16	b	cs	d	cs8		a		|
	b16	a	b	cs	b8		fs		|
	a8.			b16	a8		fs16	e	|

	d16	e	fs	g	a8		e16	fs	|
	d16	e	fs	g	a8		e16	fs	|
	d16	e	<d fs>	<e g>	<fs a>	<g b>	cs	a	|
    \oneVoice
	<fs d'>4			q8		r8		|
  }
  \alternative {
    {
	<d fs b>16-> cs' b	fs	q->	cs'	b	fs	|
	<cs fs a>16-> b' a	fs	q->	b	a	fs	|
	<d fs b>8-.[	cs'-.		d-.		e-.]		|
	<a, cs fs>8-.[	g'-.		a-.		fs-.]		|

	<d, fs b>16-> cs' b	fs	q->	cs'	b	fs	|
	<cs fs a>16-> b' a	fs	q->	b	a	fs	|
	<g cs>8-.[	d'-.		e-.		fs-.]		|
	g8[		a		b		cs]		|
    }
    { }
  }
}

upperTwo = \relative c' {
  \repeat volta 2 {
	fs4				fs8		fs		|
	g4				g8		g		|
	fs4				fs8		fs		|
	e4				e8		s		|

	s8*3						cs8		|
	s2								|
	e4				es				|
	fs4				g8		g		|

	fs4				fs8		fs		|
	g4				g8		g		|
	fs4				fs8		fs		|
	e4				e8		s		|

	s8*3						cs8		|
	s8*3						cs8		|
	s8*3						g'8		|
	s2								|
  }
  \alternative {
    { s2*8 }
    { }
  }
}

upper = {
  \clef treble
  \global
  <<
    \upperOne
    \\
    \upperTwo
  >>
}

lower = \relative c {
  \clef bass
  \global

  \repeat volta 2 {
	<d a'>4				q8		q		|
	q4				q8		q		|
	<d b'>4				q8		q		|
	<d cs'>4			q8		r		|

	<fs a>8		r		r		<a, g'>		|
	<d fs>		r		<a' d>4				|
	<a cs>				<gs b>				|
	<fs a>				<e a>8		q		|

	<d a'>4				q8		q		|
	q4				q8		q		|
	<d b'>4				q8		q		|
	<d cs'>4			q8		r		|

	g,8		<g' b>		<d fs a>	<a e' g>	|
	<b d fs>16 cs	d	e	fs8		g		|
	a4				<a, a'>8	q		|
	<d a'>8[	a		d,]		r		|
  }
  \alternative {
    {
	b'8-.[		cs-.		d-.		e-.]		|
	fs8-.[		g-.		a-.		fs-.]		|
      <<
        {
	b16	cs	b	fs	b	cs	b	fs	|%=
	a16	b	a	fs	a	b	a	fs	|%=
        }
        \\
        {
	b,8		s8*3						|%=
	fs'8		s8*3						|%=
        }
      >>								||

	b,8-.[		cs-.		d-.		e-.]		|
	fs8-.[		g-.		a-.		fs-.]		|

      <<
        {
	a16	b	a	e	a	b	a	e	|%=
	a16	b	a	e	a	b	a	e	|%=
        }
        \\
        {
	e8		s8*3						|%=
	a,8		s8*3						|%=
        }
      >>								||
    }
    { }
  }
}

\score {
  \new PianoStaff
    \with {
      instrumentName = #"Piano"
    }
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout {}
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upper"
      \with {
        midiInstrument = #"pan flute"
      }
    \unfoldRepeats
    <<
      \upper
      \dynamics
    >>
    \new Staff = "lower"
      \with {
        midiInstrument = #"acoustic grand"
      }
    \unfoldRepeats
    <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
}

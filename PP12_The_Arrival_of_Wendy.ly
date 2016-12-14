\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Arrival of Wendy"
% style = "Incidental"
  style = "Classical"
}

global = {
  \key d \major
  \time 4/4
}

\tagGroup #'(midi-only score-only)

dynamics = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante con espressione." 4 = 90

	s8\p	s8*7	|
	s1*4	|
	s8\<	s8*5	s4\!	|
	s1*2	|

  \bar "||"

	s8\mf	s8*7	|
	s1*7	|

  \bar "|."
}

pedal = {
	s1*8	|

  \repeat unfold 4 {
	s8\sustainOn	s4	s8\sustainOff
  }

  <<
    \tag #'score-only {
	s8\sustainOn
	<>^\markup \italic "simile."
	s4.	s2	|
	s1*5	|
    }
    \tag #'midi-only {
      \repeat unfold 2 {
        \repeat unfold 3 {
	s8\sustainOn	s4	s8\sustainOff
        }
		s2	|
      }
	s1*2	|
    }
  >>
}

upper = \relative c' {
  \clef treble
  \global

  \change Staff = "lower"
  \voiceOne
	a4^\RH(		fs8	a	d4)		d		|
	d8(	cs	b	cs)	a4		a		|
	d4(		a8	fs	e	d	fs	d'	|
	cs	b	fs'	e	%…
  <<
    {
					e2)				|%=
    }
    \new Voice {
      \change Staff = "upper"
      \voiceOne
					s8	cs'^\RH	b	a	|%=
    }
    \new Voice {
      \change Staff = "upper"
      \voiceTwo
					s8	g4.			|%=
    }
  >>									|

	a,4^\RH		fs8	a	d4	%…
  \change Staff = "upper"
  \voiceOne
						fs^\RH			|
  << {
	a8(	fs	d	a	<a! cs>4	<g b>)		|%=
	g'8(	b,	cs	d	fs4		e		|%=
	d8	a'	e	fs	d2)				|%=
    }
    \\
    {
	a2				s				|%=
	g4.			a8	b2				|%=
	a4		cs		a2				|%=
    }
  >>									|||

	a'4(		fs8	a	d4		d)		|
	d8(	cs	b	cs	a4		a)		|
	d4(		a8	fs	e	d	fs	d')	|
	cs(	b	fs'	e	e	%…
  <<
    {
						cs	b	a)	|%=
    }
    \new Voice {
      \voiceTwo
						g!4.			|%=
    }
  >> \oneVoice								|

	a4(		fs8	a	d4		fs		|
	a8	fs	d	a	<a c>4		<g b>)		|
  <<
    {
	g8	b,	cs	d	fs4		e		|%=
	d8	a'	e	fs	d2\fermata			|%=
    }
    \\
    {
	g,4.			a8	b2				|%=
	a4		<a cs>		a2				|%=
    }
  >>									||
}

lower = \relative c {
	\clef bass
	\global

  <<
    {
      \voiceTwo
	d8	r	s4		b8	r	s4		|
	e,8	r	s4		a8	r	s4		|
	d8	r	s4		b8	r	s4		|
	<e,e'>8	r	r4		a8	a'	b	cs	|

	d,8	r	r4		b8	r	<d fs b> r	|
    }
    \new Voice {
      \change Staff = "upper"
      \oneVoice
	s4		<fs'a d>8^\LH r	s4		<fs b d>8 r	|
	s4		<e g b d>8 r	s4		<g a cs>8 r	|
	s4		<fs a d>8 r	s4		<fs b d>8 r	|
	s4		<e gs d'>8 r	s2				|

	s4		<fs a d>8^\LH r	s2				|
    }
  >> \oneVoice
	<fs,,d'>2_(^(			<g d'>))			|
	<e e'>4.		<fs fs'>8 <g g'>2			|
  <<
    {
	fs'4		g		<d fs>2				|%=
    }
    \\
    {
	a2				r8	b(	a	fs)	|%=
    }
  >> \oneVoice								|

	d8	r	<fs'a d> r	b,,	r	<fs''b d> r	|
	e,	r	<e'g b d> r	a,,	r	<g''a cs> r	|
	d,	r	<fs'a d> r	b,,	r	<fs''b d> r	|
	e,	r	<e'gs d'> r	g,	%…
  <<
    {
      \voiceTwo
						a'	b	cs	|%=
    }
    \new Voice
    {
      \voiceOne
						e4.			|%=
    }
  >> \oneVoice								|

	d,,8	r	<fs'a d> r	b,,	r	<fs''b d> r	|
	<fs,,fs'> r	<fs''a d> r	%…
  <<
    {
					d'2				|%=
    }
    \\
    {
					fs,4		g		|%=
    }
  >>									|
	<e,e'>4.		<fs fs'>8 <g g'>2			|
  <<
    {
	fs'4(		g)		fs2\fermata			|%=
    }
    \\
    {
	a,2				d				|%=
    }
  >>									|
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
    \new Staff = "upper" <<
      \upper
      \dynamics
      \pedal
    >>
    \new Staff = "lower" <<
      \lower
      \dynamics
      \pedal
    >>
  >>
  \midi {}
}

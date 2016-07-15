\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Pipe with the Ostrich"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 2/4
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Allegro non troppo." 4 = 120

\repeat volta 2 {
	\bar ".|:"

	s4\f	s4	|
	s2*3

	s2*4
	s2*4
	s2*4
} \alternative {
	{ s2*8 }
	{ }
}
}

upperOne = \relative c'' {
\repeat volta 2 {
	\voiceOne
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
} \alternative {
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
	\voiceTwo
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
} \alternative {
	{ s2*8 }
	{ }
}
}

upper = {
	\clef treble
	\global
<<
	\upperOne
	\new Voice \upperTwo
>>
}

lower = {
	\clef bass
	\global
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
	\layout {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

\score {
	\new PianoStaff
		\with {
			midiInstrument = #"acoustic grand"
		}
	<<
		\new Staff = "upper" <<
			\unfoldRepeats\upper
			\unfoldRepeats\dynamics
		>>
		\new Staff = "lower" <<
			\unfoldRepeats\lower
			\unfoldRepeats\dynamics
		>>
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

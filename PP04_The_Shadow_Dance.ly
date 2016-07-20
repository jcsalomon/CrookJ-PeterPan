\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Shadow Dance"
%	style = "Incidental"
}

global = {
	\key a \major
	\time 4/4
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Moderato." 4 = 120
}

pedal = {
}

upper = {
	\clef treble
	\global
}

lower = \relative c' {
	\clef bass
	\global

	<a cs>8[r	q]	r	q[	r	q]	r	|
	<b d d,>2~			q8	r	r4		|
	<b d>8[	r	<as cs>]r	<b d>[	r	<a d>]	r	|
	<gs d' e>2~			q8	r	r4		|
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
		\new Dynamics = "pedal" \pedal
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
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

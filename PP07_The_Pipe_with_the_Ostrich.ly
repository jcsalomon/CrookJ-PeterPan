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

upper = {
	\clef treble
	\global
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

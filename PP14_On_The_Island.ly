\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\include "easy-custom-dynamics.ily"

\header {
	mutopiatitle = "On the Island"
%	style = "Incidental"
}

global = {
	\time 4/4
}

dynamics = {
}

upper = {
	\clef treble
	\global

	\key e \minor
}

lower = {
	\clef bass
	\global

	\key e \minor
}

\score {
	\new PianoStaff
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
			\upper
			\dynamics
		>>
		\new Staff = "lower" <<
			\lower
			\dynamics
		>>
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

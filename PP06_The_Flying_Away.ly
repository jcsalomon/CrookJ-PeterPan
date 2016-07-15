\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Flying away"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 4/4
}

dynamics =  {
	s16\p	s16*15	|
	s1*23
	\bar "|."
	\mark \markup { \musicglyph #"scripts.ufermata" }
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

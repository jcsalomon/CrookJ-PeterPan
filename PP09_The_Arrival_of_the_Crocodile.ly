\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Arrival of the Crocodile"
%	style = "Incidental"
}

global = {
	\key d \minor
	\time 2/4
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Agitato." 4 = 110

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

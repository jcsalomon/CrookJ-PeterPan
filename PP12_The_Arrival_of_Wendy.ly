\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Arrival of Wendy"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 4/4
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Andante con espressione." 4 = 90

	s8\p	s8*7	|
	s1*7
	\bar "||"

	s8\mf	s8*7	|
	s1*7
	\bar "|."
}

pedal = {
}

upper = {
	\clef treble
	\global
<< { s1*8 } {	% temp
} >>		% temp
}

lower = {
	\clef bass
	\global
<< { s1*8 } {	% temp
} >>		% temp
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

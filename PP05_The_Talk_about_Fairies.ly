\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Talk about Fairies"
%	style = "Incidental"
}

global = {
	\key a \major
	\time 6/8
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Andante." 4 = 80
}

upperOne = \relative c' {
}

upperTwo = \relative c' {
}

upper = {
	\clef treble
	\global
<<
	\upperOne
	\new Voice \upperTwo
>>
}

lowerOne = \relative c {
}

lowerTwo = \relative c {
}

lower = {
	\clef bass
	\global
<<
	\lowerOne
	\new Voice \lowerTwo
>>
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

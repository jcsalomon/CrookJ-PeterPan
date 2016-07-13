\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "Act I"
	subtitle = "Opening Music"
	mutopiatitle = "Act I Opening Music"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 6/8
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Allegro vivo." 4 = 120
}

upper = {
}

lower = {
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
	<<
		\new Staff = "upper" { \clef treble \global \upper }
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" { \clef bass \global \lower }
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
			{ \global \upper }
			\dynamics
		>>
		\new Staff = "lower" <<
			{ \global \lower }
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

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Building of the House"
	style = "Song"
}

dynamics = {
}

words = \lyricmode {
}

upper = {
	\clef treble
	\key g \major
	\time 2/4

\new Voice = "melody" {
}

}

lower = {
	\clef bass
	\key g \major
	\time 2/4
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
	<<
		\new Lyrics = "words"
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
		\context Lyrics = "words" {
			\lyricsto "melody" \words
		}
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
		\new Lyrics = "words"
		\new Staff = "upper" <<
			\upper
			\dynamics
		>>
		\new Staff = "lower" <<
			\lower
			\dynamics
		>>
		\context Lyrics = "words" {
			\lyricsto "melody" \words
		}
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

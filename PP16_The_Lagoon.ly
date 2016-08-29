\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Lagoon"
%	style = "Incidental"
}

dynamics = {
	\set Score.tempoHideNote = ##t
}

melody = {
	\clef treble
	\key a \minor
	\time 6/4
}

words = \lyricmode {
}

upper = {
	\clef treble
	\key a \minor
	\time 6/4
}

lower = {
	\clef bass
	\key a \minor
	\time 6/4
}

pedal = {
}

\score {
	<<
		\new Staff
		\with {
		}
		{
			\new Voice = "melody" {
				\autoBeamOff
				\melody
			}
		}
		\new Lyrics \lyricsto "melody" \words
		\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
		<<
			\new Staff = "upper" \upper
			\new Dynamics = "dynamics" \dynamics
			\new Staff = "lower" \lower
			\new Dynamics = "dynamics" \pedal
		>>
	>>
	\layout {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

\score {
	<<
		\new Staff
		\with {
			midiInstrument = #"clarinet"
		}
		{
			\new Voice = "melody" <<
				\melody
				\dynamics
			>>
		}
		\new Lyrics \lyricsto "melody" \words
		\new PianoStaff
		\with {
			midiInstrument = #"acoustic grand"
		}
		<<
			\new Staff = "upper" <<
				\unfoldRepeats\upper
				\dynamics
				\pedal
			>>
			\new Staff = "lower" <<
				\unfoldRepeats\lower
				\dynamics
				\pedal
			>>
		>>
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

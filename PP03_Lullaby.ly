\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "Lullaby"
	subtitle = "from “Peter Pan”"
	mutopiatitle = "Lullaby from “Peter Pan”"
	style = "Song"
	poet = "Words 17ᵗʰ Century"
}

global = {
	\key d \major
	\time 6/8
}

dynamics =  {
	\set Score.tempoHideNote = ##t
}

melody = {
	\clef treble
	\global
}

words = \lyricmode {
}

upperOne = {
}

upperTwo = {
}

upper = {
	\clef treble
	\global
<<
	\upperOne
	\\
	\upperTwo
>>
}

lowerOne = {
}

lowerTwo = {
}

lower = {
	\clef bass
	\global
<<
	\lowerOne
	\\
	\lowerTwo
>>
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
		\new Lyrics {
			\lyricsto "melody" \words
		}
		\new PianoStaff
		\with {
		}
		<<
			\new Staff = "upper" \upper
			\new Dynamics = "dynamics" \dynamics
			\new Staff = "lower" \lower
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
		\new Lyrics {
			\lyricsto "melody" \words
		}
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
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Song of the Pirates"
	style = "Song"
}

global = {
	\key d \major
}

dynamics =  {
	\time 2/4

	\set Score.tempoHideNote = ##t
	\tempo "Moderato." 4 = 110
}

words = \lyricmode {
	Yo ho! Yo ho! the Pi -- rate life,
	The flag, the skull and bones,
	A mer -- ry hour, a hem -- pen rope,
	And hey for Da -- vy Jones.

	A -- vast! Be -- lay! Yo Ho! Heave Ho!
	A -- pir -- at -- ing we go,
	And if we’re par -- ted by a shot,
	We’re sure to meet be -- low.

	A -- vast! Be -- lay! Yo Ho! Heave Ho!
	A -- pir -- at -- ing we go,
	And if we’re par -- ted by a shot,
	We’re sure to meet be -- low.
}

melody = {
}

upper = {
	\clef treble
	\global
<< {
} \new Voice = "melody" \melody
>>
}

lower = {
	\clef bass
	\global
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
			midiInstrument = #"acoustic grand"
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
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

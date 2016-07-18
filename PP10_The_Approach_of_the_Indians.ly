\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Approach of the Indians"
%	style = "Incidental"
}

global = {
	\key d \minor
	\time 4/4
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Allegro." 4 = 160

	s16\ff	s16*15	|
	s1*3		|||
	\bar "||"
}

pedal = {
	s16*16					|
	s16\sustainOn	s16*15			|
	s16*15			s16\sustainOff	|
	s16\sustainOn	s16*14	s16\sustainOff	|
}

upper = \relative c''' {
	\clef treble
	\global

	% TODO: Insert proper slurs
	\repeat unfold 4 { a16 gs }	\repeat tremolo 4 { a gs }	|
\voiceOne
	\repeat tremolo 4 { f d }	\repeat tremolo 4 { f d }	|
	\repeat tremolo 4 { d b }	\repeat tremolo 4 { d b }	|
	\repeat tremolo 4 { d b }	\repeat tremolo 4 { d b }	|
\oneVoice
}

lower = \relative c' {
	\clef bass
	\global

	% TODO: Insert proper slurs
	\repeat unfold 4 { a16 gs }	\repeat tremolo 4 { a gs }	|
\change Staff = "upper" \voiceTwo
	\repeat tremolo 4 { gs' b }	\repeat tremolo 4 { gs b }	|
	\repeat tremolo 4 { f gs }	\repeat tremolo 4 { f gs }	|
	\repeat tremolo 4 { f gs }	\repeat tremolo 4 { f gs }	|
\change Staff = "lower" \oneVoice
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
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

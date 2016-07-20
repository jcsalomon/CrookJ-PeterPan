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

LH = \markup {\italic L.H.}
RH = \markup {\italic R.H.}

upper = {
	\clef treble
	\global
<< { s1*8 } {	% temp
} >>		% temp
}

lower = \relative c {
	\clef bass
	\global
<< { s1*8 } {	% temp

<< { \voiceTwo
	d8	r	s4		b8	r	s4		|
	e,8	r	s4		a8	r	s4		|
	d8	r	s4		b8	r	s4		|
	<e,e'>8	r	r4		a8	a'	b	cs	|
} \new Voice { \change Staff = "upper" \oneVoice
	s4		<fs a d>8^\LH r	s4		<fs b d>8 r	|
	s4		<e g b d>8 r	s4		<g a cs>8 r	|
	s4		<fs a d>8 r	s4		<fs b d>8 r	|
	s4		<e gs d'>8 r	s2				|
} >> \oneVoice

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

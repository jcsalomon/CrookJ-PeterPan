\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\include "easy-custom-dynamics.ily"

\header {
	mutopiatitle = "On the Island"
%	style = "Incidental"
}

global = {
	\time 4/4
}

dynamics = {
	s8 \dynamic "p ben marcato"	s8*7	|
	s1*16
	\bar "|."
	\break
}

elizaUpper = \relative c'' {
	\key e \minor
	r8	<d g b>	q	q	q4		<c fs a>	|
	\voiceOne
	r8	<b e g>	q	q	q4		<b ds fs>	|
	\oneVoice
	r8	<g c e>	q	q	q4		<f b d!>	|
	<b d>8	<a c>	<gs b>	<a c>	<c,e a>4	r		|
}

upper = {
	\clef treble
	\global

	\elizaUpper
}

lower = {
	\clef bass
	\global

	\key e \minor
}

\score {
	\new PianoStaff
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

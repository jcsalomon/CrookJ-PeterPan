\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Approach of the Indians"
%	style = "Incidental"
}

global = {
	\time 4/4
}

kluge = {
	\bar ""
	\set Timing.measureLength = #(ly:make-moment 1 32)
	s32
	\set Timing.measureLength = #(ly:make-moment 4 4)
}

dynamicsIntro = {
	\tempo "Allegro." 4 = 160

	s16\ff	s16*15	| \kluge |
	s1		| \kluge |
	s1		| \kluge |
	s1		| \kluge |
}

dynamicsMelody = {
	\tempo "Andante." 4 = 96
	s4\p	s4*3	|
	s1*3		|||

\repeat unfold 3 {
	s1*4		||||
}
}

dynamics = {
	\set Score.tempoHideNote = ##t

	\dynamicsIntro
	\bar "||"

	\dynamicsMelody
	\bar "|."
}

pedalIntro = {
	s16*16					| \kluge |
	s16\sustainOn	s16*15			| \kluge |
	s16*15			s16\sustainOff	| \kluge |
	s16\sustainOn	s16*14	s16\sustainOff	| \kluge |
}

pedalMelody = {
\repeat unfold 2 {
\repeat unfold 2 {
	s4\sustainOn	s8*5	s8\sustainOff	||
	s4\sustainOn	s4	s2\sustainOff	||
}	s1*4					||||
}
}

pedal = {
	\pedalIntro
	\pedalMelody
}

upperIntro = \relative c''' {
	\key d \minor

	% TODO: Insert proper slurs
	\repeat unfold 4 { a16 gs }	\repeat tremolo 4 { a gs }	| \kluge |
\voiceOne
	\repeat tremolo 4 { f d }	\repeat tremolo 4 { f d }	| \kluge |
	\repeat tremolo 4 { d b }	\repeat tremolo 4 { d b }	| \kluge |
	\repeat tremolo 4 { d b }	\repeat tremolo 4 { d b }	| \kluge |
\oneVoice
}

upperMelody = {
	\key a \major
}

upper = {
	\clef treble
	\global

	\upperIntro
	\upperMelody
}

lowerIntro = \relative c' {
	\key d \minor

	% TODO: Insert proper slurs
	\repeat unfold 4 { a16 gs }	\repeat tremolo 4 { a gs }	| \kluge |
\change Staff = "upper" \voiceTwo
	\repeat tremolo 4 { gs' b }	\repeat tremolo 4 { gs b }	| \kluge |
	\repeat tremolo 4 { f gs }	\repeat tremolo 4 { f gs }	| \kluge |
	\repeat tremolo 4 { f gs }	\repeat tremolo 4 { f gs }	| \kluge |
\change Staff = "lower" \oneVoice
}

lowerMelody = \relative c' {
	\key a \major

	<a cs e>1							|
	<fs cs' fs>							|
	<a cs e>							|
	<a b d>4	q		q2				|

	<gs b d>1							|
	<a cs>2				<a, fs'>			|
\voiceOne
	<cs gs'>4(	q8	<fs a>	<cs gs'>4	<b a'>		|
<< {
	a'4		b8	a	gs2)				%
} \new Voice { \voiceTwo
	e				e				%
} >> \oneVoice								|

	<a cs e>1							|
	<fs cs' fs>							|
	<a cs e>							|
	<a b d>4	q		q2				|

	<gs b d>1							|
	<a cs>2				<a, fs'>			|
\voiceOne
	<cs gs'>4	q8_(	<fs a>	<cs gs'>4	<b a'>)		|
<< {
	a'4(		gs)		a2				%
} \new Voice { \voiceTwo
	e				<a, e'>				%
} >> \oneVoice								|
}

lower = {
	\clef bass
	\global

	\lowerIntro
	\lowerMelody
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

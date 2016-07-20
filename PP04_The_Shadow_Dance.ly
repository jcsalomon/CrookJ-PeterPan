\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Shadow Dance"
%	style = "Incidental"
}

global = {
	\key a \major
	\time 4/4
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Moderato." 4 = 120
}

pedal = {
}

upper = \relative c' {
	\clef treble
	\global

	\appoggiatura { e16 fs gs }
	<e a>8[	r	<e b'>]	r	<e cs'>[r	<es cs'>]r	|
<< { \voiceOne
	cs'4->(		b8.	    fs16b8)	% …
} \new Voice { \voiceTwo
	fs2(				fs8)	% …
} >> \oneVoice					r8	r4		|
	\appoggiatura { fs16 gs as }
	<fs b>8[r	<fs cs'>]r	<fs d'>[r	<fs fs'>]r	|
<< { \voiceOne
	fs'4->(		e8.	    ds16e8)	% …
} \new Voice { \voiceTwo
	b2(				b8)	% …
} >> \oneVoice					r8	r4		|
}

lower = \relative c' {
	\clef bass
	\global

	\grace { s16*3 }
	<a cs>8[r	q]	r	q[	r	q]	r	|
	<b d d,>2~			q8	r	r4		|
	<b d>8[	r	<as cs>]r	<b d>[	r	<a d>]	r	|
	<gs d' e>2~			q8	r	r4		|
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

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

<< { \voiceOne
	\appoggiatura { e16 fs gs }
	a8[	r	e]	r	d[	r	cs]	r	|%=
} \new Voice { \voiceTwo
	\crossStaff {
	s2				e,8	s	e	s	|%=
	}
} >> 									|
	cs'4->(		b8.	   fs'16fs8)	r8	r	<fs a>	|
\oneVoice
	<fs a>8-.	<e gs>-.	<fs a>-.	<b, d>-.	%
	<b d>-.		<as cs>-.	<b d>-.		<bs ds>-.	|
	<d! fs>-.	<cs e>-.	<cs e>-.	<e, a>-.	%
	<a cs>4				r				|
}

lower = \relative c' {
	\clef bass
	\global

	\grace { s16*3 }
	<a cs>8[r	q]	r	q[	r	q]	r	|
	<b d d,>2~			q8	r	r4		|
	<b d>8[	r	<as cs>]r	<b d>[	r	<a d>]	r	|
	<gs d' e>2~			q8	r	r4		|

\change Staff = "upper" \voiceTwo
	<a cs e>8[r	q]	r	% …
\change Staff = "lower" \oneVoice
					<fs as>[r	q]	r	|
	b,8	r8	<a'! b ds>r8	% …
\change Staff = "upper" \voiceTwo
					<b ds fs a>r	r4		|
\change Staff = "lower" \oneVoice
	e,,8[	r	<e' gs d'!>]r	q	r	r4		|
	gs,4		<e' a cs>	<a cs e>	r		|

\repeat unfold 2 {
	<a cs>8[r	q]	r	q[	r	q]	r	|
	<d, a' d>2~			q4\fermata	r		|
}									||

	<cs e a>8  q	q	q	q	q	q	q	|
	<e a cs>   q	q	q	<fs a b ds> q	q	q	|
	<e a cs e> q	q	q	<e gs b e>  q	q	q	|
	<a e'>8	r	r4		r2				|
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
			\consists #Span_stem_engraver
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

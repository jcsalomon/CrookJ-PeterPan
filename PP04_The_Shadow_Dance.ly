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

	\grace { s16\mf s s }
	s1*6

	\tempo 4 = 140
	s8-\markup {\bold "piu accel."} s8*7

	\tempo 4 = 130
	s8-\markup {\bold "rit. e dim."}\> s8*5

	\tempo \markup {\italic "a tempo."} 4 = 120
	s4

	s8\p s8*7

	\tempo \markup {\italic Grazioso.}
	s1

	\tempo 4 = 110
	\grace { s16-\markup {\bold "poco meno."} s s }
	s1*2

	\tempo 4 = 130
	s8\f s8 s8-\markup {\bold "poco accel."} s8*5

	s1*3
	\bar "|."
}

pedal = {
	s1*7
	s4\sustainOn s2 s4\sustainOff
}

upper = \relative c' {
	\clef treble
	\global

	\appoggiatura { e16 fs gs }
	<e a>8[	r	<e b'>]	r	<e cs'>[r	<es cs'>]r	|
<< { \voiceOne
	cs'4->(		b8.	    fs16b8)	%…
} \new Voice { \voiceTwo
	fs2(				fs8)	%…
} >> \oneVoice					r8	r4		|
	\appoggiatura { fs16 gs as }
	<fs b>8[r	<fs cs'>]r	<fs d'>[r	<fs fs'>]r	|
<< { \voiceOne
	fs'4->(		e8.	    ds16e8)	%…
} \new Voice { \voiceTwo
	b2(				b8)	%…
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

	\appoggiatura { e16 fs gs }
	<e a>8[	r	<e b'>]	r	<e cs'>[r	q]	r	|
<< { \voiceOne
	cs'4->(		b8.	    f!16f'8\fermata)%…
} \new Voice { \voiceTwo
	f,2(				f8)	%…
} >> \oneVoice					r8	r4		|

	\appoggiatura { e16 fs gs }
	<e a>8[	r	<e b'>]	r	<e cs'>[r	q]	r	|
<< { \voiceOne
	cs'4->(		b8.	    f!16f'8\fermata)%…
} \new Voice { \voiceTwo
	fs,2(				f8)	%…
} >> \oneVoice					r8	r4		|

	e'8	a	e	cs	b	fs'	d	b	|
	e	a	e	cs	b	fs'	ds	b	|
	e,16(fs gs  a   b   cs  d!  ds  e   fs  gs  a	%…
				\tuplet 6/4{ b16 cs  d!  e   fs  gs }	|
	a8)	r8	r4		r2				|
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
	<a cs e>8[r	q]	r	%…
\change Staff = "lower" \oneVoice
					<fs as>[r	q]	r	|
	b,8	r8	<a'! b ds>r8	%…
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

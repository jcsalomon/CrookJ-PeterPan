\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Flying away"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 4/4
}

dynamics =  {
	s16\p	s16*15	|
	s1*23
	\bar "|."
	\mark \markup { \musicglyph #"scripts.ufermata" }
}

upper = \relative c' {
	\clef treble
	\global

	d16(	cs	d	e	fs	g	gs	a	%\
	a2)								|
	e16(	d	cs	d	e	fs	g	gs	%\
	a2)								|
	a16(	g	fs	g	a	b	cs	d	%\
	e	d	cs	d	e	d	a	fs)	|
	a16(	g	fs	g	b	g	e	d	%\
	cs4				a')				|

	d,16(	cs	d	e	fs	g	gs	a	%\
	a2)								|
	e16(	d	cs	d	e	fs	g	gs	%\
	a2)								|
	fs16(	a	fs'	e	d	a	fs	g	%\
	a	b	cs	d	e	d	a	fs)	|
	a16(	g	fs	g	b	g	e	cs	%\
	d2)								|

	e16(	fs	gs	a	as	b	cs	d	%\
	d2)								|
	e,16(	fs	gs	a	as	b	cs	d	%\
	cs2)								|
	gs16(	a	b	cs	d	ds	e	es	%\
	fs	e	gs	fs	e	d	cs	b)	|
	a16(	b	cs	d	ds	e	fs	gs	%\
	a	gs	fs	e	d	cs	b	a)	|

	e16(	fs	gs	a	as	b	cs	d	%\
	d2)								|
	e,16(	fs	gs	a	as	b	bs	cs	%\
	cs2)								|
	gs16(	a	b	cs	d	ds	e	es	%\
	fs	e	gs	fs	e	d	cs	b)	|

	a16(	a'	g!	fs	e	d	cs	b)	%\
	a16(	b	g	a	fs	g	e	a)	|
	d16(	cs	d	e	fs	g	gs	a	%\
	a2)								|
	e16(	d	cs	d	e	fs	g	gs	%\
	a2)								|
	a16(	g	fs	g	a	b	cs	d	%\
	e	d	cs	d	e	d	a	fs)	|
	a16(	g	fs	g	b	g	e	d	%\
	cs4				a')				|

	d,16(	cs	d	e	fs	g	gs	a	%\
	a2)								|
	e16(	d	cs	d	e	fs	g	gs	%\
	a2)								|
	fs16(	a	fs'	e	d	a	fs	g	%\
	a	b	cs	d	e	d	a	fs)	|
	a16(	g	fs	g	b	g	e	cs	%\
	d2)								|
}

lower = \relative c {
	\clef bass
	\global

	\repeat unfold 3 {
		\repeat unfold 4 { <d fs a>8	<a fs' a> }		%|
		\repeat unfold 2 { <e' g a> <a, g'a> <cs g' a> <a g' a> }%|
	}								||||||
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

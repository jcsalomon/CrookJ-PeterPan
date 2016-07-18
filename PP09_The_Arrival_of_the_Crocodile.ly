\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Arrival of the Crocodile"
%	style = "Incidental"
}

global = {
	\key d \minor
	\time 2/4
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Agitato." 4 = 110

	\override DynamicTextSpanner.style = #'none

	\partial 8					s16\p	s	|

	s2								|
	s4				s8\cresc	s8		|
	s2								|
	s4.						s16\f	s	|

	s2*4								||||
	\bar "||"
}

upper = \relative c' {
	\clef treble
	\global

							d16(	e	|

	f	e	f	e	d	e	d	e	|
	f	e	f	e)	d8(		f16	g	|
	af	g	af	g	f	g	f	g	|
	af	g	af	g	f8)		d'16[	e]	|

	f8		e		d		c		|
	b		a		gs		f		|
	e		d		c		b		|
	a		b		gs4\fermata			|
}

lower = {
	\clef bass
	\global
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

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

	\tempo "Moderato, and very Marked." 4 = 80

	\grace s8\f	s2						|
	s2*3								|||

	s2*4								||||
	\bar "|."
}

upper = \relative c' {
	\clef treble
	\global
	\voiceOne

							d16(	e	|

	f	e	f	e	d	e	d	e	|
	f	e	f	e)	d8(		f16	g	|
	af	g	af	g	f	g	f	g	|
	af	g	af	g	f8)		d'16[	e]	|

<< {
	f8[		e		d		c]		%|
	b[		a		%…
} \new Voice { \voiceTwo \crossStaff { \autoBeamOff
	<d, f>		q		q		q		%|
	q		q		%…
} } >> \oneVoice \autoBeamOn		gs		f]		||
	e[		d		c		b]		|
	a		b		gs4\fermata			|
}

lower = \relative c' {
	\clef bass
	\global

							r8		|

	<gs b>[		q		q		q]		|
	q[		q		q]		r		|
	<b d>[		q		q		q]		|
	q[		q]		q		r		|

	b[		b		b		b]		|
	b[		b		<b d>		q]		|
	<b, d f>[	q		q		q]		|
	<e, b' d>	q	q4\fermata_\markup{\italic Segue.}	|
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

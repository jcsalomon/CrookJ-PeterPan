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
	\set Score.tempoHideNote = ##t
	\tempo "Allegretto espressione. “Eliza on the Prowl.”" 4 = 120

	\grace s8
	s8 \dynamic "p ben marcato"	s8*7	|
	s1*15

	s2.		s4-\markup "Fine."	|
	\bar "|."
	\break
}

elizaUpperOneToFour = \relative c'' {
	\grace s8
	r8	<d g b>	q	q	q4		<c fs a>	|
	\voiceOne
	r8	<b e g>	q	q	q4		<b ds fs>	|
	\oneVoice
	r8	<g c e>	q	q	q4		<f b d!>	|
<< { \voiceOne
	<b d>8	<a c>	<gs b>	<a c>	%…
} \new Voice { \voiceTwo
	e2				%…
} >> \oneVoice				<c e a>4	r		|
}

elizaUpper = \relative c' {
	\key g \major

	\elizaUpperOneToFour

	r8	<d fs a>-.<d fs b>-.<d fs c'>-.	<d fs d'>4-.	q-.	|
	r8	<g b d>-. <g b e>-. <g b fs'>-.	<g b g'>4-.	q-.	|
	r8	c\(	d	e	c4		e,\)		|
<< { \voiceOne
	fs4\(		g		a2\)				|%=
} \new Voice { \voiceTwo
	c,2.						c4		|%=
} >> \oneVoice								|

}

elizaLowerOneToFour = \relative c {
	\acciaccatura g8 d''2		b4	\acciaccatura d,8 d'4	|
	\acciaccatura e,8 \change Staff = "upper" \voiceTwo g'2
	\change Staff = "lower" \oneVoice \acciaccatura b,,8 b'2	|
	\acciaccatura c,8 e'2		c4	\acciaccatura gs,8 b'4	|
	<a, a'>2.					q4		|
}

elizaLower = \relative c {
	\key g \major

	\elizaLowerOneToFour

	<c, c'>4	r		<c' d fs a>	r		|
	<b, b'>		r		<e' g b>	r		|
	<a,, a'>	r		<e'' g c>	r		|
<< { \voiceTwo
	\acciaccatura d,8 d'2.				d4		|%=
} \new Voice { \voiceOne
	d4		e		fs2				|%=
} >> \oneVoice								|

	\elizaLowerOneToFour

	c4		<d fs a>	b		<b e>		|
	a,		<d' a' c>	<e gs>		<e, e'>		|
	<a, a'>8 r	<e'' g>	r	<a,, a'> r	<e'' g>	r	|
	<a,, a'> r	<e'' g>	r	<d, d'>	r	<d' fs!> r	|

	<g,, g'> r	<g' g'>	r	<g, g'>	r	r4\fermata	|
}

upper = {
	\clef treble
	\global

	\elizaUpper
}

lower = {
	\clef bass
	\global

	\elizaLower
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

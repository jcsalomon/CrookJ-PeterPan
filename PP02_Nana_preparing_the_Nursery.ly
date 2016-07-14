\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "“Nana” preparing the Nursery"
%	style = "Incidental"
}

global = {
	\time 2/4
}

dynamicsZeroToEight = {
	s8\p	|
	s2*8
	\bar "||"
}

pedalZeroToEight = {
	s8	|
	s2*8
}

upperZeroToEight = \relative c'' {
	\key d \minor
							a8		|

<< { \voiceOne
	d8		d16	d	d8		c16	bf	%|
	a16	bf	a	g	%…
} \new Voice { \voiceTwo
	f8		g		a		a16	g	%|
	e8		e		%…
} >> \oneVoice				f16	e	d	e	||
	<f a>8		q		<f bf>		<f bs>		|
	a16	f	e	d	<cs a'>4			|

	<d d'>8		q		q		%…
<< { \voiceOne
							d'16(	c)	%|
	c16(	bf)	bf(	a)	a(	gs)	d'(	gs,)	%|
	<a a'>16 f'	e16	d	%…
} \new Voice { \voiceTwo
							d,8		%|
	d4				f!8		f		%|
	\crossStaff{f8}	%…
} >> \oneVoice
					a16	f	e	d	|||
	\autoBeamOff
	<cs g' a>8	<cs' g' a>	<f, a d>	r8		|
	\autoBeamOn
}

lowerZeroToEight = \relative c {
	\key d \minor
							r8		|

	<d d'>8		<e d'>		<f d'>		<g d'>		|
	<cs, a'>8	q		<d a'>		r		|

	<d a'>8		q		<bf bf'>	q		|
<< { \voiceOne
	a'4				a16	g	f	e	%|
} \new Voice { \voiceTwo
	a,4				a				%|
} >> \oneVoice								|

	<d f>8		<e g>		<f a>		<fs a>		|
	<g bf>8		<a c>		<bf d>		<b d>		|
<< { \voiceOne
	a2~								%|
	a16	g	f	e	%…
} \new Voice { \voiceTwo
	<a d>8		r8		r4				%|
	a8		a,		%…
} >> \oneVoice
					d8		r8		||
}

dynamics =  {
	\dynamicsZeroToEight
}

pedal = {
	\pedalZeroToEight
}

upper = {
	\clef treble
	\global
	\partial 8
	\upperZeroToEight
}

lower = {
	\clef bass
	\global
	\partial 8
	\lowerZeroToEight
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

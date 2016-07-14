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

dynamicsNineToSixteen = {
	\grace s8
	s2*4

	s2*3
	s8*3			%…
}

pedalNineToSixteen = {
	\grace s8
	\repeat unfold 3 {
		s16\sustainOn	s8	s16\sustainOff
	}
			s4		||
	s2*2

	s2*3
	s8*3			%…
}

upperNineToSixteen = \relative c''' {
	\grace s8
	c16	a	g	f	<e c'>	<d bf'>	<c a'>	<bf g'>	|
	<a f'>	<c e>	<bf d>	<a c>	<d bf'>	<c a'>	<a fs'>	<fs d'>	|
	<bf g'>	<a fs'>	<bf g'>	<c a'>	<d bf'>	<c a'>	<d bf'>	<bf g'>	|
	<a f'>(	<c a'>)	q	q	<cs a'>(<e cs'>)q	q	|

<< { \voiceOne
	d'2								%|
	c4~				c8		% …
} \new Voice { \voiceTwo
	c!16	bf	a	c	bf8		g16	a	%|
	bf16	a	g	bf	a8		f,16	g	%|
} >> \oneVoice								||
	<cs, g' a>4(			<d f a>8)	r		|
	\autoBeamOff
	<cs g' a>8	<cs' g' a>->	<f, a d>->	%…
	\autoBeamOn
}

lowerNineToSixteen = \relative c {
	\acciaccatura f,8 a'4->		\acciaccatura g,8 bf'4->	|
	\acciaccatura a,8 c'4->		%…
<< { \voiceOne
					a8		c		%
} \new Voice { \voiceTwo
					d,4				%
} >> \oneVoice								|
	\acciaccatura g,8 bf'8.	a16	%…
<< { \voiceOne
					bf8		g		%|
} \new Voice { \voiceTwo
					c,4				%|
} >> \oneVoice								|
\once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-slur
\once \override PianoStaff.Arpeggio.X-extent = #ly:grob::stencil-width
% \arpeggioParenthesis
<< { \voiceOne
	bf'2\arpeggio							%|
} \new Voice { \voiceTwo
	f,4\arpeggio			e				%|
} >> \oneVoice								|
% \arpeggioNormal

<< { \voiceOne
	a'4->				bf->				|
	c4->				a8		c		|
	a16	g	f	e	d	e	f	g	|
	a16	g	f	e	d8		%…
} \new Voice { \voiceTwo
	d4				g				|
	c,4				f				|
	a,4(				d8)		r8		|
	a4(				d8)		%…
} >> \oneVoice
}

dynamicsSixteenToTwentyFour = {
		s8	|
	s2*8
}

pedalSixteenToTwentyFour = \dynamicsSixteenToTwentyFour

upperSixteenToTwentyFour = \relative c'' {
							d8		|

	c8		g16	a	bf8		c16	bf	|
	bf16(	a)	a(	g)	f(	e!)	f	g	|
	a8		e16	f	g8		a16	g	|
	g16(	f)	f(	e)	d8		d16	e	|

	<gs, d' f>8->	q->		<a d f>->	d16	e	|
	<gs, d' f>8	q		<a d f>		<d f>16	<e g>	|
	<d f a>	<f a d>	q	<a d f>	q	<d f a>	q	<a d f>	|
	<a cs e>q	<cs e a><e a cs><a cs e>8	r		|
}

lowerSixteenToTwentyFour = \relative c {
							r8		|

	e8		<bf' c>		c,		q		|
	f8		<a c>		<f a c>		r		|
	cs8		<g' a>		a,		q		|
	d8		<f a>		<d f a>		r		|

	<bf! f'>8	q		<a f'>		r		|
	<bf! f'>8	q		<a f'>		r		|
	<a a'>2								|
	a'2								|
}

dynamicsNineToTwentyFour = {
	\dynamicsNineToSixteen
	\dynamicsSixteenToTwentyFour
	\bar"||"
}

pedalNineToTwentyFour = {
	\pedalNineToSixteen
	\pedalSixteenToTwentyFour
}

upperNineToTwentyFour = {
	\upperNineToSixteen
	\upperSixteenToTwentyFour
}

lowerNineToTwentyFour = {
	\lowerNineToSixteen
	\lowerSixteenToTwentyFour
}

dynamicsTwentyFiveToThirtyTwo = {
	s2*7
	s8*3			%…
	\bar"||"
}

pedalTwentyFiveToThirtyTwo = \dynamicsTwentyFiveToThirtyTwo

upperTwentyFiveToThirtyTwo = \relative c'' {
	\key d \major
<< { \voiceOne
	fs,8		a16	fs	e8		e		|
	fs8		a16	fs	e4				|
	fs8		e16	fs	g8		g		|
	fs8		fs		e4				|

	fs8		a16	fs	e8		e		|
	fs8		a16	fs	e4				|
	fs8		e16	fs	g8		g		|
} \new Voice { \voiceTwo
	d2								|
	d2								|
	d2								|
	d4				cs				|

	d2								|
	d2								|
	d2								|
} >> \oneVoice
	<d fs>8		<cs e>		d		% …
}

lowerTwentyFiveToThirtyTwo = \relative c {
	\key d \major
<< { \voiceOne
	a'4				g				|
	a4				bf				|
	a8		g16	a	b!8		bf		|
	a8		a		g4				|

	a4				g				|
	a4				bf				|
	a8		g16	a	b!8		bf		|
} \new Voice { \voiceTwo
	d,2								|
	d2								|
	d2								|
	d2								|

	d2								|
	d2								|
	d2								|
} >> \oneVoice
	<d a'>8		<a g'>		<d fs>		%…
}

dynamics =  {
	\dynamicsZeroToEight
	\dynamicsNineToTwentyFour
	\dynamicsTwentyFiveToThirtyTwo
}

pedal = {
	\pedalZeroToEight
	\pedalNineToTwentyFour
	\pedalTwentyFiveToThirtyTwo
}

upper = {
	\clef treble
	\global
	\partial 8
	\upperZeroToEight
	\upperNineToTwentyFour
	\upperTwentyFiveToThirtyTwo
}

lower = {
	\clef bass
	\global
	\partial 8
	\lowerZeroToEight
	\lowerNineToTwentyFour
	\lowerTwentyFiveToThirtyTwo
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
			connectArpeggios = ##t
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

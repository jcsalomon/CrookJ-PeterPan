\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "“Nana” preparing the Nursery"
% style = "Incidental"
  style = "Classical"
}

global = {
  \time 2/4
}

dynamicsZeroToEight = {
	\tag #'first-time-only { <>\p }
	s8	|
	s2*8	|

  \bar "||"
}

pedalZeroToEight = \removeWithTag #'first-time-only \dynamicsZeroToEight

upperZeroToEight = \relative c'' {
  \key d \minor

							a8		|

  <<
    {
	d8		d16	d	d8		c16	bf	|%=
	a16	bf	a	g	%…
    }
    \\
    {
	f8		g		a		a16	g	|%=
	e8		e		%…
    }
  >>					f16	e	d	e	||
	<f a>8		q		<f bf>		<f bs>		|
	a16	f	e	d	<cs a'>4			|

	<d d'>8		q		q		%…
  <<
    {
							d'16(	c)	|%=
	c(	bf)	bf(	a)	a(	gs)	d'(	gs,)	|%=
	<a a'>	f'	e	d	%…
    } \\ {
							d,8		|%=
	d4				f!8		f		|%=
	\crossStaff{f8} s8		%…
    }
  >>
					a16	f	e	d	|||
  \autoBeamOff
	<cs g' a>8	<cs' g' a>	<f, a d>	r		|
  \autoBeamOn
}

lowerZeroToEight = \relative c {
  \key d \minor
							r8		|

	<d d'>		<e d'>		<f d'>		<g d'>		|
	<cs, a'>	q		<d a'>		r		|

	<d a'>		q		<bf bf'>	q		|
  <<
    {
	a'4				a16	g	f	e	|%=
    }
    \\
    {
	a,4				a				|%=
    }
  >>									|

	<d f>8		<e g>		<f a>		<fs a>		|
	<g bf>		<a c>		<bf d>		<b d>		|
  <<
    {
	a2~								|%=
	a16	g	f	e	%…
    }
    \\
    {
	<a d>8		r8		r4				|%=
	a8		a,		%…
    }
  >>
					d8		r8		||
}

dynamicsNineToSixteen = {
	\grace s8
	s2*4	|

	s2*3	|
	s8*3			%…
}

pedalNineToSixteen = {
	\grace s8
  \repeat unfold 3 {
	s16\sustainOn	s8	s16\sustainOff	%…
  }
						s4		||
	s2*2	|

	s2*3	|
	s8*3			%…
}

upperNineToSixteen = \relative c''' {
	\grace s8
	c16	a	g	f	<e c'>	<d bf'>	<c a'>	<bf g'>	|
	<a f'>	<c e>	<bf d>	<a c>	<d bf'>	<c a'>	<a fs'>	<fs d'>	|
	<bf g'>	<a fs'>	<bf g'>	<c a'>	<d bf'>	<c a'>	<d bf'>	<bf g'>	|
	<a f'>(	<c a'>) q	q	<cs a'>(<e cs'>)q	q	|

  <<
    {
	d'2								|%=
	c4~				c8		%…
    }
    \\
    {
	c!16	bf	a	c	bf8		g16	a	|%=
	bf16	a	g	bf	a8		f,16	g	|%=
    }
  >>									||
	<cs, g' a>4(			<d f a>8)	r		|
  \autoBeamOff
	<cs g' a>8	<cs' g' a>->	<f, a d>->	%…
  \autoBeamOn
}

lowerNineToSixteen = \relative c {
	\acciaccatura f,8 a'4->		\acciaccatura g,8 bf'4->	|
	\acciaccatura a,8 c'4->		%…
  <<
    {
					a8		c		%
    }
    \\
    {
					d,4				%
    }
  >>								|
	\acciaccatura g,8 bf'8. a16	%…
  <<
    {
					bf8		g		|%=
    } \\ {
					c,4				|%=
    }
  >>								|
  \once \override PianoStaff.Arpeggio.stencil = #ly:arpeggio::brew-chord-slur
  \once \override PianoStaff.Arpeggio.X-extent = #ly:grob::stencil-width
  % \arpeggioParenthesis
  <<
    {
	bf'2\arpeggio							|%=
    }
    \\
    {
	f,4\arpeggio			e				|%=
    }
  >>								|
  % \arpeggioNormal

  <<
    {
	a'4->				bf->				|
	c->				a8		c		|
	a16	g	f	e	d	e	f	g	|
	a	g	f	e	d8		%…
    } \\ {
	d4				g				|
	c,				f				|
	a,(				d8)		r		|
	a4(				d8)		%…
    }
  >>
}

dynamicsSixteenToTwentyFour = {
	s8	|
	s2*8	|
}

pedalSixteenToTwentyFour = \dynamicsSixteenToTwentyFour

upperSixteenToTwentyFour = \relative c'' {
							d8		|

	c		g16	a	bf8		c16	bf	|
	bf(	a)	a(	g)	f(	e!)	f	g	|
	a8		e16	f	g8		a16	g	|
	g(	f)	f(	e)	d8		d16	e	|

	<gs, d' f>8->	q->		<a d f>->	d16	e	|
	<gs, d' f>8	q		<a d f>		<d f>16	<e g>	|
	<d f a>	<f a d> q	<a d f> q	<d f a> q	<a d f>	|
	<a cs e>q	<cs e a><e a cs><a cs e>8	r	|
}

lowerSixteenToTwentyFour = \relative c {
							r8		|

	e		<bf' c>		c,		q		|
	f		<a c>		<f a c>		r		|
	cs		<g' a>		a,		q		|
	d		<f a>		<d f a>		r		|

	<bf! f'>	q		<a f'>		r		|
	<bf! f'>	q		<a f'>		r		|
	<a a'>2								|
	a'								|
}

dynamicsNineToTwentyFour = {
  \dynamicsNineToSixteen
  \dynamicsSixteenToTwentyFour

  \bar "||"
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
	s2*7	|
	s8*3			%…

  \bar "||"
}

pedalTwentyFiveToThirtyTwo = \dynamicsTwentyFiveToThirtyTwo

upperTwentyFiveToThirtyTwo = \relative c'' {
  \key d \major
  <<
    {
	fs,8		a16	fs	e8		e		|
	fs		a16	fs	e4				|
	fs8		e16	fs	g8		g		|
	fs		fs		e4				|

	fs8		a16	fs	e8		e		|
	fs		a16	fs	e4				|
	fs8		e16	fs	g8		g		|
    }
    \\
    {
	d2								|
	d								|
	d								|
	d4				cs				|

	d2								|
	d								|
	d								|
    }
  >>
	<d fs>8		<cs e>		d		%…
}

lowerTwentyFiveToThirtyTwo = \relative c {
  \key d \major
  <<
    {
	a'4				g				|
	a				bf				|
	a8		g16	a	b!8		bf		|
	a		a		g4				|

	a4				g				|
	a				bf				|
	a8		g16	a	b!8		bf		|
    }
    \\
    {
	d,2								|
	d								|
	d								|
	d								|

	d								|
	d								|
	d								|
    }
  >>
	<d a'>8		<a g'>		<d fs>		%…
}

dynamics = {
  \dynamicsZeroToEight

  \dynamicsNineToTwentyFour

  \dynamicsTwentyFiveToThirtyTwo

  \removeWithTag #'first-time-only \dynamicsZeroToEight

  \dynamicsNineToSixteen

  \bar "|."
}

pedal = {
  \pedalZeroToEight

  \pedalNineToTwentyFour

  \pedalTwentyFiveToThirtyTwo

  \pedalZeroToEight

  \pedalNineToSixteen
}

upper = {
  \clef treble
  \global

  \partial 8
  \upperZeroToEight

  \upperNineToTwentyFour

  \upperTwentyFiveToThirtyTwo

  \upperZeroToEight

  \upperNineToSixteen
}

lower = {
  \clef bass
  \global

  \partial 8
  \lowerZeroToEight

  \lowerNineToTwentyFour

  \lowerTwentyFiveToThirtyTwo

  \lowerZeroToEight

  \lowerNineToSixteen
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
  \layout {}
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
  \midi {}
}

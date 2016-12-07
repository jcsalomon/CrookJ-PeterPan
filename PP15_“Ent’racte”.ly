\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "“Ent’racte”"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsAllegroOne = {
	<>\f
	s2*6	|
	<>\f\<
  % Extending 2-beat note + 1-beat fermata:
  % temporary tempo = current × time÷(time + fermata)
  % = 132 × 2÷(2 + 1) = 132×2÷3 = 88
  \tempo 4 = 88
	s2	|
  \tempo 4 = 132
	<>\!
	s2	|
  \bar "||"
}

upperAllegroOne = \relative c'' {
	<e e'>8	\noBeam	d16\(	cs	d	c	b	a\)	|
	gs8	\noBeam	%…
	\voiceOne	d''16\(	cs	d	c	b	a\)	|
	gs8	\noBeam	%…
	\oneVoice	gs,16	b	d	c	b	a	|
	gs16\(	e	g	b	d	c	b	a\)	|

	gs8		r		r4				|
	<e gs b e>8	r		r4				|
	e2\fermata~							|
	e8		r		r4				|
}

lowerAllegroOne = \relative c {
	<e e,>8		r		<f\=1_( b\=2( d\=3(>4->\sf	|
	<e\=1) b'\=2) d\=3)>8	%…
  \change Staff = "upper"
			r8    		%…
  \voiceTwo
					<f'\=1( b\=2( d\=3(>4		|
	<e\=1) b'\=2) d\=3)>8	%…
  \change Staff = "lower"
  \oneVoice
			r8		<f,\=1_( b\=2( d\=3(>4		|
	<e\=1) b'\=2) d\=3)>8	r8	<f\=1_( b\=2( d\=3(>4		|

	<e\=1) b'\=2) d\=3)>8	r8	r4				|
	<e gs b>8	r8		r4				|
	\repeat tremolo 8 { e,32 e'32 }					|
	<e e'>8		r		r4				|
}

pedalAllegroOne = {
	s2*8	|
}


\tagGroup #'(atwo afour)

dynamicsAllegroTwo = {
  \repeat unfold 3 {
	<>\p
	s2*2	|
	<>\f
	s2*2	|
  }

	s2*4	|
  \tag #'afour \bar "||"
}

upperAllegroTwo = \relative c' {
	e8		a		a		b16	c	|
	b8		a		e'4				|
	<a e c a>8.->		g16	f	e	d	c	|
	<b d g>8	<b d f>		q4->				|

	e,8		b'		b		c16	d	|
	c8		a		e'4				|
	<b ds fs b>8.->		<c c'>16<b b'>	<a a'>	<gs gs'><a a'>	|
	<b b'>8		e		<e e'>4				|

	e,8		a		a		b16	c	|
	b8		a		e'4				|
	<a e cs a>8.->		gs16	a	e	f	g	|
	<a, d f>8	<f a d>		q4->				|

	a8		<f' a>16<e g>	<d f>	<c e>	<b d>8		|
	e,8		<c' e>16<b d>	<a c>	b	a8		|
	b16	c	d8		e	\noBeam	<d, e gs>->	|
  << {
	a'4				\tag #'atwo { a8-> }
					\tag #'afour { a8 }	%…
  } \\ {
	<c, e>8		<d f>		<c e>		%…
  } >>
							r8		|
}

lowerAllegroTwo = \relative c {
	a8		<a' c e>	q		r		|
	c,		q		q		r		|
	<a a,>		<a' c e>	q		r		|
	d,		<f b d>		q		r		|

	e,		<e' gs d'>	q		r		|
	a,		<a' c>		<a c e>		r		|
	<b, b,>		<fs' a b ds>	q		r		|
	<e e,>		<gs b d>	q		r		|

	a,		<a' c e>	q		r		|
	c,		<a' e'>		q		r		|
	<a, a,>		<g' a cs e>	q		r		|
	<d d,>		<f a d>		q4->				|

	d,8		q		q		r		|
	e		<e' a c>	q		r		|
	e,		<e' gs d'>	q	\noBeam	<e e,>->	|
	<a a,>		<d, d,>		\tag #'atwo { <a a,>-> }
					\tag #'afour { <a a,> }	r	|
}

pedalAllegroTwo = {
	s2*16	|
}


dynamicsAllegroThree = {
	<>\f
	s2*16	|
}

upperAllegroThree =  \relative c' {
  \repeat unfold 2 {
	e8		b'		b		c16	d	|
	c8		a		a		b16	c	|
	d	f	e	d	c	e	d	c	|
	b	d	c	b	a	c	b	a	|

	e8->		b'->		a->		b16	c	|
	<gs d'>8	q		<a c>		d16	e	|
	<f, d' f>8[	<e c' e>	<f a d>		<e a c>]	|
	<d f b>		<c fs a>	<b e gs>	e		|
  }
}

lowerAllegroThree = \relative c {
  \repeat unfold 2 {
	e,8		<e' gs d'>	q		r		|
	e,		<e' a c>	q		r		|
  << {
	gs8		<d' e>		a		<c e>		|
	e,		<gs e'>		%…
  } \\ {
	gs4				a				|
	e				%…
  } >>
					a8		c		|

	d16	f	e	d	c	e	d	c	|
	b	d	c	b	a	c	b	a	|
	gs8		a		<f f,>		<e e,>		|
	<d d,>		<ds ds,>	<e e,>		e		|
  }
}

pedalAllegroThree = {
	s2*16	|
}


dynamicsAllegroFive = {
	<>\f
	s2*3	|
	s4	s4\f	|
  \bar "||"
}

upperAllegroFive = \relative c'' {
	g4\(		e		|
	fs		d		|
	fs\)		e8	d	|
	e	r	<a cs e a> r	|
}

lowerAllegroFive = \relative c' {
	e4\(		a,		|
	d		fs,		|
	d'\)		a8	fs	|
	a	r	<a, a,>	r	|
}

pedalAllegroFive = {
	s2*4
}


dynamicsCantabileOne = {
	<>\p
	s2*8	|

	<>\mf\<
	s2*2	|
	<>\!
	s2*2	|

	<>\f
	s2*3	|
	s4.
  \bar "||"
}

upperCantabileOne = \relative c' {
	fs4\(				e8.			d16	|
	a'4.						g8\)		|
	fs\(		e		cs'8.			b16	|
	b4->				a\)				|

	a4\(				g8.			fs16	|
	b4.						a8\)		|
	g		fs		e		d		|
	<d\=1_( fs\=2^(>4		<cs\=1) e\=2)>8	r		|

	<fs fs'>4			<e e'>8.		<d d'>16|
	<a' a'>4.					<g g'>8		|
	<fs fs'>	<e e'>		<cs' cs'>8.		<b b'>16|
	<b\=1_( b'\=2^(>4->		<a\=1) a'\=2)>			|

	<a a'>4->			<g g'>8.		<fs fs'>16|
	<b b'>4.					b,8		|
	bs		cs		%…
  << {
					fs8.			e16	|
  } \\ {
					cs4				|
  } >>
	d4(				<d fs a d>8)	%…
}

lowerCantabileOne = \relative c {
  << {
	r8		<fs a>		q4				|
	r8		<g a cs>	q4				|
	r8		<a cs>		q4				|
	r8		<a d>		q4				|
  } \\ {
	d,2	|	e	|	g	|	fs	|
  } >>

	b,8	\noBeam	<fs' a b ds>	q4				|
	e,8	\noBeam	<g' b e>	q4				|
	g,8		<g' b>		g,		<g' bf>		|
	a,		a'		a,		a'		|

	<d, d,>8	<d fs a>	q		r		|
	<e e,>		<g a cs>	q		r		|
	<g g,>		<g a cs>	<g a cs e>	r		|
	<fs fs,>	<fs a d>	q		r		|

	<b, b,>8	<fs' a b ds>	q		r		|
	<e e,>		<g b e>		q		r		|
	a,,		<a' g'>		q4				|
	<d fs>				<d d,>8		%…
}

pedalCantabileOne = {
	s2*15	|
	s4.
}


dynamicsCantabileTwo = {
		s8\ff	|

	s2		|
	s4.	s8\f	|
	s2*2		||

	<>\p
	s2*3		|||
	s4.	s8\ff	|

	s2*4		||||

	<>\p
	s2		|
	s4.	s8\f	|
	s2*2		||
  \bar "||"
}

upperCantabileTwo = {
  \repeat unfold 2 \relative c' {
							<as e' fs>8->	|

	<d fs b>->	<d fs>16  q	<d b'>8		<fs cs'>	|
	<b d>[		<cs e>		<d fs>		<cs e as>]	|
	<d fs b>	<cs fs as>16  q	<b d fs b>8	<cs fs as>	|
	<b fs' b>	<b e g>		<as cs fs>4->			|

  \trip	 e'16\( fs e	d16.	cs32	fs8.			e16\)	|
  }
  \alternative {
    \relative c'' {
  \trip	 d16\( e d	cs16.	b32	fs'8.			d16\)	|
  \trip	 cs16\( d cs	bs16.	cs32	d8.			cs16\)	|
	b8		<e, g>[		<d fs>]		%…
    }
    \relative c'' {
	\trip d16\( e d	cs16.	b32	fs'8\)	\noBeam	<a, b ds fs>->	|
	<g b e g>[	<a b ds fs>	<g b e>		<e b' ds>]	|
	<a d fs>4->			<a cs e>->			|
    }
  }
}

lowerCantabileTwo = {
  \repeat unfold 2 \relative c, {
							<fs fs'>8->	|

	<b, b'>		r		r4				|
	r4				r8		<fs' fs'>->	|
	<b b'>		<fs fs'>16  q	<b b'>8		<cs cs'>	|
	<d d'>		<e e'>		<fs fs'>4->			|
	as,8		<fs' cs' e>	fs,		q		|

	b		<fs' b d>	fs,		%…
  }
  \alternative {
    \relative c {
							<fs b d>8	|
	cs		<fs as e'>	fs,		q		|
	b		<b b'>->[	q->]		%…
    }
    \relative c {
					<>\noBeam	<b b'>8->	|
	<e, e'>[	<fs fs'>	<g g'>		<gs gs'>]	|
	<a a'>		<fs' a d>	<a, a,>		<e' a cs>	|
    }
  }
}

pedalCantabileTwo = {
		s8	|
	s2*16		|
}


dynamicsCantabileThree = {
	<>\ff
	s2*16	|
  \bar "||"
}

upperCantabileThree = \relative c' {
	<fs fs'>4->			<g g'>8.		<e e'>16|
	<a a'>4.->					<g g'>8		|
	<fs fs'>	<e e'>		<cs' cs'>8.->		<b b'>16|
	<b d fs b>4->			<a d fs a>->			|

	<a a'>->			<g g'>8.		<fs fs'>16|
	<b\=1_(ds\=2_(fs\=3(b\=4(>4	<b\=1)e\=2)g\=3)b\=4)>8	<a a'>	|
	<g g'>[		<fs fs'>	<e e'>		<d d'>]		|
	<fs a d fs>4->			<e a cs e>->			|

	<fs fs'>4->			<g g'>8.		<e e'>16|
	<a a'>4.->					<g g'>8		|
	<fs fs'>	<e e'>		<cs' cs'>8.->		<b b'>16|
  << {
	<b b'>4->			<a a'>->			|
  } \\ {
	<d fs>2								|
  } >>

	<a a'>4->			<g g'>8.		<fs fs'>16|
	<b\=1_(ds\=2_(fs\=3(b\=4(>4	<b\=1)e\=2)g\=3)b\=4)>8	b,\noBeam|
	bs		cs		%…
  << {
					fs8.			e16	|
  } \\ {
					cs4				|
  } >>
	d8		r		<d fs a d>->		r	|
}

lowerCantabileThree = \relative c {
	<d d,>8		<fs a d>	q		r		|
	<e e,>		<g a cs>	q		r		|
	<a, a,>		<g' a cs>	q		r		|
	<d d,>		<fs a d>	q		r		|

	<b, b,>		<fs' a b ds>	q		r		|
	<e e,>		<fs a b ds>	<e e,>		<g b e>		|
	g,		<g' b>		g,		<g' bf>		|
	a,		<fs' a d>	a,		<e' a c>	|

	<d d,>		<fs a d>	q		r		|
	<e e,>		<g a cs>	q		r		|
	<a, a,>		<g' a cs>	q		r		|
	<d d,>		<fs a d>	q		r		|

	<b, b,>		<fs' a b ds>	q		r		|
	<e e,>		<g b e>		q		r		|
	<a, a,>		<a g'>		q4				|
	<d fs>8		r		<d d,>		r		|
}

pedalCantabileThree = {
	s4.\sustainOn	s8\sustainOff	|
	s4.\sustainOn	s8\sustainOff	|
  <<
    \tag #'score-only {
	s2^\markup \italic "simile."	|
	s2*13	|
    }
    \tag #'midi-only {
      \repeat unfold 14 {
	s4.\sustainOn	s8\sustainOff	|
      }
    }
  >>
}


dynamics = {
  \set Score.tempoHideNote = ##t
  \time 2/4

  \tempo "Allegro." 4 = 132
  \dynamicsAllegroOne
  \keepWithTag #'atwo \dynamicsAllegroTwo
  \dynamicsAllegroThree
  \keepWithTag #'afour \dynamicsAllegroTwo
  \dynamicsAllegroFive
  \tempo "Cantabile."  4 = 120
  \dynamicsCantabileOne
  % \partial 8
  \dynamicsCantabileTwo
  \dynamicsCantabileThree
}

upper = {
  \clef treble

  \key a \minor
  \upperAllegroOne
  \keepWithTag #'atwo \upperAllegroTwo
  \upperAllegroThree
  \keepWithTag #'afour \upperAllegroTwo
  \key b \minor
  \upperAllegroFive
  \upperCantabileOne
  \upperCantabileTwo
  \upperCantabileThree
}

lower = {
  \clef bass

  \key a \minor
  \lowerAllegroOne
  \keepWithTag #'atwo \lowerAllegroTwo
  \lowerAllegroThree
  \keepWithTag #'afour \lowerAllegroTwo
  \lowerAllegroFive
  \key b \minor
  \lowerCantabileOne
  \lowerCantabileTwo
  \lowerCantabileThree
}

pedal = {
  \pedalAllegroOne
  \keepWithTag #'atwo \pedalAllegroTwo
  \pedalAllegroThree
  \keepWithTag #'afour \pedalAllegroTwo
  \pedalAllegroFive
  \pedalCantabileOne
  \pedalCantabileTwo
  \pedalCantabileThree
}


\score {
  \new PianoStaff
    \with {
      instrumentName = #"Piano"
    }
  \keepWithTag #'score-only
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
  \keepWithTag #'midi-only
  <<
    \new Staff = "upper"
    \unfoldRepeats
    <<
      \upper
      \dynamics
      \pedal
    >>
    \new Staff = "lower"
    \unfoldRepeats
    <<
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


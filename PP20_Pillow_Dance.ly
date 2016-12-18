\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "Pillow Dance"
  style = "Dance"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
		s8\f	|
	s2.*15		|
}

upperOne = \relative c'' {
  \repeat unfold 2 {
						g8	|
    \repeat unfold 2 {
	a	b	c	d	e	f	|
	g4		e8	c4		b8	|
    }
    \alternative {
      {
	a4		a8	c4		a8	|
	g4.~			g4		g8	|
      }
      {
        << {
	a8	b	c	d4		e8	|
        } \\ {
	f,4		f8	f4		f8	|
        } >>
      }
    }
  }
  \alternative {
    {
	<e c'>4.~		q4		%…
    }
    {}
  }
}

lowerOne = \relative c {
  \repeat unfold 2 {
						r8	|
    \repeat unfold 2 {
	<f a c>4	q8	<d f g b>4	q8	|
	<c e g c>4	q8	<e g c>4	q8	|
    }
    \alternative {
      {
	<f a c>4	q8	q4		q8	|
	<c e g c>4	q8	q4		q8	|
      }
      {
	<f a c>4	<d a'c>8<g b>4		q8	|
      }
    }
  }
  \alternative {
    {
	<c, g' c>4	q8	q4		%…
    }
    {}
  }
}


dynamicsTwo = {
	<>\ff
	s1*9	|
}

upperTwo = \relative c' {
	<e g c>2~			q8.	e16	f8.	fs16	|

	g8.	fs16	g8.	gs16	a4		b		|
	c		d		e		f		|
	g8.	fs16	g8.	gs16	a4		b		|
	<c, e g c>2~			q8	r	r4		|

	<b f' g>8 r	q	r	q	r	q	r	|
	<c e g>	r	q	r	q	r	q	r	|
	<b d g>	r	q	r	<b f' g> r	q	r	|
	<c e g>4	<b f' g>->	<c e g c>->	r		|
}

lowerTwo = \relative c {
	c4		<e g c>		<c c,>		<e g c>		|

	<d d,>		<f g b>		<g, g,>		<f' g b>	|
	<c c,>		<e g c>		<g, g,>		<e' g c>	|
	<d d,>		<f g b>		<g, g,>		<f' g b>	|
	<c c,>		<e g c>	<g, g,>8. <e e'>16 <f f'>8. <fs fs'>16	|

	<g g'>8. <fs fs'>16 <g g'>8. <gs gs'>16	<a a'>4	<b b'>		|
	<c c'>		<d d'>		<e e'>		<f f'>		|
	<g g'>8. <fs fs'>16 <f f'>8. <e e'>16	<d d'>4	<g g'>		|
	<c, c'>		<g g'>->	<c, c'>->	r		|
}


dynamicsThree = {
  <>-\markup \upright "Boys whistle."
	s1*5	|
	s2.	%…
}

upperThree = \relative c' {
	r4		<c e>8	r	<c f>	r	<c g'>	r	|
	<f a>8.[e'16	<f, a d>8. c'16]b8.[	g16	f8.	d16]	|
	c4    \voiceOne	<c' e>8	r	<c f>	r	<c g'>	r	|
	<f a>8.[e'16	<f, a d>8. c'16]b8.[	g16	f8.	d16]	|

  \oneVoice
	c4		r		r2				|
	r2				r4		%…
}

lowerThree = \relative c {
	<c c,>4		q8	r	<d d,>	r	<e e,>	r	|
	<f f,>	r	<f a d>	r	<g g,>	r	<f g b>	r	|
	<c c,>4		%…
  \change Staff = "upper"
  \voiceTwo
			c'8	r	d	r	e	r	|
	f	r	<f a d>	r	<f g b>	r	%…
  \change Staff = "lower"
  \oneVoice
							<g, b f'>8 r	|

	<c, c,>4	<e g c>		<c c,>		<e g c>		|
	<c c,>		<e g c>		q		%…
}


dynamicsFour = {
	<>\f
				s4	|
	s1*7				|
	<>-\markup "rit."
	s2.			%…

	<>-\markup "a tempo."
				s4	|
	s1*7				|
	s2.			%…
}

upperFour = \relative c''' {
							g8.	fs16	|
	a8.[	g16	ds8.	e16]	f!4		e		|
	e2~				e8.[	d16	cs8.	d16]	|
	e8.[	d16	as8.	b16]	e4		d		|
	g,2~				g8.[	g16	fs8.	g16]	|

	gs2~				gs8.[ <f!f'!>16 <e e'>8. <d d'>16] |
	<c c'>2~			q8.[	<b b'>16<a a'>8.<g g'>16]|
	<fs fs'>8.[ <g g'>16 <a a'>8. <b b'>16]
					<c c'>8.[ <d d'>16 <e e'>8. <fs fs'>16]|
  << {
	g'2~				g4		%…
  } \\ {
	b,4		c		<d f,>		%…
  } >>

							g8.(	fs16)	|
	a8.[	g16	ds8.	e16]	f!4		e		|
	e2~				e8.[	d16	cs8.	d16]	|
	e8.[	d16	as8.	b16]	e4		d		|
	g,2~				g4		g		|

	<f a>8	r	<d' f>	r	<c, f a>4.->		<c ds af'>8|
	<c e g>	r	<c' e>	r	<c, e g>4	fs8.	g16	|
	a8.[	fs16	a8.	c16]	<e, g c>4	<f g b>		|
	<e g c>2~			q4		%…
}

lowerFour = \relative c, {
							r4		|
	c8	r	<g''c e>r	q	r	q	r	|
	d,	r	<fs'c'd>r	q	r	q	r	|
	g,	r	<f'!g b>r	q	r	q	r	|
	c,	r	<e'g c>	r	q	r	q	r	|

	<e gs>8.[ <fs a>16 <gs b>8. <fs a>16] <e gs>8 r	<e e,>	r	|
	<a, c>8.[ <b d>16 <c e>8. <b d>16] <a c>8 r	<a a,>	r	|
	d,8	r	<d' fs>	r	<d fs a>r	<d a' c>r	|
	\slashedGrace g,8
  << {
	f''!2.						%…
  } \\ {
	<g, d'>4	<a d>		<b d>		%…
  } >>

							r4		|
	c,,8	r	<g''c e>r	q	r	q	r	|
	d,	r	<fs'c'd>r	q	r	q	r	|
	g,	r	<f'!g b>r	q	r	q	r	|
	<c c,>4		<c e g>		<c e g c>	g'		|

	<f f,>8	r	<f a d>	r	<f f,>4.->		<fs fs,>8|
	<g g,>	r	<g c e>	r	<g g,>4		r		|
	<d d,>		<d a' c>	<g g,>		q		|
	<c c,>->	<g g,>->	<c, c,>->	%…
}


dynamicsFive = {
	<>\f
				s4	|
	s1*7				|
	<>-\markup "rit."
	s1				|

	<>\pp-\markup "a tempo."
	s1*3				|
	<>-\markup "accel."
	s1				|

	<>\f
	s1*2				|
	<>\ff
	s1				|
	s2.			%…
}

upperFive = \relative c' {
							<c f a c>4	|
	<b f' a b>	<c f a c>	<f c' f>	<c f a>		|
	<d f g>		<d f g d'>2			<f g d'>4	|
	<e g e'>	<e g d'>	<e g c>		<e g b>		|
	<f a d>		<f a c>2			q4		|

	<b, f' a b>	<c f a c>	<a' c f a>	<d, f a c>	|
	<d f b>		<b' d g>2			<g b f'>4	|
	<g c e>		<e g c>		<g b d>		<d g b>		|
  << {
	c'2.						<bf c>4		|
  } \\ {
	e,4		f		fs		g		|
  } >>

	<f a b>8r	<f a c>	r	<f c'f>	r	<c f a>	r	|
	<d f g>	r	<f g d'>2			q4		|
	<e g e'>8 r	<e g d'>r	<e g c>	r	<e g b>	r	|
	<f a d>4	<f a c>2			q4		|

	<b, f' a b>	<c f a c>	<c' d bf'!>	<a c d a'>	|
	<g bf d g>	<f bf d f>	<e g bf e>	<d g bf d>	|
	<c f a c>2->			<g' bf c e>->			|
	<f a c f>4	r		%…
  \ottava #1
  \set Staff.ottavation = #"8"
					<f' a c f>	%…
  \ottava #0
}

lowerFive = \relative c, {
							r4		|
	<f f,>		<c' f a>	<a a,>		<c f>		|
	<bf bf,>	<d g bf>	<g, g,>		<g' bf d>	|
	<c, c,>		<e g d'>	<e g c>		<e g b>		|
	<f, f,>		<f' a c>	q		q		|

	f,		<c' f a>	d,		<d' f a c>	|
	<g, g,>		<f' f bf>2			q4		|
	<c c,>		<e g c>		<g, g,>		<f' g bf>	|
  << {
	<c c'>1								|
  } \\ {
	c4		d		ds		e		|
  } >>

	f,8	r	<c'f a>	r	a	r	q	r	|
	bf	r	<f'g bf>r	g,	r	<g'bf d>r	|
	c,	r	<e g d'>r	<e g c>	r	<e g b>	r	|
	f,	r	<f'a c>	r	q	r	q	r	|

	<f, f,>4	<c' f a>	<d d,>		<d fs c'>	|
	<g, g,>		<g' bf d>	<bf, bf,>	<bf g'>		|
	<c a'>2->			<c c,>				|
	<f, f,>4	r		<f f'>		%…
}


dynamicsSix = \dynamicsFour

upperSix = {
  <<
    \upperFour
    \relative c'' {
				s4	|
	s1*15				|
	s2		<e g c>4%…
    }
  >>
}

lowerSix = \lowerFour

pedalSix = {
				s4	|
	s1*15				|
	s2\sustainOn		s4\sustainOff 	%…
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Allegro vivo." 4 = 140

  \partial 8
  \dynamicsOne

  \time 4/4
  \tempo "Piu moderato." 4 = 132
  \dynamicsTwo
  \bar "||"

  \dynamicsThree
  \bar "||"

  % \partial 4
  \dynamicsFour
  \bar "|."

  % \partial 4
  \dynamicsFive
  \bar "|."

  % \partial 4
  \dynamicsSix
  \bar "|."
}

upper = {
  \clef treble

  \key c \major
  \upperOne

  \upperTwo

  \upperThree

  \upperFour

  \key f \major
  \upperFive

  \key c \major
  \upperSix
}

lower = {
  \clef bass

  \key c \major
  \lowerOne

  \lowerTwo

  \lowerThree

  \lowerFour

  \key f \major
  \lowerFive

  \key c \major
  \lowerSix
}

pedal = {
  #(skip-of-length dynamicsOne)
  #(skip-of-length dynamicsTwo)
  #(skip-of-length dynamicsThree)
  #(skip-of-length dynamicsFour)
  #(skip-of-length dynamicsFive)
  \pedalSix
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
  \layout {}
}

\score {
  \new PianoStaff
    \with {
      midiInstrument = #"acoustic grand"
    }
  \keepWithTag #'midi-only
  <<
    \new Staff = "upper"
    % \articulate
    \unfoldRepeats
    <<
      \upper
      \dynamics
      \pedal
    >>
    \new Staff = "lower"
    % \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
      \pedal
    >>
  >>
  \midi {}
  % \layout {}
}


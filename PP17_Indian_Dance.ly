\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "“Indian Dance”"
  style = "Dance"
}

\tagGroup #'(midi-only score-only)


dynamicsOne = {
	<>\ff
	s2*2	|
}

upperOne = \relative {
	<c' e>4->			q8		q		|
	q4->				q8		q		|
}

lowerOne = \relative {
	<a, e' a>4->			q8		q		|
	q4->				q8		q		|
}


dynamicsTwo = {
	<>\f
	s2*8	|

	<>\f
	s2*8	|

	s2*8	|
}

upperTwo = \relative {
	<a'' e c>8	a16	a	q	b	a	g	|
	<e c a>8->	e16	e	q	f	e	d	|
	<c a f>8->	c16	c	q	d	c	d	|
	<e c a>8->	e16	e	q8		e		|

	<a e c>8->	a16	a	q	b	a	g	|
	<e c a>8->	e16	e	q	f	e	d	|
	<c a f>8->	c16	c	q	d	c	d	|
	<e c a>8->	e16	e	q8		q		|

  \repeat unfold 2 {
	<e d b>8	e16	e	q	f	e	d	|
	<e c a>	a	e	a	q	a	e	a	|
	<e d b>8	e16	e	q	f	e	d	|
	<c a>	e	c	e	q	e	q	e	|
  }

	<a e c>8->	q16	q	q	b	a	g	|
	<e c a>8	e16	e	q	f	e	d	|
	<c a f>8	c16	c	q	d	c	d	|
	<e c a>8	e16	e	q8		e		|

	<a e c>8	a16	a	q	b	a	g	|
	<e c a>8	e16	e	q	f	e	d	|
	<c a f>8	c16	c	c	d	c	b	|
	<a e c>8	q16	q	q8		r		|
}

lowerTwo = {
  \repeat unfold 8 {
	<a, e c'>4			q8		q		|
  }
  \repeat unfold 4 {
	<a, e b>4			q8		q		|
	<a, e c'>4			q8		q		|
  }
  \repeat unfold 7 {
	<a, e c'>4			q8		q		|
  }
	<a, a>8		q16	q	q8		r		|
}


dynamicsThree = {
	<>\pp
	s2*16	|
}

upperThree = \relative {
  \repeat unfold 2 {
    \repeat unfold 2 {
	<d'' f a>8	q		<d f gs>4\trill			|
	<d f a>8	q		<d f gs>4\trill			|
    }
    \alternative {
      {
	<d f a>8	q		<bf! e g>4			|
	<b d f>8	q		<cs e>4				|
      }
      {
	<a f' a>8[	<a e' g>	<a d f>		<g bf e>]	|
	<a d f>		<g cs e>	<f a d>4			|
      }
    }
  }
}

lowerThree = \relative {
  \repeat unfold 2 {
    \repeat unfold 2 {
	<d f a>8	q		<d f gs b>4			|
	<d f a>8	q		<d f gs b>4			|
    }
    \alternative {
      {
	<d f a>8	q		<d g bf!>4			|
	<d gs b>8	q		<d gs a cs>4			|
      }
      {
	<d f d'>8[	<e g cs>	<f a d>		<g bf e>]	|
	<a d>		<a e'>		<d, a' d>4			|
      }
    }
  }
}


dynamicsFour = {
	<>\ff
	s2*7	|
	s8*3	%…
  % Don’t bother playing with the tempo to extend the fermata
		s8	|
}

upperFour = \relative {
  \repeat unfold 2 {
	<a'' e c>8	a16	a	q	b	a	g	|
	<e c a>8	e16	e	q	f	e	d	|
	<c a f>8	c16	c	q	d	c	d	|
  }
  \alternative {
    {
	<e c a>8	e16	e	q8		e		|
    }
    {
	a,8		<a c e a>16  q	q8		r\fermata	|
    }
  }
}

lowerFour = {
  \repeat unfold 2 {
	<a, e c'>4			q8		q		|
	<a, e c'>4			q8		q		|
	<a, f c'>4			q8		q		|
  }
  \alternative {
    {
	<a, e c'>4			q8		q		|
    }
    {
	<a, e c'>8	<a, a>16  q	q8		r\fermata	|
    }
  }
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 120
  \dynamicsOne
  \bar "||"

  \dynamicsTwo
  \bar "||"

  \dynamicsThree
  \bar "||"

  \tempo "Presto." 4 = 128
  \dynamicsFour
  \bar "|."
}

upper = {
  \clef treble

  \key a \minor
  \upperOne

  \upperTwo

  \key d \minor
  \upperThree

  \key a \minor
  \upperFour
}

lower = {
  \clef bass

  \key a \minor
  \lowerOne

  \lowerTwo

  \key d \minor
  \lowerThree

  \key a \minor
  \lowerFour
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
    \articulate
    \unfoldRepeats
    <<
      \upper
      \dynamics
    >>
    \new Staff = "lower"
    \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
  % \layout {}
}

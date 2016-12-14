\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "Act I"
  subtitle = "Opening Music"
  mutopiatitle = "Act I Opening Music"
% style = "Incidental"
  style = "Classical"
}

global = {
  \key d \major
  \time 6/8
}

dynamics = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro vivo." 4 = 120

	<>\f
	s2.*4	|

	s2.*3	|
	s8	s8\<	s8*2		s8\!	s8	|

	s2.*8	|
	s2.*8	|

	s2.*7	|
	s8	s8\<	s8*2		s8\!	s8	|

	s2.*8	|

  \bar "|."
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

upperOneToFour = \relative c' {
	<fs d'>8 e'	q	<fs, cs'>4	q8	|
	<fs b>4		q8	q4		<fs a>8	|
	<e g>8	a	q	<ds, fs>4	q8	|
	e4		e8	e4		d!8	|
}

upperFive = \relative c' {
  <<
    {
	cs8	e	b'	a	b	cs	|%=
    }
    \\
    {
	cs,4.			d4		g8	|%=
    }
  >>							|
}

upperFiveToEight = {
	\upperFive						|
  \relative c'' <<
    {
	d8	cs	d	fs4->-\tag #'first-time-only \arpeggio	%…
						e8	|%=
	d8	cs	b	cs4->		b8	|%=
    }
    \\
    {
	fs8	g	fs	e4.-\tag #'first-time-only \arpeggio	|%=
	fs4.			gs			|%=
    }
  >>							||
	a8	a	gs	g	fs	e	|
}

upperNineToTwelve = \upperOneToFour

upperThirteenToSixteen = \relative c'' {
  \upperFive						|
  <<
    {
	d8	fs	g	a	fs	d	|%=
    }
    \\
    {
	fs,4		g8	a4.			|%=
    }
  >>							|
	<d, g b>4	<g b e>8<fs a d>4	<g a cs>8|
	<fs a d>4.~		q4		r8	|
}

upperSeventeenToTwentyFour = \relative c' {
  <<
    {
	d'8	e	d	cs4		cs8	|%=
	b8	cs	b	%…
    }
    \\
    {
	b4.			a4		a8	|%=
	gs4.			%…
    }
  >>				a4		a8	||
  <<
    {
	fs8	gs	fs	%…
    }
    \\
    {
	d4.			%…
    }
  >>				<cs e>4		<b d>8	|
	cs4		<cs e>8	<e a>4		<a cs>8	|

	<b d>8	<cs e>	<b d>	<a cs>4		q8	|
  <<
    {
	b8	cs	b	%…
    }
    \\
    {
	gs4.			%…
    }
  >>				a4		<cs, e>8|
	<d fs>8	<e gs>	<fs a>	%…
  <<
    {
				b4		cs8	|%=
    }
    \\
    {
				gs!4.			|%=
    }
  >>							|
	a4		<a a,>8 q4		q8	|
}

upper = {
  \clef treble
  \global

  \upperOneToFour
  \upperFiveToEight
  \upperNineToTwelve
  \upperThirteenToSixteen

  \upperSeventeenToTwentyFour

  \upperOneToFour
  \removeWithTag #'first-time-only \upperFiveToEight
  \upperNineToTwelve
  \upperThirteenToSixteen
}

lowerOneToFour = \relative c {
	<d a'>8[r	q]	<d as'>4	q8	|
	<d b'>4		q8	<ds b'>4	q8	|
	<e b'>8[r	q]	<fs b>4		q8	|
  <<
    {
	b4		b8	b4		b8	|%=
    }
    \\
    {
	g8	e	fs	g4		g8	|%=
    }
  >>							|
}

lowerFive = \relative c' {
	<g a>4		q8	<fs a>4		<e a>8	|
}

lowerFiveToEight = {
	\lowerFive					|
  \relative c' <<
    {
	a4.			as			|%=
	b4.~			b8	e	d	|%=
	cs8	s8*5					|%=
    }
    \\
    {
	d,8	e	d	cs4.			|%=
	b8	cs	d	e4.			|%=
	a8	a,	b	cs	d	e	|%=
    }
  >>							|||
}

lowerNineToTwelve = \lowerOneToFour

lowerThirteenToSixteen = \relative c {
	\lowerFive					|
	<d a' d>4	<e a cs>8<fs a d>4.		|
	g4		e8	a4		a,8	|
	d4		a8	d,4		r8	|
}

lowerSeventeenToTwentyFour = \relative c' {
	e4.			e,			|
	<e d'>4.		<e cs'>4	r8	|
  <<
    {
	a4.			a4		gs8	|%=
    }
    \\
    {
	d4.			e4		e8	|%=
    }
  >>							|
	a4		e8	cs4		a8	|

  <<
    {
	gs'4.			a			|%=
	d4.(			cs4)		r8	|%=
    }
    \\
    {
	e,2.						|%=
	e4.(			a4)		r8	|%=
    }
  >>							||
	<d, a'>4.		<e d'>			|
	<a cs>4		g!8	fs4		e8	|
}

lower = {
  \clef bass
  \global

  \lowerOneToFour
  \lowerFiveToEight
  \lowerNineToTwelve
  \lowerThirteenToSixteen

  \lowerSeventeenToTwentyFour

  \lowerOneToFour
  \lowerFiveToEight
  \lowerNineToTwelve
  \lowerThirteenToSixteen
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
    >>
    \new Staff = "lower" <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
}

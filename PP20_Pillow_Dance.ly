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

pedalOne = {
		s8	|
	s2.*15		|
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

pedalTwo = {
	s1*9	|
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

pedalThree = {
	s1*5	|
	s2.	%…
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
}

upper = {
  \clef treble

  \key c \major
  \upperOne

  \upperTwo

  \upperThree
}

lower = {
  \clef bass

  \key c \major
  \lowerOne

  \lowerTwo

  \lowerThree
}

pedal = {
  \pedalOne
  \pedalTwo
  \pedalThree
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


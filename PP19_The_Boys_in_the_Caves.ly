\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "The Boys in the Caves"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


upperOne = \relative c'' {
  \repeat unfold 2 {
	d4		a8	a8.	g16	fs8	|
	d'4		a8	a8.	g16	fs8	|
	d'4		a8	a8.	g16	fs8	|
	<cs e>4.^(_(		q4))		r8	|

    << {
	fs8.	a16	d8	a	e	g	|
	fs8.	a16	d8	a	e	g	|
	fs8.	g16	a8	fs4		e8	|
    } \\ {
	d4		r8	cs4		r8	|
	d4		r8	cs4		r8	|
	d4.			cs			|
    } >>
  }
  \alternative {
    {
	d8	fs	g	a	b	cs	|
    }
    {
	d,4		r8	<d fs a d>4	r8	|
    }
  }
}

lowerOne = \relative c {
  \repeat unfold 2 {
	<d fs a>4	q8	q4		q8	|
	<d fs a>4	q8	q4		q8	|
	<d fs a>4	q8	q4		q8	|
	<a e' a>4	q8	q4		r8	|

	<d fs a>4	r8	<a e' a>4.		|
	<d fs a>4	r8	<a e' a>4.		|
	<d fs a>4	r8	<a e' a>4.		|
  }
  \alternative {
    {
	<d fs a>4	r8	r4		r8	|
    }
    {
	<d fs a>4	r8	<d d,>4		r8	|
    }
  }
}


upperTwo = \relative c'' {
  \repeat unfold 2 {
	e8.	cs16	e8	fs8.	gs16	a8	|
	e8.	cs16	e8	fs8.	gs16	a8	|
	e8.	fs16	e8	cs8.	b16	a8	|
  }
  \alternative {
    {
	b8.	cs16	b8	gs8.	fs16	e8	|
    }
    {
	b'8.	cs16	b8	a4		r8	|
    }
  }
}

lowerTwo = \relative c' {
	<a cs e>4	q8	<a d fs>4	q8	|
	<a cs e>4	q8	<a d fs>4	q8	|
	<a cs e>4	q8	<fs cs' fs>4	q8	|
	<fs a b ds>4	q8	<e gs b e>4	r8	|

	<a cs e>4	q8	<fs a cs fs>4	q8	|
	<a cs e>4	q8	<fs a cs fs>4	q8	|
	<cs e a>4	q8	<fs a cs>4	q8	|
	<e gs d'>4	q8	<a cs>4		r8	|
}


upperThree = {
}

lowerThree = {
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Allegro vivo." 4 = 140

	<>\f
	s2.*16	|
  \bar "||"
  % TODO: fermata over bars

	s2.*8	|
  \bar "||"

	s2.*16	|
  \bar "|."
  % TODO: “Fine.” before bars
}

upper = {
  \clef treble

  \key d \major
  \upperOne

  \key a \major
  \upperTwo
  
  \key d \major
  \upperThree
}

lower = {
  \clef bass

  \key d \major
  \lowerOne

  \key a \major
  \lowerTwo
  
  \key d \major
  \lowerThree
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
    % \articulate
    \unfoldRepeats
    <<
      \upper
      \dynamics
    >>
    \new Staff = "lower"
    % \articulate
    \unfoldRepeats
    <<
      \lower
      \dynamics
    >>
  >>
  \midi {}
  % \layout {}
}

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "“Ent’racte”"
% style = "Incidental"
}

\tagGroup #'(midi-only score-only)


dynamicsAllegroOne = {
  \tempo "Allegro." 4 = 132

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
  \key a \minor
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
  \key a \minor

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


dynamicsAllegroTwo = {
}

upperAllegroTwo = {
}

lowerAllegroTwo = {
}

pedalAllegroTwo = {
}


dynamicsCantabileOne = {
  %\tempo "Cantabile."

}

upperCantabileOne = {
}

lowerCantabileOne = {
}

pedalCantabileOne = {
}


dynamicsCantabileTwo = {
}

upperCantabileTwo = {
}

lowerCantabileTwo = {
}

pedalCantabileTwo = {
}


dynamicsCantabileThree = {
}

upperCantabileThree = {
}

lowerCantabileThree = {
}

pedalCantabileThree = {
}


dynamics = {
  \set Score.tempoHideNote = ##t
  \time 2/4

  \dynamicsAllegroOne
  \dynamicsAllegroTwo
  \dynamicsCantabileOne
  \dynamicsCantabileTwo
  \dynamicsCantabileThree
}

upper = {
  \clef treble

  \upperAllegroOne
  \upperAllegroTwo
  \upperCantabileOne
  \upperCantabileTwo
  \upperCantabileThree
}

lower = {
  \clef bass

  \lowerAllegroOne
  \lowerAllegroTwo
  \lowerCantabileOne
  \lowerCantabileTwo
  \lowerCantabileThree
}

pedal = {
  \pedalAllegroOne
  \pedalAllegroTwo
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


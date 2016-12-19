\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Terrorism of the Pirates"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo 4 = 90

	<>\p
	s2*16		|
  \bar "|."
}

upper = \relative c' {
  \clef treble

  \key a \major
  \repeat unfold 2 {
	e8[	b'	gs	fs]	|
	e	ds	e4		|
	e8[	e'	c	b]	|
	a	gs	a4		|

	c8[	b	a	gs]	|
	a[	b	c	a]	|
	e'8->	r	r4		|
	e,8->	r	r4		|
  }
}

lower = \relative c {
  \clef bass

  \key a \major
  \repeat unfold 2 {
    \repeat unfold 2
	\repeat tremolo 4 { <e g>16 d' }	|
    \repeat unfold 2
	\repeat tremolo 4 { <e, a>16 c' }	|
    \repeat unfold 2
	\repeat tremolo 4 { <e, a>16 ds' }	|
    \repeat unfold 2
	\repeat tremolo 4 { <e, g>16 b' }	|
  }
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

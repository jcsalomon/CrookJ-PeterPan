\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "Act III Opening Music"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 6/8
  \tempo "Andante." 4 = 96

  \partial 8
			s8\f	|
	s2.*3			|
	s4.	s4	%…

			s8\p	|
	s2.*2			|
	s4.\<	s4\f\<	s8\p	|
	s4.	s4	%…
  \bar "||"
}

upper = \relative c' {
  \clef treble

  \key d \minor
  \change Staff = "lower"
  \voiceOne
							a8		|
	<a d>4		<e a>8		<bf' d>4	<e, a>8		|
	<d a' d>4	<g a>8		<fs a d>4	<ef fs! c'>8	|
	<d g bf>4	<ef fs a>8	<d g>4		<b d fs>8	|
	<cs e!>4.~			q4		%…

  \change Staff = "upper"
  \oneVoice
							<bf' e!>8^\(	|
  << {
    \voiceOne
	f'4		a8		d,4		e8		|
	f4		a8		d,4		e8\)		|
  } \new Voice {
    \voiceTwo
	a,4.				bf				|
	a4.				bf				|
  } >>
  \oneVoice
	<a d f>4	<f bf d f>8	<g bf ef g>4^>	<g a cs>8	|
	<f a d>4.~			q4		%…
}

lower = \relative c {
  \clef bass

  \key d \minor
							r8		|
  \voiceTwo
	<d f>4		c8		<bf f'>4	<g cs>8		|
	<f a>4		<ef c'>8	<d d'>4		<d a'>8		|
	<d g>4		<d c'>8		<d bf'>4	<d gs>8		|
	<e a>4.~			q4		%…

  \oneVoice
							<cs' g'>8	|
  << {
	f4.				f				|
	f				f4		g8		|
  } \\ {
	d4.				bf				|
	a				g				|
  } >>
	<a f'>4		<bf, bf'>8	<ef ef'>4->	<a e'>8		|
	<d, d'>4.~			q4		%…

  _\markup \italic "Segue."
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

\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "The Fight and Overthrow of the Pirates"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/2
  \tempo "Allegro con Spirito." 4 = 140

	<>\ff
	s1*31	|

	s2	%…
  % Extending 2-crotchet note + 2-crotchet fermata:
  % temporary tempo = current × time÷(time + fermata)
  % = 140 × 2÷(2 + 2) = 140÷2 = 70
  \tempo 4 = 70
		s2	|
  \tempo 4 = 140

  \bar "|."
}

upperRepeatA = \relative {
  \resetRelativeOctave c''

	<a cs e a>4	<b e gs>	<gs ds' fs>	<gs cs e>	|
	<a ds gs>	%…
  << {
			fs'8.	e16	%…
  } \\ {
			<a, b>4	%…
  } >>
					<gs b e>	r		|
}

upperRepeatB = \relative {
  \resetRelativeOctave c''

	<b fs' a>4	<b e gs>	<a b ds gs>	<e gs e'>	|
	<a cs gs'>	%…
  << {
			fs'8.	b,16	%…
  } \\ {
			<a b>4	%…
  } >>
					<gs b e>	r		|

	<a e'>		<fs fs'>	<fs d'>		<e e'>		|
	<e cs'>		%…
  << {
			b'8.	a16	%…
  } \\ {
			fs4	%…
  } >>
					<e b'>		e		|
	<a e'>		<a fs'>		<gs b>		<g e'>		|
	<fs a>		%…
  << {
			d'8.	cs16	%…
  } \\ {
			f,4	%…
  } >>
					<e b'>		e		|
}

upperRepeatC = \relative {
  \resetRelativeOctave c''

	<a cs e a>4	<e a cs e>	%…
  << {
					cs'		b8.	a16	|
  } \\ {
					<d, fs>2			|
  } >>
	<cs e a>4	<d e gs>	<cs e a>2\fermata		|
}

upper = \relative {
  \clef treble

  \key a \major

  \resetRelativeOctave c''

  \repeat unfold 6 {
	<a cs e a>4	<e b' e>	<e a cs>	%…
    << {
							b'8.	a16	|
    } \\ {
							<d, fs>4	|
    } >>
	<e a cs>	<e gs b e>	<a cs e a>	r		|
  }
  \alternative {
    \upperRepeatA
    \upperRepeatB
    \upperRepeatA
    \upperRepeatB
    \upperRepeatA
    \upperRepeatC
  }
}

lowerRepeatA = \relative {
  \resetRelativeOctave c

	<a cs e a>4	<b e gs>	<bs fs' gs>	<cs e gs>	|
	<b fs' b>	<b fs' ds'>\arpeggio	<e b' e>	r	|
}

lowerRepeatB = \relative {
  \resetRelativeOctave c

	<ds ds'>4	<e e'>		<b b'>		<cs cs'>	|
	<a a'>		<b fs' ds'>\arpeggio	<e e'>	r		|

  \resetRelativeOctave c'

	<cs e>		<as cs>		<b d>		<gs b>		|
	<a cs>		<ds, b'>	<e gs>		e		|
  << {
	e1								|
  } \\ {
	<cs' e>4	<bs ds>		<b d>		<as cs>		|
  } >>
	<e a! d>	<e a d>		<e gs d'>	e		|
}

lowerRepeatC = \relative {
  \resetRelativeOctave c,

	<cs cs'>2			<d d'>				|
	<e e'>4		q		<a a'>2\fermata			|
}

lower = \relative {
  \clef bass

  \key a \major

  \resetRelativeOctave c

  \repeat unfold 6 {
	<a cs e>4	<b e gs>	<cs e a>	<d fs b>	|
	<cs e a>	<b e gs>	<a cs e a>	r		|
  }
  \alternative {
    \lowerRepeatA
    \lowerRepeatB
    \lowerRepeatA
    \lowerRepeatB
    \lowerRepeatA
    \lowerRepeatC
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

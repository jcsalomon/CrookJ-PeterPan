\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Talk about Fairies"
% style = "Incidental"
}

global = {
  \key a \major
  \time 6/8
}

dynamics = {
  \set Score.tempoHideNote = ##t
  \tempo "Andante." 4 = 80

	s8\p	s8*5					|
	s4.			s4.\<			|
	s8	s8\!	s2				|
	s4\>		s8\!	s4.			|
	s4.			s8	s4\<		|
	s8	s8\!	s2				|
	s2.*2

  \bar "|."
}

upper = \relative c'' {
  \clef treble
  \global

  <<
    {
      \voiceOne
	cs4.(			%…
    }
    \new Voice
    {
      \voiceTwo
	<cs,e>8	<e a>	<cs e>	%…
    }
  >> \oneVoice			<d fs>8	<e gs>	<fs a>	|

	<gs b>4		<gs e'>8<a e'>4.		|

  <<
    {
	fs'4.			e8	d	fs,	|%=
    }
    \\
    {
	e4.			d			|%=
    }
  >>	 						|
  \break

	<e cs'>4	<d b'>8	<cs a'>	<d fs>	<cs e>	|

  <<
    {
	cs'4.			%…
    }
    \\
    {
	<cs, e>8<e a>	<cs e>	%…
    }
  >>				<d fs>8	<e gs>	<fs a>	|

	<gs b>4		<gs e'>8 <g e'>4.		|
	<d fs>8) <fs d'>^( <f a> <e cs'>4	<d b'>8	|
	<cs a'>4.~		q4)		r8	|
}

lowerOne = \relative c' {
	a2.						|
	d4.\arpeggio		cs			|
	as4.\arpeggio		b			|
	a!4		gs8	a4.			|

	a2.						|
	d4.\arpeggio		cs			|
	a4.			a4		gs8	|
	a4.~			a4		r8	|
}

lowerTwo = \relative c {
	<a e'>2.					|
	<a e'>2.\arpeggio				|
	fs4.\arpeggio		b			|
	e4.			a,			|

	<a e'>2.					|
	<a e'>2.\arpeggio				|
	b4.			e			|
	<b e>4.~		q4		r8	|
}

lower = {
  \clef bass
  \global

  <<
    \lowerOne
    \\
    \lowerTwo
  >>
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
  \midi {
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

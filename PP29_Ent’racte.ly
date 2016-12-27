\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

% \include "articulate.ly"

\header {
  title = "Ent’racte"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 4/4
  \tempo "Allegretto grazioso." 4 = 120

  \partial 4

		s4\p	|
	s1*22		|
	s2.	%…

  \bar "|."
}

upper = \relative {
  \clef treble

  \key g \major
  \resetRelativeOctave c'''

  << {
    \voiceOne
							\trip g8\( a g	|
	\trip fs g fs	\trip e fs e	%…
  } \new Voice {
    \voiceTwo
							<b d>4		|
	<a c>		q		%…
  } >>
  \oneVoice
					<fs a c>4.\)	<a c fs>8\(	|
  << {
    \voiceOne
	\trip e'8 fs e	\trip d e d	%…
  } \new Voice {
    \voiceTwo
	<g, b>4		q		%…
  } >>
  \oneVoice
					<d g b>4.\)	<g b e>8\(	|
  << {
    \voiceOne
	\trip d'8 e d	\trip c d c	<es, gs>4\)	<fs a>		|
  } \new Voice {
    \voiceTwo
	<fs a>		<d fs>		d2				|
  } >>
  \oneVoice
	<cs\=1( e!\=2( g\=3^( as\=4^(>2	<d\=1) g\=2)\=3) b\=4)>4	%…

  \resetRelativeOctave c'''
  << {
    \voiceOne
							\trip g8\( a g	|
	\trip fs g fs	\trip e fs e	%…
  } \new Voice {
    \voiceTwo
							<b d>4		|
	<a c>		q		%…
  } >>
  \oneVoice
					<fs a c>4.\)	<a c fs>8\(	|
  << {
    \voiceOne
	\trip e'8 fs e	\trip d e d	%…
  } \new Voice {
    \voiceTwo
	<g, b>4		q		%…
  } >>
  \oneVoice
					<d g b>4.\)	<g cs>8^\(	|
  << {
    \voiceOne
	\trip d'8 e d	\trip cs d b	as4		fs'		|
	b,2.\)						%…
  } \new Voice {
    \voiceTwo
	fs2				fs2				|
	fs				d4		%…
  } >>

  \resetRelativeOctave c''
  << {
    \voiceOne
							b4\(		|
	\trip cs8 bs cs	\trip e ds e	%…
  } \new Voice {
    \voiceTwo
							r4		|
	<e, g>		<g cs>		%…
  } >>
  \oneVoice
					<as e' g>4\)	as\(		|
  << {
    \voiceOne
	\trip b8 as b	\trip d cs d	%…
  } \new Voice {
    \voiceTwo
	<d, fs>4	<fs b>		%…
  } >>
  \oneVoice
					<b d fs>\)	b\(		|
  << {
    \voiceOne
	\trip cs8 bs cs	\trip e ds e	%…
  } \new Voice {
    \voiceTwo
	<e, g>4		<g cs>		%…
  } >>
  \oneVoice
					<as e' g>\)	as\(		|
  << {
    \voiceOne
	\trip b8 as b	\trip d cs d	%…
  } \new Voice {
    \voiceTwo
	<d, fs>4	<fs b>		%…
  } >>
  \oneVoice
					<b d fs>\)	b\(		|
	\trip <d, b'>8 <fs d'> <d b'>	\trip <fs d'> <d b'> <fs d'>	%\
	\trip <d b'> <fs d'> <d b'>	\trip <fs d'> <d b'> <fs d'>\)	|

	\trip <d a'>\( <fs d'> <d a'>	\trip <fs d'> <d a'> <fs d'>	%\
	\trip <d a'> <fs d'> <d a'>	\trip <d b'> <g d'> <b g'>	|
  \resetRelativeOctave c''
  << {
    \voiceOne
	\trip fs g fs	\trip e fs e	%…
  } \new Voice {
    \voiceTwo
	<a, c>4		q		%…
  } >>
  \oneVoice
					<fs a c>4.\)	<a c fs>8\(	|
  << {
    \voiceOne
	\trip e'8 fs e	\trip d e d	%…
  } \new Voice {
    \voiceTwo
	<g, b>4		q		%…
  } >>
  \oneVoice
					<d g b>4.\)	<g b e>8\(	|
  << {
    \voiceOne
	\trip d'8 e d	\trip c d c	<es, gs>4\)	<fs a>		|
  } \new Voice {
    \voiceTwo
	<fs a>		<d fs>		d2				|
  } >>
  \oneVoice
	<cs\=1( g'\=2( as\=3^(>2	<d\=1) g\=2) b\=3)>4	%…

							g4^\(		|
  << {
    \voiceOne
	\trip a8 g fs	\trip g a g	a4		g		|
	\trip a8 g fs	\trip g a g	a4		g\)		|
  } \new Voice {
    \voiceTwo
	<b, d>1								|
	c2				cs				|
  } >>
  \oneVoice

	\trip <d b'>8\( d' b'	\trip c b b,\)	%…
  << {
					a'4->(		g)		|
  } \\ {
					g,2				|
  } >>

	<fs d'>2->			%…
  << {
					a4		b		|
  } \\ {
					fs2				|
  } >>
	g4		<g b d>~	<g b d g>
}

lower = \relative {
  \clef bass

  \key g \major
  \resetRelativeOctave c,

							r4		|
	d		d'		d'		d,		|
	d,		d'		b'		d,		|
	d,		d'		b'		<d, c'>		|
	g,		g'		g,		%…

							r4		|
	d		d'		d'		d,		|
	g,		d'		b'4.			<e, b'>8|
  << {
    \resetRelativeOctave c'
	b4		d		c		<as e'>		|
	\trip d8 e d	\trip c d c	s4		%…
  } \\ {
    \resetRelativeOctave c
	fs1								|
	<b, b'>2~			q4		%…
  } >>

  << {
    \resetRelativeOctave c'
							r4		|
	<b b,>\(	\trip c8 bs c	\trip e ds e	g4\)		|
	<b, b,>\(	\trip b8 as b	\trip d cs d	fs4\)		|
	<b, b,>\(	\trip c8 bs c	\trip e ds e	g4\)		|
	<b, b,>\(	\trip b8 as b	\trip d cs d	fs4\)		|
  } \\ {
    \resetRelativeOctave c
							r4		|
	b1~								|
	b								|
	b1~								|
	b								|
  } >>

	<b fs' b>1							|
	<d a' c>2.					<d, d'>4	|

	d		d'		d'		d,		|
	d,		d'		b'		d,		|
	d,		d'		b'		<d, c'>		|
	g,		g'		g,		%…

							r4		|
	<f f'>1								|
	<e e'>								|

	\acciaccatura b8 <d' b'>2	<d b'>2				|
	<d b'>->			<d c'>				|
	<g b>4		d(		g,)		%…
}

pedal = {
				s4		|
	s4\sustainOn	s2	s4\sustainOff	|
	s4\sustainOn	s2	s4\sustainOff	|
	s1*2	|
	s4\sustainOn	s2	s4\sustainOff	|
	s1*3	|
	s4\sustainOn	s2	s4\sustainOff	|
	s1*5	|
	s4\sustainOn	s2	s4\sustainOff	|
	s1*7	|
	s2.			%…
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

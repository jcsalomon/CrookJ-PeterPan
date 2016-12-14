\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\include "articulate.ly"

\header {
  title = "Act II Opening Music"
% style = "Incidental"
  style = "Classical"
}

\tagGroup #'(midi-only score-only)


dynamics = {
  \set Score.tempoHideNote = ##t

  \time 2/4
  \tempo "Allegro." 4 = 132

	<>\ff
	s2*12	|

  \bar "|."
}

upper = \relative {
  \clef treble

  \key e \phrygian

	<e' e'>4->			q->				|
	q->				q->				|
  << {
	e4				e				|
	e				e				|
  } \\ {
	c16	a	b8		c16	a	b8		|
	c16	a	b8		c16	a	b8		|
  } >>

	<e e'>4->			q->				|
	q->				q->				|
  << {
	e4				e				|
	e				e				|
  } \\ {
	d16	b	c8		d16	b	c8		|
	d16	b	c8		d16	b	c8		|
  } >>

	<d' f>16-.
		<c e>-.	<b d>-.	<a c>-.	<gs b>-.<a c>-.	<b d>8		|
	<c e>16	<b d>	<a c>	<e b'>	<c a'>	<e b'>	<a c>8		|
	<e b'>8		q16	q	q	<a c>	<e b'>	<a c>	|
	<e b'>8		q16	q	q4				|
}

lower = \relative {
  \clef bass

  \key e \phrygian

	<e e,>4->			q->				|
	q->				q->				|
  << {
	a16	fs	gs8		a16	fs	gs8		|
	a16	fs	gs8		a16	fs	gs8		|
  } \\ {
	e4				e				|
	e				e				|
  } >>

	<e e,>4->			q->				|
	q->				q->				|
  << {
	b16	gs	a8		b16	gs	a8		|
	b16	gs	a8		b16	gs	a8		|
  } \\ {
	e4				e				|
	e				e				|
  } >>

	\acciaccatura ds''8 <e e,>2					|
	\acciaccatura ds8 <e e,>2					|
	<e b'>8		q16	q	q	<a c>	<e b'>	<a c>	|
	<e b'>8		q16	q	q4				|
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

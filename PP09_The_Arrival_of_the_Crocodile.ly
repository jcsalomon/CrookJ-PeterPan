\version "2.19.52"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Arrival of the Crocodile"
%  style = "Incidental"
  style = "Classical"
}

global = {
  \key d \minor
  \time 2/4
}

dynamics = {
  \set Score.tempoHideNote = ##t
  \tempo "Agitato." 4 = 110

  \override DynamicTextSpanner.style = #'none

  \partial 8
							s16\p	s	|

	s2								|
	s4				s8\cresc	s8		|
	s2								|
	s4.						s16\f	s	|

	s2*4	||||

  \bar "||"

  \tempo "Moderato, and very Marked." 4 = 80

	\grace s8\f
	s2	|
	s2*3	|||

	s2*4	||||

  \bar "|."
}

upper = \relative c' {
  \clef treble
  \global

  \stemUp \slurUp
							d16(	e	|

	f	e	f	e	d	e	d	e	|
	f	e	f	e)	d8(		f16	g	|
	af	g	af	g	f	g	f	g	|
	af	g	af	g	f8)		d'16[	e]	|

  <<
    {
      \voiceOne
	f8[		e		d		c]		|%=
	b[		a		%…
    }
    \new Voice
    {
      \voiceTwo
      \crossStaff {
        \autoBeamOff
	<d, f>		q		q		q		|%=
	q		q		%…
      }
    }
  >>
  \oneVoice
  \autoBeamOn
					gs		f]		||
	e[		d		c		b]		|
	a		b		gs4\fermata			|

  \repeat unfold 2 {
    \voiceOne
	\acciaccatura{gs''8}
	<d f a>		r		%…
    \oneVoice \stemUp
					<gs, cs e>	r		|
  }									|
	<a d a'>^.[	<g d' g>^.	<a d a'>^.	<g bf bf'>^.]	|
	<a d a'>	r		\acciaccatura{\slurUp ds}
					<a cs e>	r		|

  \repeat unfold 2 {
    \voiceOne
	\acciaccatura{gs'8}
	<d f a>			r	%…
    \oneVoice \stemUp
	\acciaccatura{\slurUp cs}	<gs bf cs e>	r		|
  }									|
	<a d a'>8	<bf d g>16 q	<a d f>8	<f bf d>16 q	|
	<e bf' d>8	<g a cs>	<f a d>		r		|
}

lower = \relative c' {
  \clef bass
  \global

							r8		|

	<gs b>[		q		q		q]		|
	q[		q		q]		r		|
	<b d>[		q		q		q]		|
	q[		q]		q		r		|

	b[		b		b		b]		|
	b[		b		<b d>		q]		|
	<b, d f>[	q		q		q]		|
	<e, b' d>	q	q4\fermata_\markup{\italic Segue.}	|

  \repeat unfold 2 {
    \change Staff = "upper" \voiceTwo
	\acciaccatura{gs''8}
	<d f a>		r		%…
    \change Staff = "lower" \oneVoice
				<g, cs e>		r		|
  }									|
	<f a d>-.	<g bf d>-.	<f a d>-.	<e g d'>-.	|
	<d f a d>	r		%…
					\acciaccatura{\slurUp ds'}
					<a cs e>	r		|

  \repeat unfold 2 {
    \change Staff = "upper" \voiceTwo
	\acciaccatura{gs'8}
	<d f a>		r		%…
    \change Staff = "lower" \oneVoice
					\acciaccatura{\slurUp ds}
					<g, bf cs e>-.	r		|
  }									|
	<f a d>8	<g bf d>16 q	<a d f>8	<bf d>16 q	|
	<g bf d>8	<a e'>		<d, a' d>	r		|
}

\score {
  \new PianoStaff
    \with {
      instrumentName = #"Piano"
    }
  <<
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
  >>
  \layout {
    \context {
      \PianoStaff
      \consists #Span_stem_engraver
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
  \midi {}
}

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Arrival of the Wolves"
% style = "Incidental"
}

global = {
  \key e \minor
  \time 2/4
}

\tagGroup #'(midi-only score-only)

dynamics = {
	<>\f
  \repeat volta 2 {
	s2*16	|
  }
	s2	|

  \bar "|."
}

upper = \relative c {
  \clef treble
  \global

  \repeat volta 2 {
    \trebleToBass

    \repeat unfold 2 {
	e4.						g8		|
      <<
        {
	b2								|%=
	c16->(	b	a8)		c16->(	b	a8)		|%=
	c16->(	b	a8)		c		a		|%=
        }
        \\
        {
	e2								|%=
	fs4				fs				|%=
	fs4				fs8		fs		|%=
        }
      >>								|||
    }									||||

    \clef treble

    <<
      {
	e'4				g16->(	fs	e8)		|%=
	ds4				a'16->(	g	fs8)		|%=
	e4				g16->(	fs	e8)		|%=
	fs4				c'16->(	b	a8)		|%=
      }
      \\
      {
	b,4				b				|%=
	b				ds				|%=
	b				e				|%=
	fs				a				|%=
      }
    >>									||||

    <<
      {
	b8[		e		d		c]		|%=
	b[		%…
        \once \override NoteColumn.force-hshift = -1
			as		b		c]		|%=
      }
      \\
      {
        \autoBeamOff
	\crossStaff {
	<e, g>		q		q		q		|%=
	q		%…
          \once \override NoteColumn.force-hshift = 0
			q		q		q		|%=
        }
        \autoBeamOn
      }
    >>									||
	<ef fs! a c>^>	r		q^>		r		|
	<ds fs a b>^>	r		q^>		r		|
  }

  \tag #'score-only {
	<e e'>2\fermata							|
  }
  \tag #'midi-only {
	<e e'>1
  }
}

lower = \relative c {
  \clef bass
  \global

  \repeat volta 2 {

    \repeat unfold 2 {
      <<
        {
	g4.						b8		|%=
	g2								|%=
	a16->(	b	c8)		a16->(	b	c8)		|%=
	a16->(	b	c8)		a		c		|%=
        }
        \\
        {
	e,2(								|%=
	e)								|%=
	e4				e				|%=
	e				e				|%=
        }
      >>								||||
    }									||||

    <<
      {
	g'16->(	fs	e8)		g4				|%=
	a16->(	g	fs8)		a4				|%=
	b16->(	a	g8)		b4				|%=
	c16->(	b	a8)		c4				|%=
      }
      \\
      {
	e,2								|%=
	fs								|%=
	g								|%=
	a								|%=
      }
    >>									||||

	\acciaccatura as8
	b[		b		b		b]		|
	b[		b		b		b]		|
    <<
      {
	c16->(	b	a8)		c16->(	b	a8)		|%=
	b16->(	a	fs8)		b16->(	a	fs8)		|%=
      }
      \\
      {
	a,		r		a		r		|%=
	b		r		b		r		|%=
      }
    >>									||
  }

  <<
    {
	\repeat tremolo 4 { e,16 e' }					|
    }
    {
      \once \override MultiMeasureRest #'transparent = ##t
	R2_\fermataMarkup
    }
  >>
  \tag #'midi-only {
	\repeat tremolo 4 { e,16 e' }
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
  \layout {
    \context {
      \PianoStaff
      \accepts Dynamics
      \consists #Span_stem_engraver
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
    \new Staff = "upper" <<
      \unfoldRepeats\upper
      \unfoldRepeats\dynamics
    >>
    \new Staff = "lower" <<
      \unfoldRepeats\lower
      \unfoldRepeats\dynamics
    >>
  >>
  \midi {
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

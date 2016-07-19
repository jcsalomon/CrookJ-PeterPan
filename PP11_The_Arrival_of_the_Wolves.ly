\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Arrival of the Wolves"
%	style = "Incidental"
}

%% http://lsr.di.unimi.it/LSR/Item?id=792
%% see also http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches

% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}


global = {
	\key e \minor
	\time 2/4
}

dynamics = {
	s4.\f			s8	|
	s2*32
	\bar "|."
}

upper = \relative c {
	\clef treble
	\global

	\trebleToBass
\repeat unfold 2 {
	e4.						g8		|
<< { \voiceOne
	b2								|%=
	c16->(	b	a8)		c16->(	b	a8)		|%=
	c16->(	b	a8)		c		a		|%=
} \new Voice { \voiceTwo
	e2								|%=
	fs4				fs				|%=
	fs4				fs8		fs		|%=
} >> \oneVoice								|||
}

	\clef treble
<< { \voiceOne
	e'4				g16->(	fs	e8)		|%=
	ds4				a'16->(	g	fs8)		|%=
	e4				g16->(	fs	e8)		|%=
	fs4				c'16->(	b	a8)		|%=
} \new Voice { \voiceTwo
	b,4				b				|%=
	b				ds				|%=
	b				e				|%=
	fs				a				|%=
} >> \oneVoice								||||

<< { \voiceOne
	b8[		e		d		c]		|%=
	b[		as		b		c]		|%=
} \new Voice { \voiceTwo
\autoBeamOff \crossStaff {
	<e, g>		q		q		q		|%=
	q		q		q		q		|%=
} \autoBeamOn
} >> \oneVoice								||
	<ef fs! a c>^>	r		q^>		r		|
	<ds fs a b>^>	r		q^>		r		|
}

lower = \relative c {
	\clef bass
	\global

\repeat unfold 2 {
<< { \voiceOne
	g4.						b8		|%=
	g2								|%=
	a16->(	b	c8)		a16->(	b	c8)		|%=
	a16->(	b	c8)		a		c		|%=
} \new Voice { \voiceTwo
	e,2(								|%=
	e)								|%=
	e4				e				|%=
	e				e				|%=
} >> \oneVoice								||||
}
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

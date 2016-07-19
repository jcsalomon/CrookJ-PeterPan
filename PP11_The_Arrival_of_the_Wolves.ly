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
<< {
	s4.\f			s8	|
} {
	\repeat volta 2 {
	s2*16
	}
} >>
	s2
	\bar "|."
}

upper = \relative c {
	\clef treble
	\global

\repeat volta 2 {

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
}									||||

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

	<e e'>2\fermata							|
}

lower = \relative c {
	\clef bass
	\global

\repeat volta 2 {

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
}									||||

<< { \voiceOne
	g'16->(	fs	e8)		g4				|%=
	a16->(	g	fs8)		a4				|%=
	b16->(	a	g8)		b4				|%=
	c16->(	b	a8)		c4				|%=
} \new Voice { \voiceTwo
	e,2								|%=
	fs								|%=
	g								|%=
	a								|%=
} >> \oneVoice								||||

	\acciaccatura as8
	b[		b		b		b]		|
	b[		b		b		b]		|
<< { \voiceOne
	c16->(	b	a8)		c16->(	b	a8)		|%=
	b16->(	a	fs8)		b16->(	a	fs8)		|%=
} \new Voice { \voiceTwo
	a,		r		a		r		|%=
	b		r		b		r		|%=
} >> \oneVoice								||

}

<< {
	\repeat tremolo 4 { e,16 e' }					|
} \\ {
	\once \override MultiMeasureRest #'transparent = ##t
	R2_\fermataMarkup
} >>
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

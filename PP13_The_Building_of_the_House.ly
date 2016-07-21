\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Building of the House"
	style = "Song"
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Allegretto." 4 = 120

	\partial 8		s8\p	|
	s2*8
	\bar "||"

	s2*3
	s4.			%…
	\bar "||"
}

words = \lyricmode {
	I wish I had a darl -- ing house,
	The litt -- ’lest ev -- er seen,
	With fun -- ny lit -- tle red walls,
	And roof of mos -- sy green.

	With fun -- ny lit -- tle red walls,
	And roof of mos -- sy green.
}

upper = \relative c' {
	\clef treble
	\key g \major
	\time 2/4

\mergeDifferentlyDottedOn

\new Voice = "melody" {
\autoBeamOff
\voiceOne
							d8		|

	d		b'		a		g		|
	c		fs,		fs8.	 		fs16	|
<< {
	e8		d		fs8.			e16	|%=
\voiceTwo
	d4.						%…
} \new Voice { \voiceTwo
	c4				cs4				|%=
\voiceOne
	d8[		<g b>		<g b d>]	%…
} >> \voiceOne						d8		||

	e16	fs8.			g8		a		|
	g8		fs4				a8		|
	b		g		cs		a		|
<< { \voiceTwo
	d4.						%…
} \new Voice { \voiceOne
	s8		<d fs a>[	<fs a d>]	%…
} >> \voiceOne						d,		|

	c'!16	c8.			b8		fs		|
	a8		g4				e8		|
	d		b'		a		d,		|
<< { \voiceTwo
	g4.						%…
} \new Voice { \voiceOne
	g8[		<b d>		<b d g>]	%…
} >> \voiceOne						%…
}
}

lower = \relative c {
	\clef bass
	\key g \major
	\time 2/4
							r8		|

	g8		<d'g b>[	q		q]		|
	a		<d fs c'>[	q		q]		|
<< { \voiceOne
	a'4				as				|%=
	b8[		<g b>		<g b d>]	%…
} \new Voice { \voiceTwo
	d2~								|%=
	<g, d'>4					%…
} >> \oneVoice						r8		||

	e8		<e'g b>4			q8		|
	a,8		<fs'a d>4			q8		|
	e8		<g b d>		a,		<g'a cs>	|
	<d fs a d>	<a a'>[		<d, d'>]	r		|

	ds'8		<a' b>		b,		q		|
	e		<g b>		cs,		as'		|
	d,[		q		d		<fs c'>]	|
	<g b>[		d		g,]		%…
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
	<<
		\new Lyrics = "words"
		\new Staff = "upper" \upper
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" \lower
		\context Lyrics = "words" {
			\lyricsto "melody" \words
		}
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
		\new Lyrics = "words"
		\new Staff = "upper" <<
			\upper
			\dynamics
		>>
		\new Staff = "lower" <<
			\lower
			\dynamics
		>>
		\context Lyrics = "words" {
			\lyricsto "melody" \words
		}
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

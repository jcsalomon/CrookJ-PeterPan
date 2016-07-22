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

				s8\mf	|
	s2*35
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
} >> 							%…
}
\oneVoice
							<b d>8		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<g b d>[	q		q		q]		|
	<g b>[		<b d>		<b e>		<g b>]		|
	<a c>[		q		q		q]		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<c e>[		q		q		q]		|
	<d fs>[		<c e>		<b d>		<as cs>]	|
	<b e>[		<b d>		q		q]		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<b d>[		q		q		q]		|
	<g b>[		<b d>		<b e>		<gs b>]		|
	<a c>[		q		q		q]		|

	<d fs>[		<c e>		<b d>		<a c>]		|
	<fs as>[	<g b>		<b g'>		<g b>]		|
	<g e'>[		<g a>		<fs d'>		<d fs>]		|
	<d a'>[		<d g>		q		q]		|

	<b' d g>[	q		<g b d>		<g b>]		|
	<e g d'>[	<e g c>		q		q]		|
	<gs b e>[	q		<e gs b>	<e gs>]		|
	<c e b'>[	<c e a>		q		q]		|

<< { \voiceOne
	<a' d>[		<a c>		<a d>		<a c>]		|%=
	<g c>[		<g b>		q		q]		|%=
} \new Voice { \voiceTwo
	e4				ef				|%=
	d4				%…
} >> \oneVoice								||
	<fs b>8[	<fs a>		<fs d'>		<fs b>]		|
	<g as>[		<g b>		<g e'>		<g d'>]		|

	<b d g>[	q		<g b d>		<g b>]		|
	<e g d'>[	<e g c>		q		q]		|
	<gs b e>[	q		<e gs b>	<e gs>]		|
	<c e b'>[	<c e a>		q		q]		|

<< { \voiceOne
	<a' d>[		<a c>		<a d>		<a c>]		|%=
	<g c>[		<g b>		q		q]		|%=
} \new Voice { \voiceTwo
	e4				ef				|%=
	d4				%…
} >> \oneVoice								||
	<fs b>8[	<fs a>		<fs d'>		<fs b>]		|
	<b, g'>		%
\voiceOne
\tuplet 3/2 8 {		g''16([ a g]	fs[ g fs]	e[ fs e]	|
}

\tuplet 3/2 8 {
	d[ e d]		c[ d c]		b[ c b]		a[ b a]		|
}	g8		%…
\oneVoice
\tuplet 3/2 8 {		g16[ a g]	fs[ g fs]	e[ fs e]	|
	d[ e d]		c[ d c)]	%…
}					b8		<c d>		|

	\key c \major
	\time 6/8
	<g g'>2.
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
	<g b>[		d		g,]		r		|

	g		<g' b d>	d,		q		|
	g		q		<e' e'>->	<d d'>->	|
	g,		<g' b d>	d,		q		|
	g		<fs' c' d>	<e e'>->	<d d'>->	|

	g,		<fs' c' d>	d,		q		|
	g		q		<fs' fs'>->	<e e'>->	|
	d,[		d'		d'		d,]		|
	g,		<g' b d>	<e e'>->	<d d'>->	|

	g,		<g' b d>	d,		q		|
	g		<fs' c' d>	<e e'>->	<d d'>->	|
	g,		<g' b d>	d,		<gs' b e>	|
	a,		<a' c e>	<fs fs'>->	<e e'>->	|

	c,[		c'		<a' c>		c,]		|
	d,[		d'		<b' d>		d,]		|
	d,		<g' a cs>	d,		<ds' fs c'>	|
	g,		<g' b>		<a, a'>->	<g g'>->	|

	g[		<f' g b>	<g b d>		<f g b>]	|
	c,		<e' g c>	<d d'>->	<c c'>->	|
	e,[		<e' gs b>	<gs b d>	<e gs b>]	|
	a,		<e' a>		<b b'>->	<a a'>->	|

	c		<e a c>		c		<ef a c>	|
	d		<g b>		<c, c'>->	<b b'>->	|
	<d d,>		<d a' c>[	q		q]		|
	<g cs>		<g d'>		<as, as'>->	<b b'>->	|

	g[		<f' g b>	<g b d>		<f g b>]	|
	c,		<e' g c>	<d d'>->	<c c'>->	|
	e,		<e' gs b>	<gs b d>	<e gs b>	|
	a,		<e' a>		<b b'>->	<a a'>->	|

	c		<e a c>		c		<ef a c>	|
	d		<g b>		<c, c'>->	<b b'>->	|
	<d, d'>		<fs' c' d>	d,		<d' fs a c>	|
	<g, g'>		%…
\change Staff = "upper" \voiceTwo
			<b'' d>[	<a c>		<g b>]		|

	<fs a>[		<e g>		<d g>		<c d e>]	|
	<b d>		%…
\change Staff = "lower" \oneVoice
			<bf df>[	<a c>		<g b>]		|
	<fs a>		<e g>		<d g>		<d fs>		|


	\key c \major
	\time 6/8
	g,	r	r	r4		r8	|
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

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Song of the Pirates"
	style = "Song"
}

global = {
	\key d \major
}

dynamics =  {
	\time 2/4

	\set Score.tempoHideNote = ##t
	\tempo "Moderato." 4 = 110

	s8\f	s4		%…
	\bar "||"

				s8	|
	s2*7
	s4.			%…
	\bar "||"

	% Switch from 2/4 time with one eighth-note left in the measure
	% to 6/8 time, still with one eighth-note left in the measure:

	% Print the new time signature
	\time 6/8

	% Fake `\partial 8`
	\set Timing.measureLength = #(ly:make-moment 1 8)
						s8	|

	% Actually set the new time signature
	\set Timing.measureLength = #(ly:make-moment 6 8)

	s2.*16
	\bar "|."
}

words = \lyricmode {
	Yo ho! Yo ho! the Pi -- rate life,
	The flag, the skull and bones,
	A mer -- ry hour, a hem -- pen rope,
	and hey for Da -- vy Jones.

	A -- vast! Be -- lay! Yo Ho! Heave Ho!
	A -- pir -- at -- ing we go, __
	And if we’re par -- ted by a shot,
	We’re sure to meet be -- low.

	A -- vast! Be -- lay! Yo Ho! Heave Ho!
	A -- pir -- at -- ing we go,
	And if we’re par -- ted by a shot,
	We’re sure to meet be -- low.
}

melody = \relative c'' {
	\voiceOne
	\autoBeamOff
	s8*3						a8		|
	d8		cs		d		cs16[	b]	|
	a8		g		fs		a		|
	b8		a		g		fs		|
	e4.						%…

							e8		|
	<a, d fs>8	a'		<d, e gs>	b'		|
	<a, e' a>8	cs'		<d, fs b>	d'		|
	<e, a cs>8	b'16[	a]	<d, gs b>8	<d e>		|
	<cs a'>4.					%…

						a'8	|
	<d, d'>4	<cs a'>8 <d d'>4	<cs a'>8|
	<d d'>4		<cs a'>8 <d d'>4	cs'8	|
	<d, b'>4	<d a'>8	<cs g'>4	<d fs>8	|
	e4.~			e4		%…

						fs8	|
	g4		b8	e,4		b'8	|
	a4		fs8	d'4		d8	|
	<e, a cs>4	a8	<e gs b>4	e8	|
\oneVoice <cs a'>4.~		q8	r8	%…

	\voiceOne				a'8	|
	<d, fs a d>4	<cs a'>8 <d d'>4	<cs a'>8|
	<d d'>4		<cs a'>8 <d d'>4	cs'8	|
	<d, b'>4	<d a'>8	<cs g'>4	<d fs>8	|
	e4.~			e4		%…

						fs8	|
	<cs g'>4	b'8	<cs,e>4		b'8	|
	<d, a'>4	fs8	<d fs d'>4	fs8	|
	<fs a>4		<e g>8	<d fs>4		<cs e>8	|
	d4.			<d fs a d>4->	%…

	\oneVoice 				r8	|
}

upper = {
	\clef treble
	\global
<< {
} \new Voice = "melody" \melody
>>
}

lower = {
	\clef bass
	\global
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
			midiInstrument = #"acoustic grand"
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
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

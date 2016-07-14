\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "Lullaby"
	subtitle = "from “Peter Pan”"
	mutopiatitle = "Lullaby from “Peter Pan”"
	style = "Song"
	poet = "Words 17ᵗʰ Century"
}

global = {
	\key d \major
	\time 6/8
}

dynamics =  {
	\set Score.tempoHideNote = ##t

\repeat unfold 2 {
	\tempo 4 = 60

	s2.*2
	\bar "||"

	s2.*8
	\bar "||"

	s2.*2
	s4		s8\<	s4		s8\!	|
	s4\>		s8	s4.\!			|
	s2.*4
	\bar "||"

	\tempo "Piu Lento" 4 = 40
	s2.*4
	\bar "||"
}
	\bar "|."
}

melody = \relative c' {
	\clef treble
	\global

\repeat unfold 2 {
	R2.*2						||

	fs4		fs8	a4		a8	|
	g4		g8	b4.			|
	a4		a8	cs4		cs8	|
	b4		g8	e4.			|

	fs8	fs	fs	a4		a8	|
	g4		g8	b4		b8	|
	a8[(	d])	b	a4		fs8	|
	e4		a8	d,4		r8	|

	fs4		cs'8	cs[(	b])	a8	|
	gs4		a8	fs4.			|
	fs4		cs'8	cs[(	b])	a8	|
	cs4		b8	a4.			|

	fs8	fs	fs	a4		a8	|
	g4		g8	b4		b8	|
	a8[(	d])	b	a4		fs8	|
	b4		a8	d,4.			|

	a'4		b8	a4.			|
	a4		a8	d4.~			|
	d2.~						|
	d2.\fermata					|
}
}

words = \lyricmode {
	Gold -- en slum -- bers kiss your eyes,
	Smiles a -- wake you when you rise,
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Care you know not, there -- fore sleep,
	While I o’er you watch do keep,
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Lul -- la -- by,
	lul -- la -- by. __

	May your dreams be al -- ways bright,
	An -- gels guard you through the night,
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Nought can harm you, have no fear,
	I will guard you, mo -- ther’s near.
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Lul -- la -- by,
	lul -- la -- by. __
}

upperOne = \relative c' {
	<fs a>8(<e b'>	<g cs>	<fs d'>	<g b>	<fs a>	|
	<d g>8	<cs e>4		<d a'>4.)		|
}

upperTwo = \relative c' {
	s2.*2						||
}

upper = {
	\clef treble
	\global
<<
	\upperOne
	\\
	\upperTwo
>>
}

lowerOne = \relative c' {
	a8	g	a	b	cs	d	|
	b8	a	g	fs4.			|
}

lowerTwo = \relative c {
	d2.~						|
	d8	a4		d4.			|
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
	<<
		\new Staff
		\with {
		}
		{
			\new Voice = "melody" {
				\autoBeamOff
				\melody
			}
		}
		\new Lyrics {
			\lyricsto "melody" \words
		}
		\new PianoStaff
		\with {
		}
		<<
			\new Staff = "upper" \upper
			\new Dynamics = "dynamics" \dynamics
			\new Staff = "lower" \lower
		>>
	>>
	\layout {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

\score {
	<<
		\new Staff
		\with {
			midiInstrument = #"clarinet"
		}
		{
			\new Voice = "melody" <<
				\melody
				\dynamics
			>>
		}
		\new Lyrics {
			\lyricsto "melody" \words
		}
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
	>>
	\midi {
		\context {
			\PianoStaff
			\accepts Dynamics
		}
	}
}

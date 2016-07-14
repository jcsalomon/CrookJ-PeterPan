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
	\tempo 4 = 60

	s2.*2
	\bar "||"
}

melody = \relative c' {
	\clef treble
	\global

	R2.*2						||

	fs4		fs8	a4		a8	|
	g4		g8	b4.			|
	a4		a8	cs4		cs8	|
	b4		g8	e4.			|

	fs8	fs	fs	a4		a8	|
	g4		g8	b4		b8	|
	a8[(	d])	b	a4		fs8	|
	e4		a8	d,4		r8	|
}

words = \lyricmode {
	Gold -- en slum -- bers kiss your eyes,
	Smiles a -- wake you when you rise,
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.
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

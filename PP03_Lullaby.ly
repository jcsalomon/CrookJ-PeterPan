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

melody = {
	\clef treble
	\global
}

words = \lyricmode {
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

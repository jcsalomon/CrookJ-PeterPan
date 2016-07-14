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

\repeat volta 2 {
	\bar ".|:"
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
	s2.*3
} \alternative {
	{ s2. } { s2. }
}
	\bar "|."
}

melody = \relative c' {
	\clef treble
	\global

\repeat volta 2 {
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
} \alternative {
	{
	d2.\fermata					|
	} {
	d2.\repeatTie					|
	}
}
}

wordsOne = \lyricmode {
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
}

wordsTwo = \lyricmode {
	May your dreams be al -- ways bright,
	An -- gels guard you through the night,
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Nought can harm you, have no fear,
	I will guard you, mo -- ther’s near.
	Sleep, pret -- ty dar -- ling, do not cry,
	And I __ will sing a lul -- la -- by.

	Lul -- la -- by,
	lul -- la -- by. __ _
}

upperOne = \relative c' {
\repeat volta 2 {
	\voiceOne
	<fs a>8(<e b'>	<g cs>	<fs d'>	<g b>	<fs a>	|
	<d g>8	<cs e>4		<d a'>4.)		|

	fs4.(			a			|
	g			b)			|
	a4.(			cs			|
	b4		g8	e4.)			|

	fs4.(			a			|
	g			b)			|
	a4(		g8	fs4)		\oneVoice r8	|
	<cs e>4._(^(		d4))		r8	|

	\voiceOne
	<a cs fs>4	<a' cs>8q(	<gs b>	<fs a>	|
	gs4		a8	fs4.)			|
	\oneVoice
	fs4		cs'8	cs(	b	a)	|
	cs4(		b8	a4.)			|

	\voiceOne
	fs4.(			a			|
	g			b)			|
	a4(		g8	fs4)		\oneVoice r8	|
	<cs e>4._(^(		d4.))			|

	<g, a cs e>2.~					|
	q4.			d'4.~			|
	d2.						|
} \alternative {
	{
	d2.\fermata					|
	} {
	d2.						|
	}
}
}

upperTwo = \relative c' {
\repeat volta 2 {
	\voiceTwo
	s2.*2						||

	d2.(						|
	d4.)			cs			|
	d2.(						|
	d4.)			cs			|

	d2.(						|
	d4.)			s			|
	d4.(			d4)		s8	|
	s2.						|

	s2.						|
	es4.			fs			|
	s2.						|
	s2.						|

	d2.(						|
	d4.)			s			|
	d4.(			d4)		s8	|
	s2.						|

	s2.*4						||||
}
}

upper = {
	\clef treble
	\global
<<
	\upperOne
	\new Voice \upperTwo
>>
}

lowerOne = \relative c' {
\repeat volta 2 {
	\voiceOne
	a8	g	a	b	cs	d	|
	b8	a	g	fs4.			|

	a2.(						|
	a)						|
	a(						|
	g)						|

	a2.(						|
	a)						|
	s						|
	s						|

	\oneVoice
	<fs fs,>4		r8	%…
	\voiceOne		cs'8(	d	cs	|
	\oneVoice
	<b cs,>4.)		<a fs>			|
	\voiceOne
	<a cs>2.					|
	q4(		<gs d'>8cs4.)			|

	a2.(						|
	a)						|
	s						|
	s						|

	a,8	a	a	a	a	a	|
	a	a	a	<fs' a>(<g b>	<fs a>	|
	<g b>	<fs a>	<g b>	<fs a>	<g b>	<fs a>)	|
} \alternative {
	{
	q2.\fermata					|
	} {
	q2.						|
	}
}
}

lowerTwo = \relative c {
\repeat volta 2 {
	\voiceTwo
	d2.~						|
	d8	a4		d4.			|

	d4.			fs			|
	e			g			|
	fs2.						|
	e4.			a,			|

	d4.(			fs			|
	e			g)			|
	\oneVoice
	<fs a>4(	<g b>8	a4)		r8	|
	<g a,>4.^(_(		<fs d>4))	r8	|


	\voiceTwo
	s4.			fs4.			|
	s2.			|
	fs4.(			f)			|
	e4.(			a4.)			|

	d,4.(			fs			|
	e			g)			|
	\oneVoice
	<fs a>4(	<g b>8	a4)		r8	|
	<g a,>4.^(_(		<fs d>4.))		|

	\voiceTwo
	d,2.(						|
	d4.)			<d d'>~			|
	q2.						|
} \alternative {
	{
	q2.\fermata					|
	} {
	q2.						|
	}
}
}

lower = {
	\clef bass
	\global
<<
	\lowerOne
	\new Voice \lowerTwo
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
		\new Lyrics \lyricsto "melody" \wordsOne
		\new Lyrics \lyricsto "melody" \wordsTwo
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
		\new Lyrics \lyricsto "melody" \wordsOne
		\new Lyrics \lyricsto "melody" \wordsTwo
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

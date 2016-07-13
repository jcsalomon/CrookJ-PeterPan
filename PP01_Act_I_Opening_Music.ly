\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "Act I"
	subtitle = "Opening Music"
	mutopiatitle = "Act I Opening Music"
%	style = "Incidental"
}

global = {
	\key d \major
	\time 6/8
}

dynamics =  {
	\set Score.tempoHideNote = ##t
	\tempo "Allegro vivo." 4 = 120

	s8\f	s8*5					|
	s2.*3
}

upperOneToFour = \relative c' {
	<fs d'>8e'	q	<fs, cs'>4	q8	|
	<fs b>4		q8	q4		<fs a>8	|
	<e g>8	a	q	<ds, fs>4	q8	|
	e4		e8	e4		d!8	|
}

upper = {
	\upperOneToFour
}

lowerOneToFour = \relative c {
	<d a'>8[r	q]	<d as'>4	q8	|
	<d b'>4		q8	<ds b'>4	q8	|
	<e b'>8[r	q]	<fs b>4		q8	|
<< { \voiceOne
	b4		b8	b4		b8	%|
} \new Voice { \voiceTwo
	g8	e	fs	g4		g8	%|
} >>							|
\oneVoice
}

lower = {
	\lowerOneToFour
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
	<<
		\new Staff = "upper" { \clef treble \global \upper }
		\new Dynamics = "dynamics" \dynamics
		\new Staff = "lower" { \clef bass \global \lower }
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
			{ \global \upper }
			\dynamics
		>>
		\new Staff = "lower" <<
			{ \global \lower }
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

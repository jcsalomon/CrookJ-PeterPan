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

	s2.*3
	s8	s8\<	s8*2		s8\!	s8	|
}

upperOneToFour = \relative c' {
	<fs d'>8e'	q	<fs, cs'>4	q8	|
	<fs b>4		q8	q4		<fs a>8	|
	<e g>8	a	q	<ds, fs>4	q8	|
	e4		e8	e4		d!8	|
}

upperFive = \relative c' {
<< { \voiceOne
	cs8	e	b'	a	b	cs	%|
} \new Voice { \voiceTwo
	cs,4.			d4		g8	%|
} >> \oneVoice						|
}

upperFiveToEight = \relative c'' {
	\upperFive					|
<< { \voiceOne
	d8	cs	d	fs4->\arpeggio	e8	%|
	d8	cs	b	cs4->		b8	%|
} \new Voice { \voiceTwo
	fs8	g	fs	e4.\arpeggio		%|
	fs4.			gs			%|
} >> \oneVoice						|||
	a8	a	gs	g	fs	e	|
}

upperNineToTwelve = \upperOneToFour

upperThirteenToSixteen = \relative c'' {
	\upperFive					|
<< { \voiceOne
	d8	fs	g	a	fs	d	%|
} \new Voice { \voiceTwo
	fs,4		g8	a4.			%|
} >> \oneVoice						|
	<d, g b>4	<g b e>8<fs a d>4	<g a cs>8|
	<fs a d>4.~		q4		r8	|
}

upper = {
	\upperOneToFour
	\upperFiveToEight
	\upperNineToTwelve
	\upperThirteenToSixteen
}

lowerOneToFour = \relative c {
	<d a'>8[r	q]	<d as'>4	q8	|
	<d b'>4		q8	<ds b'>4	q8	|
	<e b'>8[r	q]	<fs b>4		q8	|
<< { \voiceOne
	b4		b8	b4		b8	%|
} \new Voice { \voiceTwo
	g8	e	fs	g4		g8	%|
} >> \oneVoice						|
}

lowerFive = \relative c' {
	<g a>4		q8	<fs a>4		<e a>8	|
}

lowerFiveToEight = \relative c' {
	\lowerFive					|
<< { \voiceOne
	a4.			as			%|
	b4.~			b8	e	d	%|
	cs8	s8*5					%|										|
} \new Voice { \voiceTwo
	d,8	e	d	cs4.			%|
	b8	cs	d	e4.			%|
	a8	a,	b	cs	d	e	%|
} >> \oneVoice						|||
}

lowerNineToTwelve = \lowerOneToFour

lowerThirteenToSixteen = \relative c {
	\lowerFive					|
	<d a' d>4	<e a cs>8<fs a d>4.		|
	g4		e8	a4		a,8	|
	d4		a8	d,4		r8	|
}

lower = {
	\lowerOneToFour
	\lowerFiveToEight
	\lowerNineToTwelve
	\lowerThirteenToSixteen
}

\score {
	\new PianoStaff
		\with {
			instrumentName = #"Piano"
			connectArpeggios = ##t
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

\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Lagoon"
%	style = "Incidental"
}

dynamics = {
	\set Score.tempoHideNote = ##t
	\tempo "Moderato e tranquillo." 4 = 108

	\partial 4				s4\mf	|
	s1.*2	||
	s8\<	s8*4	s8\!	s2.			|
	s1.	|

	s1.*4	||||

	s8\<	s8*3	s8\!	s8*2	s8\>	s8*3	s8\!	|
}

melody = {
	\clef treble
	\key a \minor
	\time 6/4
	\partial 4				s4	|
	s1.*9
}

words = \lyricmode {
}

upper = {
	\clef treble
	\key a \minor
	\time 6/4
}

lower = \relative c {
	\clef bass
	\key a \minor
	\time 6/4

	\partial 4				r4	|

	a4	<a' c>	q	<f a b>2.		|
	a,4	<e' a>	q	<f a>2		r4	|
<< {
	a,4	e'	e	e	e	e	|%=
	b	e	e	e	e	e	|%=
} \\ {
	a,2.			e			|%=
	b'			e,			|%=
} >>							||

	a4	<e' a c e> q	<f a b d> q	q	|
	a,	<e' a c e> q	<fs g d'> q	r	|

<< {
	a,4	e'	e	e,	e'	e	|%=
	e	e	e	%…
} \\ {
	a,2.			e			|%=
	e			%…
} >>			\stemUp	<a e' a>8( e' c b c b)	|| \stemNeutral

	a(  e'  a   c   e   d   c   b   a   e   c   b)	|
}

pedal = {
	\partial 4				s4	|
	s1.*8	|||| ||||
	s8\sustainOn	s8*10			s8\sustainOff	|
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
		\new Lyrics \lyricsto "melody" \words
		\new PianoStaff
		\with {
			instrumentName = #"Piano"
		}
		<<
			\new Staff = "upper" \upper
			\new Dynamics = "dynamics" \dynamics
			\new Staff = "lower" \lower
			\new Dynamics = "dynamics" \pedal
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
		\new Lyrics \lyricsto "melody" \words
		\new PianoStaff
		\with {
			midiInstrument = #"acoustic grand"
		}
		<<
			\new Staff = "upper" <<
				\unfoldRepeats\upper
				\dynamics
				\pedal
			>>
			\new Staff = "lower" <<
				\unfoldRepeats\lower
				\dynamics
				\pedal
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

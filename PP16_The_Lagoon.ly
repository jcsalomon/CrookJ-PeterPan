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

lower = {
	\clef bass
	\key a \minor
	\time 6/4
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

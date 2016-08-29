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
	\time 6/4

	\partial 4				s4\mf	|
	s1.*2	||
	s8\<	s8*4	s8\!	s2.			|
	s1.	|

	s1.*4	||||

	s8\<	s8*3	s8\!	s8*2	s8\>	s8*3	s8\!	|

	s8\p	s8*11					|
	s1.*7
	s2.			s4\p	s2		|
	s2.			s2		s8\f s	|
	\bar "||"

	\tempo "Allegretto." 4 = 115
	\time 3/4
	s2.*3
	\set Timing.measureLength = #(ly:make-moment 2 4)
	s2 |
	\bar "||"
}

note =
#(define-scheme-function
  	(text)
  	(string?)
  (markup
   #:left-align (#:larger (#:caps text))))

melody = \relative c' {
	\autoBeamOff
	\clef treble
	\key a \minor
						s4	|
	s1.*9

	r2		r4	r2		e8^\note "mermaid sings." %…
						    e	|
	a4	a	c8  b   a   gs	a4	a8[(b])	|
	c4	c	e8  d	c[( b]	c4)	e	|

	b8. b16	b4	b	d	c	b8  c	|
	a4.	    c8	b   a	gs4(	e'	gs,	|
	fs	e'	fs,	e)	e'\fermata e,8 e|

	a4	a	c8  b	a[  gs]	a4	a8[ b]	|
	c8  c	c4	d	e2\fermata	c8  b	|
	b8  a	c4.	    a8	a   g	c4.	    g8	|
	fs4	r8  fs	g   a	g4	r4	r4	|

	R2.*3
	R2 |
}

words = \lyricmode {
	When the wa -- ters of the nev -- er -- land
		are __ na -- ked to the moon, __
	Then wakes the fair mer -- maid -- en
		from her slepp in the La -- goo -- oon,
	And I raise my cor -- al mir --  ror
		my __ droop -- ing locks to tend,
	But the part of me I’m proud -- est of,
		is at the o -- ther end.
}

upper = \relative c' {
	\clef treble
	\key a \minor

						e4\(	|
	e2.			d2\trill	c8  d	|
	c2.			b2\trill\)	a8( b)	|

	a-. b-. c-. <b d>-. <c e>-. <a fs'>-.
				<b gs'>-. <c a'>-. <d b'>-.
					<e c'>-. <fs d'>-. <a ds>-.	|
<< {
	<gs e'>1.					|%=
} \\ {
	r8  e   gs  b   e   gs  b   gs  e   b   gs! e	|%=
} >>							|

	<a c e>2.\(		%…
<< {
				d2\trill	c8  d	|%=
} \\ {
				<a c>2.			|%=
} >>							|
	c2.			b2\trill\)	a8  gs	|

	a-. b-. c-. <b d>-. <c e>-. <a fs'>-.
				<b gs'>-. <c a'>-. <d b'>-.
					<e c'>-. <fs d'>-. <a ds>-.	|
	<gs e'> d'! b  gs e  e'	<a,, c e a>4	r4  r4	|

	r2		r4	\acciaccatura ds8 <a c e>2->	r4	|
	r2		r4	\acciaccatura ds8 q2->		r4	|

	r4	r	%…
<< {			c8( b	a   gs	a4)	%…
} \\ {			e2(		c4)	%…
} >>						r4	|
	r4	r	%…
<< {			c'8(b	a   gs	a4)	%…
} \\ {			e2(		<c e>4)	%…
} >>						r4	|

	<d e b'>2	r4	<c e a>2	r4	|
	<ds a'>2.		<e gs>			|
	<d fs>			<e gs>2\fermata	r4	|

	r2		%…
<< {			c'8(b	a   gs	a4)	%…
} \\ {			e2(		c4)	%…
} >>						r4	|
	<e c'>4	<e c'>	<d d'>	%…
<< {				e'2		c8  b	|%=
} \\ {				e,2.			|%=
} >>							|

	<f a>4	r	r	<c c'>	r	r	|
	<c fs>	r	r	<b g'>	r	<b' d g>8 q	|

	<a c f>8-.^\note"she waggles her tail."
	          <f a c>-. <c f a>-. <f a c>-. <a c f>-. <f a c>-.	|
	<g c e>-. <e g c>-. <c e g>-. <e g c>-. <g c e>-. <e g c>-.	|
	<g b d>-. <d g b>-. <b d g>-. <d g b>-. <g b d>-. <d g b>-.	|

	<b' d g>4	<b, d g>	|
}

lower = \relative c {
	\clef bass
	\key a \minor

						r4	|

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
	a(  e'  a   c   e   d   c   b   a   e   c   b)	|
	a(  e'  a   c   e   d   c   b   a   e   c   b)	|
	a(  e'  a   c   e   d   c   b   a   e   c   a)	|

	\acciaccatura { \slurUp e }
	e'( gs  b   d   b   gs) e(  a   c   e   gs,! a)	|
<< {
	c2\arpeggio	b8  a	b2.			|%=
	a2.			b2\fermata	r4	|%=
} \\ {
	f,2\arpeggio	s4	e'2.~			|%=
	e1.						|%=
} >>							||

	a,8(e'  a   c   e   d   c   b   a   e   c   b)	|
	<a a'>4	<a' c>	<f a>	%…
<< {				g2\fermata	gs4	|%=
} \\ {				c,2.			|%=
} >>							|
	<f a>4	r	r	<e g>	r	r	|
	<d a'>	r	r	<g, g'>	r	r	|

<< \repeat unfold 3 {
	r4		g		g		|%=
} \\ \repeat unfold 3 {
	g,2.						|%=
} >>							|||
	<g g'>4		q		|
}

pedal = {
						s4	|
	s1.*8	|||| ||||
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|

	s1.*3	|||
	s8\sustainOn	s8*10			s8\sustainOff	|
	s1.*3	|||

	s2.*4
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
			connectArpeggios = ##t
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

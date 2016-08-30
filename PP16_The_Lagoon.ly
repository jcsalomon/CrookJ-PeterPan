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

	\time 6/8
	\set Timing.measureLength = #(ly:make-moment 2 8)
					s8	%…
	\tempo "Con gratia." 4 = 112
						s8\p	|
	\set Timing.measureLength = #(ly:make-moment 6 8)
	<>-\markup "legato."
	s2.*3
	s4		s8\f	s4		s8\p	|
	s2.*3
	s4		s8\f	s4		s8\p	|
	<>-\markup "un poco animato."
	s2.*6
	s8\<	s8	s8\!	s8\>	s8	s8\!	|
	s2.*4
	s4		s8\f	s4		s8\p	|
	\bar "||"

	\tempo "Piu vivo." 4 = 118
	\time 3/4
	<>\mf
	s2.*7
	s4\<	s4	s4\f	|
	s2.*8
	\bar "||"
}

note =
#(define-scheme-function
  	(text)
  	(string?)
  (markup
   #:left-align text))

melody = \relative c' {
	\autoBeamOff
	\clef treble
	\key a \minor
						R4	|
	R1.*9

	r2		r4	r2		<>^\note "MERMAID SINGS."
						e8    e	|
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

	s8

						g8	|
	a4		b8	c4		g8	|
	a4		b8	c4		e8	|
	b4		c8	a4		b8	|
	e,4.~			e8	r8	g8	|

	a4		b8	c4		g8	|
	a4		b8	c4		c8	|
	b4		g8	b4		b8	|
	e,4.~			e8	r8	%…

<< { \voiceOne					<>^\note "CHORUS OF MERMAIDS"
						e8	|%=
	f4		g8	a4		d,8	|%=
	e4		f8	g4		g8	|%=
	g4		a8	bf4		e,8	|%=
	a4.~			a4		a8	|%=

	a4		b8	c4		fs,8	|%=
	g4(		a8)	b4		b8	|%=
	b4		c8	d4		c8	|%=
	b4.~			b8	%…
} \new Voice { \voiceTwo
						e,8	|%=
	d4		e8	f4		b,8	|%=
	c4		d8	e4		e8	|%=
	e4		f8	g4		cs,8	|%=
	f4.~			f4		f8	|%=

	fs4		g8	a4		ds,8	|%=
	e4(		fs8)	g4		g8	|%=
	g4		f8	d4		f8	|%=
	g4.~			g8	%…
} >> \oneVoice				r8	g8	|||| ||||

	a4		b8	c4		g8	|
	a4		b8	c4		d8	|
	c4		a8	b4		g8	|
	c4.~			c8	r8	r8	|

	R2.*16
}

words = \lyricmode {
	When the wa -- ters of the nev -- er -- land
		are __ na -- ked to the moon, __
	Then wakes the fair mer -- maid -- en
		from her slepp in the La -- goo -- oon,
	And I raise my cor -- al mir -- ror
		my __ droop -- ing locks to tend,
	But the part of me I’m proud -- est of,
		is at the o -- ther end.

	The mer -- maid’s tail,
	The mer -- maid’s tail,
	It fans us when we’re hot, __
	We whisk it thus! if we are pleas’d,
	and so! if we are not,

	When swim -- ming thro’ the green la -- goon,
	We hoist it as a sail,
	And when we take to flirt -- __ ing,
	It fas -- cin -- ates the male.

	No la -- dy e’er would dress in skirts
	if she could show a tail. __
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
<< {				e'2\fermata	c8  b	|%=
} \\ {				e,2.			|%=
} >>							|

	<f a>4	r	r	<c c'>	r	r	|
	<c fs>	r	r	<b g'>	r	<b' d g>8 q	|

	<>^\note"SHE WAGGLES HER TAIL."
	<a c f>8-.<f a c>-. <c f a>-. <f a c>-. <a c f>-. <f a c>-.	|
	<g c e>-. <e g c>-. <c e g>-. <e g c>-. <g c e>-. <e g c>-.	|
	<g b d>-. <d g b>-. <b d g>-. <d g b>-. <g b d>-. <d g b>-.	|

	<b' d g>4	<b, d g>	|

	s8

					<>\(	<c g'>8	|
	<c a'>4		<f b>8	<e c'>4		<c g'>8	|
	<c a'>4		<f b>8	<e c'>4	\)	g'8	|

	d4\(		e8	c4		d8\)	|
	e,4		%…
	\change Staff = "lower"	\voiceTwo	e,,32[(d e  d]	e4)
	\change Staff = "upper" \oneVoice	<c''g'>8|

	<c a'>4		<f b>8	<e c'>4		<c g'>8	|
	<c a'>4		<f b>8	<e c'>4		<e a c>8|
	<e g b>4	<e g>8	<ds fs b>4	q8	|
	e4		e32[(ds	e   ds]	e4)	e8	|

	<d f>4		<e g>8	<f a>4		<b, d>8	|
	<c e>4		<d f>8	<e g>4		q8	|
	q4		<f a>8	<g bf>4		<cs, e>8|
	<f a>4.~		q4		q8	|

	<fs a>4		<g b>8	<a c>4		<ds,fs>8|
	<e g>4		<fs a>8	<g b>4		b8	|
<< {
	b4		c8	d4		c8	|%=
} \\ {
	<d, f>2.					|%=
} >>							|
	<d f b>4.~		q8	r	<c g'>	|

	<c a'>4		<f b>8	<e c'>4		<c g'>8	|
	<c a'>4		<d e b'>8<c e c'>4	<c d a'>8|
	<c e g>4	r8	<b f' g>4	r8	|
	<e g c>4	c32([b	c   b]	c8) r8	g'16(a)	|

	b8	c	d	e	f	g	|
	f	e	d	c	b	a	|
	g4		g		g		|
	a2\trill			g8	a	|

	<>^\note "THE BOYS SWIM ON."
	b8	c	d	e	f	g	|
	f	e	d	c	b	a	|
	g4		g		g		|
	a2\trill			g8	a	|

\repeat unfold 2 {
	g8(	g')	d-.	b-.	g(	g')	|
	f,(	f')	c-.	af-.	f(	f')	|
}
	g,	g'	f	e	d	c	|
	b	a	g	fs	f	e	|
	d	c	b	a	g	a	|
	g	a	g	a	g	a	|
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

	s8

						e''8	|
<< {
	f4		d8	c	g'	e	|%=
	f4		d8	c	%…
} \\ {
	f8	g,	d'	c4		e8	|%=
	f8	g,	d'	c	%…
} >>					<e g c>4	||

	e,8	<gs' d' e>4	g,8	<a' c e>4	|
\voiceOne e4(	e32[ds	e   ds]	e4)		e8	| \oneVoice

<< {
	f4		d8	c	g'	e	|%=
	f	g,	d'	c	g'	a,	|%=
	b	b'	b,	b	b'	b,	|%=
} \\ {
	f'8	g,	d'	c4		e8	|%=
	f	g,	d'	c4		a8	|%=
	b4		b8	b4		b8	|%=
} >>							|||
	e4	e32[(ds	e   ds]	e4)		r8	|

	d8(	g4)		g,8(	g'4)		|
	c,8	g'4		g,8	g'4		|
	cs,8	a'4		a,8	a'4		|
	d,8	a'4		a,8	a'4		|

	ds,8	b'4		b,8	b'4		|
	e,8	b'4		b,8	b'4		|

<< {
	g8	g	g	af	af	af	|%=
} \\ {
	g,4.			af			|%=
} >>							|
	<g g'>4	<< d'8 \\ d >>	<g, g'>	r	e'	|

<< {
	f8	g,	d'	c	g'	e	|%=
} \\ {
	f8	g,	d'	c4		e8	|%=
} >>							|
	f4		gs8	<a, a'>4	<f f'>8	|
	<g g'>4		r8	q4		r8	|
	<c,c'>4	c'32[(b	c   b]	c8)	r	r	|

\repeat unfold 2 {
	<g' b f'>4	q		q		|
	<a c f>		q		q		|
	<b d f>		q		q		|
	<a c f>		q		q		|
}

	<g b f'>	<g b d>		q		|
	<af c d>	q		q		|
	<g b d>		q		q		|
	<af c d>	q		q		|

	<g b d>		r		r		|
	R2.*3
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
			\Staff
			\RemoveAllEmptyStaves
		}
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

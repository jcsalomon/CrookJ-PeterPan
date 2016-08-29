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

	\tempo "Allegretto." 4 = 116
	\time 3/4
	s2.*3
	\set Timing.measureLength = #(ly:make-moment 2 4)
	s2 |
	\bar "||"

	\time 6/8
	\set Timing.measureLength = #(ly:make-moment 2 8)
					s8	%…
	\tempo "Con gratia." 4 = 114
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

	\time 4/4
	<>\p
	s1*5
	\bar "||"

	\tempo "Allegro moderato." 4 = 120
	\time 2/4
	s8\f\>	s8	s8	s8	|
	s8	s8	s8	s8\p	|
	s2*7
	s4.			%…
	\bar "||"

				s8\mf	|
	s2*3
	s8	s8\mf	s8	s8\p	|
	s2*3
	s4.			%…
	\bar "||"

				s8	|
	s2*4
	<>\mf
	s2*4
	\bar "||"

	<>\ff
	s2*3
	s4.			%…
	\bar "||"

				s8	|
	s2*7
	s4.			%…
	\bar "||"

	<>\mf			s8	|
	s2*3
	\tempo 4 = 116
	<>-\markup "rit."
	s4.			s8\p	|
	s2				|
	s4.			%…
	\tempo 4 = 120
	<>-\markup "a tempo"
				s8	|
	s2
	s4.			%…
	\bar "||"

				s8	|
	s2*8
	\bar "||"

	\tempo "Piu moderato." 4 = 116
	\time 3/4
	<>\pp
	s2.*6
	\bar "||"

	\time 2/4
	s2*2
	\tempo "Lento." 4 = 48
	s4\<	s4\>	|
	s4	s4\!	|
	\bar "||"

	\tempo "Andante." 4 = 96
	\time 6/8
	s2.		|
	s4.\>	s4.\!	|
	s2.*14
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
	fs	e'	fs,	e)	%…
			\tempo 4 = 36	e'\fermata	\tempo 4 = 108
						e,8 e	|

	a4	a	c8  b	a[  gs]	a4	a8[ b]	|
	c8  c	c4	d	%…
		\tempo 4 = 54	e2\fermata	\tempo 4 = 108
						c8  b	|
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

	<>^\markup \left-align \column {\italic "RECITATIVE." "BABY MERMAID."}
	\xNotesOn
	r2				r8	g	g	g	|
	a4		r8	a	a	a	a	a	|
	b4		r		r		r8	b	|
	d4		g,		r		g8	d'	|
	g,4		r		r2				|
	\xNotesOff

	R2				|
	r4		r8	%…

	<>^\note "PETER."	g8	|
	c8	g	e	f16 g	|
	a8	f	d'	d16 c	|
	b8	a	g	f	|
	e4		r8	%…

				g8	|
	c8	g	e	f16[(g)]|
	a8	f	d'	c	|
	b8	a16 g	f8	d	|
	c4.			%…

	<>^\note "BOYS."	e16 fs	|
	g8	d16 d	a'8	g16[(a)]|
	b8	a16 g	d'8	g,16fs	|
	e16 fs	e8	c'	e,	|
	d4		r8	%…

	<>^\note "BABY."	d8	|
	g8	g16 b	a8	%…
	<>^\note "PETER."	a	|
	b8	b	c	b16 c	|
	d8	g,16b	a8	fs	|
	g4		r8	%…

	<>^\note "BABY."	g8	|
	g8	e	c'8.	    b16	|
	a8	f	d8.	    e16	|
	f8	b	b	a	|
	g4		r8	%…

	<>^\note "BOYS."	g8	|
	g8	e16 d	c   c	g'8	|
	a8	f16 e	d   d	a'  a	|
	g8	gs	a	b	|
	c4		r4		|

	R2*3
	r4		r8	%…

	<>^\note "PETER."	g8	|
	c8	g	e	f16[(g)]|
	a8	f	d'	d16[(c)]|
	b8	a	g	f	|
	e4		r8	%…

				g8	|
	c8	g	e	f16[(g)]|
	a8	f	d'	c	|
	b8	a16[(g)]f8	d	|
	c4		r8	%…

	<>^\note "BOYS."	e16[(fs)]|
	g8	d	a'	g16[(a)]|
	b8	a16[(g)]d'8	g,16[(fs)]|
	e[(fs)]	e8	d'	e,	|
	d4		r8	%…

	<>^\note "MERMAID."	d8	|
	g8	b	a	a	|
	b8	b	c	%…
	<>^\note "BABY."	b16[(c)]|
	d8	g,16[(b)]a8	fs	|
	g4		r8	%…

	<>^\note "MERMAID."	g8	|
	g8	e	c'8.	    b16	|
	a8	f	d8.	    e16	|
	f8	b	b	a	|
	g4		r8	%…

	<>^\note "BOYS."	g8	|
	g8	e16[(d)]c8	g'	|
	a8	f16[(e)]d8	a'	|
	g8	gs	a	b	|
	c4		r4		|
}

words = \lyricmode {
	When the wa -- ters of the nev -- er -- land
		are __ na -- ked to the moon, __
	Then wakes the fair mer -- maid -- en
		from her sleep in the La -- goo -- oon,
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

	Who tums this way?
	If mor -- tals I must go!
	Tum an -- swer!
	Legs, or tails?

	A mer -- man I,
	with my tail on high,
	In a way that most al -- lures,

	I hum -- bly wish,
	O __ fam -- ous fish,
	to pay my re -- spects to yours.

	We ac -- com -- pan -- y him and __ all of us swim,
	with our beau -- ti -- ful tails as lures.

	You’re aw -- ful -- ly cool
	I’m ra -- ther cool,
	With your tail I so want to play.

	Then please to write
	Ma -- ma to -- night,
	and ask her if I may.

	Yes, that would be bet -- ter,
	He’s writ -- ing the let -- ter,
	How we won -- der what he’ll say!

	Dear mer -- maid may
	your daugh -- ter play
	At __ tails to -- night with me?

	I wish she would
	and __ now con -- clude,
	With kind -- est __ wish -- es, P.

	That __ can -- not fail
	to __ pull her __ tail,
	What __ will __ the ans -- wer be?

	Dear sir, who wrote?
	Re -- ceived your note,
	Oh __ say that he may tum

	My leave you’ve got,
	Don’t make her hot,
	Yours faith -- ful -- ly, her mum.

	Oh luck -- y __ we,
	her tail to __ see,
	The mer -- maid bids us come.
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

<<
\repeat unfold 2 {
	b8	c	d	e	f	g	|
	f	e	d	c	b	a	|
	g4		g		g		|
	a2\trill			g8	a	|
}
{
	s2.*4
	<>^\note "THE BOYS SWIM ON."
}
>>

\repeat unfold 2 {
	g8(	g')	d-.	b-.	g(	g')	|
	f,(	f')	c-.	af-.	f(	f')	|
}
	g,	g'	f	e	d	c	|
	b	a	g	fs	f	e	|
	d	c	b	a	g	a	|
	g	a	g	a	g	a	|

	<b d g>1							|
	<a c ef fs>							|
	<g b d f! g>4	r4		r2				|
	R1*2								||

	r8		<g c e>[		r		q]	|
	r		q[			r	<g c e g>]	|

	c'8		g		e		f16	g	|
	a8[		f		d']		d16	c	|
	b8[		a		g		f]		|
	e8		e'16(	c)	<c e g>8	%…

							g8\noBeam	|
	c8		g		e		f16	g	|
	a8[		f		d'		c]		|
	b		a16	g	f8		d		|
	c		e16(	g	<e g c>8)	%…

							g16[	fs]	|
	g8		d16	d	<d fs a>8	g16	a	|
	<d g b>8	a16	g	<d g d'>8	%…
						<< {	g16	fs	}
						\\ {	ds8		} >> |
	e16	fs	<c e>8[		<c e c'>	<c e>]		|
	<c d>		a'16[(	d,]	d'8)		%…

							d,8\noBeam	|
	<d g>		r		<e a>		r		|
	<f b>		r		<c g' c>	r		|
	<d g d'>	<b e g>		<c e a>		<c d fs>	|
	<b d g>4~			q8		%…

							g'8		|
	g[		e		c'8.			b16]	|
	a8[		f		d8.			e16]	|
	f8[		b		b		a]		|
	g		e'16[(	c)]	g'8		%…

							r8		|
	<g,, c g'>	r		r		q		|
	<a c a'>	r		r		q		|
	<b f' g>	<b fs' g>	<b fs' a>	<b f' g>	|
	<e g d'>	r		<d' f a d>	%…

							r8		|
	c16	e	g	e	<c c'>4->			|
	c16	e	a	e	<c c'>4->			|
	c'16	g	e	c	<b e>8		<b d>		|
	c		r		<c e g c>->	%…

							r8		|
	c		g		e		f16	g	|
	a8[		f		d']		d16	c	|
	b8[		a		g		f]		|
	e		e'16_(	c	<c e g>8)	%…

							g8\noBeam	|
	c		g		e		f16	g	|
	a8[		f		d'		c]		|
	b		a16	g	f8		d		|
	c(		e16	g	<e g c>8)	%…

							e16	fs	|
	g8		d		<d fs a>	g16	a	|
	<d, g b>8	a'16	g	<d g d'>8	%…
						<< {	g16	fs	}
						\\ {	ds8		} >> |
	e16	fs	<c e>8[		<c e c'>	<c e>]		|
	<c d>		a'16[(	d,]	d'8)		%…

							d,8\noBeam	|
	<d g>		r		q		r		|
	<e a>		r		<c g' c>	r		|
	<d g d'>	<b e g>		<c e a>		<c d fs>	|
	<b d g>4~			q8		%…

							g'8		|
	g[		e		c'8.			b16]	|
	a8[		f		d8.			e16]	|
	f8[		b		b		a]		|
	g		e'16[(	c)]	g'8		%…

							r8		|
	<g,, c g'>	r		r		q		|
	<a c a'>	r		r		<a d a'>	|
	<b f' g>	<b fs' g>	<b fs' a>	<b f' g>	|
	<e g c>		r		<c' e g c>->	r		|

	\key e \minor
	<>^\note "SWIMMING THE LAKE."

	r8	<a c>16(<b d>)	%…
			<c e>8[	<a c>]	<fs a>	r	|
	r8	<e g>16(<fs a>)	%…
			<g b>8[	<e g>]	<b e>	r	|
\voiceOne r8	<c' e>16_(<d fs>)%…
			<e g>8[	<c e>]	<e g>	r	|
\oneVoice r8	<g, b>16_(<a c>	%…
			<b d>8[	<g b>])	<b d>	r	|
\voiceOne r8	b16_(<a ds>)	%…
\oneVoice		<g e'>8[<g b>]	<g e'>	r	|
\voiceOne r8	b16_(<a ds>)	%…
\oneVoice		<g e'>8[<b fs'!>]<e g>	r	|

\voiceOne fs8		b16	fs	g16	e	b	g	|
\oneVoice fs8		b16	fs	g16	e	b	g	|

\change Staff = "lower" \voiceOne
	<fs b>4\(			<g c>				|
	b2\)								|
\change Staff = "upper" \oneVoice

	<>^\note "THE LEGEND “MAROONER’S ROCK.”"
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
	R2.*3						|||

	<g, g'>1							|
	q								|
	<g, g'>4	r		r2				|
	R1*2								||

	c'8[		r		g]		r		|
	c[		r		g]		r		|

	c8[		<e g c>		q]		r		|
	f,[		<f' a d>	q]		r		|
	d		<f g b>		g,		q		|
	c[		<e g c>		q]		%…

							r		|
	c8[		<e g c>		q]		r		|
	f,[		<f' a d>	q]		r		|
	g,[		<f' g b>	q]		r		|
	c[		g16(	e]	c8)		%…

							c''8		|
	<b d>		r		a		r		|
	g		r		<b, g'>		q		|
	<c g'>		<b g'>[		<a g'>		<g g'>]		|
	<fs fs'>	a'16[(	d,]	d'8)		%…

							d,8\noBeam	|
	<b g'>		r		<c g'>		r		|
	<d g>		r		<e g>		r		|
	b		e		a,		d		|
	g		d16	b	g8		%…

							r8		|
	c8[		<e g c>		q]		r		|
	f,[		<d' f a c>	q]		r		|
	g,[		<f' g b>	q]		r		|
	c[		<c' e>		q]		%…

							r8		|
	<e,, e'>	r		r		q		|
	<f f'>		r		r		q		|
	<g g'>		q		q		q		|
	<c c'>		g'16	e	q8		%…

							r8		|
	<c' e>8		q		<b c e>4->			|
	<a c e>8	q		<af c fs>4->			|
	<g c e g>8	q		<g b d f!>	q		|
	<c e>		r		<c, c'>		%…

							r8		|
	c[		<e g c>		q]		r		|
	f,[		<f' a d>	q]		r		|
	d		<f g b>		g,		q		|
	c[		<e g c>		q]		%…

							r8		|
	c[		<e g c>		q]		r		|
	f,[		<f' a d>	q]		r		|
	g,[		<f' g b>	q]		r		|
	c		g16	e	c8		%…

							c''8		|
	<b d>		r		a		r		|
	g		r		<b, g'>		q		|
	<c g'>		<b g'>[		<a g'>		<g g'>]		|
	<fs fs'>\noBeam	a'16(	d,	d'8)		%…

							d,8\noBeam	|
	<b g'>		r		<c g'>		r		|
	<d g>		r		<e g>		r		|
	b		e		a,		d		|
	g		d16	b	g8		%…

							r8		|
	c[		<e g c>		q]		r		|
	f,[		<d' f a d>	q]		r		|
	g,[		<f' g c>	q]		r		|
	c8[		<c' e>		q]		%…

							r8		|
	<e,, e'>	r		r		q		|
	<f f'>		r		r		q		|
	<g g'>		q		q		q		|
	<c c'>		r		<c, c'>^>	r		|

	\key e \minor

	<a'' e'>8 r	r4		r		|
	<e b'>8	r	r4		r		|

\change Staff = "upper" \voiceTwo
	<c' g'>8 r	r4		r		|
\change Staff = "lower" \oneVoice
	<g c>8	r	r4		r		|

\repeat unfold 2 {
\change Staff = "upper" \voiceTwo
	<b fs'>8 r	%…
\change Staff = "lower" \oneVoice
			<e,b'>8	r	r4		|
}							|

\change Staff = "upper" \voiceTwo
	<b' fs'>8	r		<e g>		r		|
\change Staff = "lower" \oneVoice
	<b, fs'>	r		<e g>		r		|

\voiceTwo <b ds>4			<a e'>				|
	<b d fs>2							|
\oneVoice
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

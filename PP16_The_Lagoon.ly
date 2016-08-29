\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
	title = "The Lagoon"
%	style = "Incidental"
}

note =
#(define-scheme-function
  	(text)
  	(string?)
  (markup
   #:left-align text))


dynamicsMermaidLagoon = {
	\tempo "Moderato e tranquillo." 4 = 108
	\time 6/4

	\partial 4				s4\mf	|
	s1.*2	|
	s8\<	s8*4	s8\!	s2.			|
	s1.	|

	s1.*4	|

	s8\<	s8*3	s8\!	s8*2	s8\>	s8*3	s8\!	|

	<>\p
	s1.*5
	% Extending 1- & 2-beat notes + 2-beat fermata:
	% temporary tempo = current × time÷(time + fermata)
	% = 108 × 1÷(1 + 2) = 108÷3 = 36
	s1	\tempo 4 = 36	s4	\tempo 4 = 108	s4	|
	s1.
	% = 108 × 2÷(2 + 2) = 108÷2 = 54
	s2.	\tempo 4 = 54	s2	\tempo 4 = 108	s4	|
	s2.			s4\p	s2		|
	s2.			s2		s8\f s	|
	\bar "||"
}

melodyMermaidLagoon = \relative c' {
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
}

wordsMermaidLagoon = \lyricmode {
	When the wa -- ters of the nev -- er -- land
		are __ na -- ked to the moon, __
	Then wakes the fair mer -- maid -- en
		from her sleep in the La -- goo -- oon,
	And I raise my cor -- al mir -- ror
		my __ droop -- ing locks to tend,
	But the part of me I’m proud -- est of,
		is at the o -- ther end.
}

upperMermaidLagoon = \relative c' {
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
}

lowerMermaidLagoon = \relative c {
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
}

pedalMermaidLagoon = {
						s4	|
	s1.*8	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s8\sustainOn	s8*10			s8\sustainOff	|

	s1.*3	|
	s8\sustainOn	s8*10			s8\sustainOff	|
	s1.*3	|
}


dynamicsMermaidsTail = {
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
}

melodyMermaidsTail = \relative c'' {
	R2.*3
	R2 |

					s8	% kluge

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
}

wordsMermaidsTail = \lyricmode {
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

upperMermaidsTail = \relative c'' {
	<>^\note"SHE WAGGLES HER TAIL."
	<a c f>8-.<f a c>-. <c f a>-. <f a c>-. <a c f>-. <f a c>-.	|
	<g c e>-. <e g c>-. <c e g>-. <e g c>-. <g c e>-. <e g c>-.	|
	<g b d>-. <d g b>-. <b d g>-. <d g b>-. <g b d>-. <d g b>-.	|

	<b' d g>4	<b, d g>	|

					s8	% kluge

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
}

lowerMermaidsTail = \relative c {
<< \repeat unfold 3 {
	r4		g		g		|%=
} \\ \repeat unfold 3 {
	g,2.						|%=
} >>							|||
	<g g'>4		q		|

					s8	% kluge

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
}

pedalMermaidsTail = {
	s2.*3	|
	s2	%…
		s8	% kluge
			s8	|
	s2.*20	|
}


dynamicsBoysSwim = {
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
}

melodyBoysSwim = \relative c'' {
	R2.*16

	<>^\markup \left-align \column {\italic "RECITATIVE." "BABY MERMAID."}
	\xNotesOn
	r2				r8	g	g	g	|
	a4		r8	a	a	a	a	a	|
	b4		r		r		r8	b	|
	d4		g,		r		g8	d'	|
	g,4		r		r2				|
	\xNotesOff
}

wordsBoysSwim = \lyricmode {
	Who tums this way?
	If mor -- tals I must go!
	Tum an -- swer!
	Legs, or tails?
}

upperBoysSwim = \relative c'' {
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
}

lowerBoysSwim = \relative c {
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
}

pedalBoysSwim = {
	s2.*16	|

	s1*5	|
}


dynamicsPeterAndMers = {
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
}

melodyPeterAndMers = \relative c'' {
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

wordsPeterAndMers = \lyricmode {
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

upperPeterAndMers = \relative c' {
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
}

lowerPeterAndMers = \relative c {
	<g g'>1								|
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
}

pedalPeterAndMers = {
	s2*54	|
}


dynamicsSwimmingLake = {
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
}

upperSwimmingLake = \relative c'' {
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
}

lowerSwimmingLake = \relative c' {
	\key e \minor

	<a e'>8 r	r4		r		|
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

pedalSwimmingLake = {
	s2.*6	|
	s2*4	|
}


dynamicsMaroonersRock = {
	\tempo "Andante." 4 = 96
	\time 6/8

	s2.		|
	s4.\>	s4.\!	|
	s2.*13
	\tempo 4 = 72	s2.	% \tempo 4 = 96
	\bar "||"
}

upperMaroonersRock = \relative c' {
	<>^\note "THE LEGEND “MAROONER’S ROCK.”"

	b8[(	cs	ds	e	fs	g)]	|
<< {	g4.->(			fs)			| } %=
\\ {	c2.						| } >>
	b8[(	cs	ds	e	fs	g)]	|
<< {	b2.->						| } %=
\\ {	e,4.(			ds)			| } >>


<< {	b'8(	a	b	c4.)			| } %=
\\ {	d,!4.			c			| } >>
	<c'es>8( <b d>	<a c>	<g! b>4.)		|
<< {	b8(	a	g	fs4.)			|   %=
	e8(	fs	e	ds4.)			| } %=
\\ {	b4.			c			|
	cs			ds			| } >>

	b8[(	cs	ds	e	fs	g)]	|
<< {	g4.->(			fs)			| } %=
\\ {	c2.						| } >>
	b8[^(	cs	ds	e	fs	g]	|
<< { \voiceOne
	b2.)						|%=
} \new Voice { \voiceTwo
	e,4.(			ds)			|%=
} >> \oneVoice						|

<< {
	b'8(	a	b	c4.)			|%=
	a8(	g	a	b4.)			|%=
	b8(	a	fs	g4		fs8)	|%=
} \\ {
	d!4.(			c)			|%=
	c!			b			|%=
	b8	c4		e		ds8	|%=
} >>							|||
	e2.\fermata					|
}

lowerMaroonersRock = \relative c' {
<< {
	g8[(	a	fs	g	a	b)]	|%=
	a2.						|%=
	g8[(	a	fs	g	a	b)]	|%=
	g4.(			fs)			|%=

	gs4.			a			|%=
	a			b			|%=
	e,			e			|%=
	g(			fs)			|%=

	g8[(	a	fs	g	a	b)]	|%=
	a2.						|%=
	g8[(	a	fs	g	a	b)]	|%=
	g4.(			fs)			|%=

	gs4.			a			|%=
	fs!			g			|%=
	e			b'4		a8	|%=
	g2.\fermata					|%=
} \\ {
	e2.~						|%=
	e						|%=
	e						|%=
	b						|%=

	e4.			a,			|%=
	a			e'			|%=
	g,			a			|%=
	as(			b)			|%=

	e2.						|%=
	e						|%=
	e						|%=
	b						|%=

	e4.			a,			|%=
	d			g,			|%=
	g8	a4		b4.			|%=
	e2.						|%=
} >>
}

pedalMaroonersRock = {
	s2.*16	|
}


dynamicsHighlandFling = {
	\tempo "Lively." 4 = 140
	\time 2/4
	<>\f
	\grace s8
	s2*8
	\bar "||"
}

upperHighlandFling = \relative c'' {
	\key b \minor
	<>^\note "THE HIGHLAND FLING."

	\grace s8
	a16(	fs8.)			fs			e16	|
	fs8.			e16	fs(	a8.)			|
	a16(	fs8.)			fs			d16	|
	e8.			d16	e(	fs8.)			|

	a16(	fs8.)			fs			e16	|
	d'8.(			e16)	fs	e8.			|
	d16(	b8.)			a16(	fs8.)			|
	e8.(			d16)	e(	fs8.)			|
}

lowerHighlandFling = \relative c' {
	\key b \minor

\repeat unfold 8 {
	\acciaccatura gs8 <d a'>2			|
}
}

pedalHighlandFling = {
	s2*8	|
}


dynamicsKingOfTheCastle = {
	\time 6/8

	<>\f
	s2.*7
	s8*5		%…
	\bar "||"
}

upperKingOfTheCastle = \relative c' {
	<>^\note "“THE KING OF THE CASTLE.”"

	d4		a'8	g	a	b	|
	a4.			fs			|
	d4		a'8	g	a	b	|
	a4.~			a8	r	r	|

	d8[	r	d](	a)[	r	a](	|
	d)[	r	d](	b)[	r	b]	|
	a	b	a	a	fs	d	|
	<cs e>4._(^(		d8))	r	%…
}

lowerKingOfTheCastle = \relative c {
	<d fs a>4.		<d e g a>		|
	<d fs a>		q			|
	q			<d e g a>		|
<< {
	d'8	cs	b	a	fs	e	|%=
} \\ {
	<d fs g>4.		<d fs>4		%…
} >>							|

	<d fs g>4	r8	<fs a d>4	r8	|
	<g b d>4	r8	<b d>4		r8	|
	a8	b	a	a	fs	d	|
	<a\=1_( g'\=2(>4.	<d\=1) fs\=2)>8	r8 %…
}

pedalKingOfTheCastle = {
	s2.*7	|
	s8*5	%…
}


dynamicsPiratesApproach = {
	\tempo "Moderato." 4 = 112
			s8	|
\repeat volta 2 {
	s2.*3
	s4	s2\f		|
	s2.*2
} \alternative {
	{
	s2.*2
	} {
	s2.*2
	}
}
	\bar "||"
}

upperPiratesApproach = \relative c'' {
	<>^\note "“THE PIRATES APPROACH WITH TIGER LILY.”"

						a8	|
\repeat volta 2 {
	<fs a d>4	<cs a'>8 <d d'>4	<cs a'>8|
	<d d'>4		<cs a'>8 <d d'>4	%…

						cs'8	|
	<d, b'>4	<d a'>8	<cs g'>4	<d fs>8	|
	<a cs e>4	%…
\change Staff = "lower"	\voiceOne
			cs16 b	a4		%…

\change Staff = "upper" \oneVoice		fs'8	|
<< {
	g4		b8	e,4		b'8	|%=
} \\ {
	cs,4		r8	cs4		r8	|%=
} >>							|
	<d a'>4		fs8	<d fs d'>4	%…

						d'8	|
} \alternative {
	{
	<e, a cs!>4	a8	<e gs b>4	e8	|
	<cs a'>4.~		q4		%…

						a'8	|
	} {
	<fs a>4		<e g>8	<d fs>4		<cs e>8	|
	d4		r8	<d fs a d>4^>	r8	|
	}
}
}

lowerPiratesApproach = \relative c' {
						a8	|
\repeat volta 2 {
	<d,, d'>4	<a'a'>8	<d fs>4		<fs a>8	|
	<b, fs' b>4	<a a'>8	<d fs>4		%…

						r8	|
	g4		fs8	e4		d8	|
	a4		%…
\voiceTwo		cs16 b	a4		%…

\oneVoice					r8	|
	<a e' a>4	r8	<a e' g>4	r8	|
	<d fs>4		r8	<b fs' b>4	%…

						r8	|
} \alternative {
	{
	<e a>4		r8	<e b'>4		<e gs>8	|
	<a, a'>4	<g!g'!>8<fs fs'>4	%…

						<e e'>8	|
	} {
	<g g'>4.	<< {	a'4		g8	}
			   {	a,4.			} >>	|
	<d fs>4		r8	<d, d'>4->	r8	|
	}
}
}

pedalPiratesApproach = {
		s8	|
\repeat volta 2 {
	s2.*6	|
} \alternative {
	{
	s2.*2	%…
	} {
	s2.*2	|
	}
}		|
}


dynamicsAbandonTigerLily = {
	\time 4/4

	<>\pp
	s1*10	|
	\bar "||"
}

upperAbandonTigerLilyRepeat =  \relative c' {
\repeat unfold 2 {
	d16 d	d   d	d8	<cs e>	<d f>[	<d g>]	<d a'>	r	|
} \alternative {
	{
	d16 d	d   d	d8	f	e[	cs]	a	r	|
	} {
	<f' a>(	<e g>16 <d f>)
			<f a>8(	<e g>16 <d f>)
					q8[	<a e'>]	<f d'>	r	|
	}
}
}

upperAbandonTigerLily = \relative c' {
	\key d \minor
	<>^\note "“THEY PREPARE TO ABANDON TIGER LILY.”"

	\upperAbandonTigerLilyRepeat

	%\repeat unfold 2 {
	<e a>8(	g16 a)	<f bs>8(c'16 bs)<e, a>8	e	a	r	|
	%}
	<e a>8	g16 a	<f bs>8	c'16 bs	<e, a>8	e	a	r	|

	\upperAbandonTigerLilyRepeat
}

lowerAbandonTigerLilyRepeat = \relative c' {
\repeat unfold 2 {
<< {
	a4.			8	4.		%…
} \\ {
	<d, f>4.			a8	d	e	%…
} >>								r8	|
} \alternative {
	{
	<d f a>	r	r	<f a>	e	cs	a	r	|
	} {
	<d f a>	r	q	r	<d f>	<a e'>	<d d,>	r	|
	}
}
}

lowerAbandonTigerLily = \relative c' {
	\key d \minor

	\lowerAbandonTigerLilyRepeat

	\repeat unfold 2 {
	<a cs>	r	<g d'>	r	<a cs>	e	a	r	|
	}

	\lowerAbandonTigerLilyRepeat
}

pedalAbandonTigerLily = {
	s1*10	|
}


dynamicsTigerLilyEscapes = {
	\tempo "Allegro." 4 = 132
	\time 2/4

	\bar ".|:"
	<>\p-\markup "tremolo"
\repeat volta 2 {
	s2*7
} \alternative {
	{ s2 }
	{ s2 }
}
	\bar "||"
}

upperTigerLilyEscapes = \relative c' {
	\key g \minor
	<>^\note "“TIGER LILY ESCAPES.”"

\repeat volta 2 {
	<bf d f>4.		<a c>8	|
	<bf d f>4.		<a c>8	|
	<bf d f>4	<f' bf>		|
	<f c'>		<f d'>		|

	<g c>4.			<g d'>8	|
	<g ef'>4.		<g d'>8	|
<< {	c[	g	a	bf]	|%=
} \\ {	g2				| } >>	|
} \alternative {
{	<a c>4		<f a c f>	|	}
{	<a c>		bf		|	}
}
}

lowerTigerLilyEscapes = \relative c {
	\key g \minor

\repeat volta 2 {
	<bf f'>4.		f'8	|
	q4.			f8	|
	q4		<d bf'>		|
	<c a'>		<bf bf'>	|

	<ef bf'>4.		<d b'>8	|
	<c c'>4.		<d b'>8	|
	<ef c'>4	<e c'>		|
} \alternative {
{	<f c'>4		<f f,>		|	}
{	<f ef'!>	<bf d>		|	}
}
}

pedalTigerLilyEscapes = {
\repeat volta 2 {
	s2*7
} \alternative {
	{ s2 }
	{ s2 }
}
}


dynamicsHookSwims = {
	s2\cresc		|
	s32\<	s32*14	s32\!	|
	s2*5	|
	s32\<	s32*14	s32\!	|
	\bar "||"
}

upperHookSwims = \relative c' {
	<>^\note "“HOOK SWIMS OUT TO THE BOAT.”"

\repeat unfold 2 {
	\repeat tremolo 8 { d32 d' }	|
	\repeat tremolo 8 { c, c' }	|
	\repeat tremolo 8 { bf, bf' }	|
} \alternative {
	{
	\repeat tremolo 8 { a, a' }	|
	} {
<< {	a8[	g	f	g]	|%=
} \\ {	<c, ef>2			| } >>	|
	}
}
}

lowerHookSwims = \relative c {
\repeat unfold 2 {
	r8	<fs a>	<g bf>4		|
	r8	<e g>	<f a>4		|
	r8	<d f>	<ef! g>4	|
} \alternative {
	{
	r8	<cs e>	<d fs>4		|
	} {
	<f f,>2				|
	}
}
}

pedalHookSwims = {
	s2*8	|
}


dynamicsHookClimbs = {
	\time 4/4

	s4\sf	s4\ff	s2		|
	s1*2	|
	s2		%…
	% Current tempo  = 132bpm; extending 2-beat note + 2-beat fermata:
	% temporary tempo = current × time÷(time + fermata)
	% = 132 × 2÷(2 + 2) = 132÷2 = 66
	\tempo 4 = 66	s2\ff		|	\tempo 4 = 132
	\bar "||"
}

upperHookClimbs = \relative c {
<< \new Voice {
	s1^\note "“HOOK CLIMBS INTO BOAT.”"
   } {
	\change Staff = "lower"
	\voiceOne
	<f gs d'f>8-> r	<f gs>8.    q16	q8	<f a>	<f b>	<f a>	|
	<f gs>8	r	<gs b!>8.   q16	q8	<gs c>	<gs d'>	<gs c>	|

	<gs b>8	r	%…
	\change Staff = "upper"
	\oneVoice
			<b d>8.	    q16	q8	<b e>	<b f'>	<b e>	|
	<b d>8	r	r4		<d f b>2\fermata		|
   } >>
}

lowerHookClimbs = \relative c {
\voiceTwo <b b,>8	r	<b d>8.	    q16	q8	<a d>	<gs d'>	<a d>	|
	<b d>8	r	<d f>8.	    q16	q8	<c f>	<b f'>	<c f>	|
	<d f>8	r	%…
\oneVoice		<f a>8.	    q16	q8	<e a>	<d a'>	<e a>	|
	<f af>8	r	r4		<g b>2\fermata			|
}

pedalHookClimbs = {
	s1*4
}


dynamicsBirdAndNest = {
	\time 3/4

	<>\p
	s2.*11	|
	s2.\<	|
	s2.\mf	|
	s2.*2	|
	% Current tempo  = 132bpm; extending 3-beat note + 2-beat fermata:
	% temporary tempo = 132 × 3÷(3 + 2) = 132×3/5 = 79.2 ≈ 79
	\tempo 4 = 79	s2.\ff		|	\tempo 4 = 132
	\bar "||"
}

upperBirdAndNest = \relative c'' {
	\key a \minor
	<>^\note "“THE BIRD AND THE NEST.”"

<< {
	g2.\(	|	fs	|	f!	|	e\)	|%=

	e'2.\(						|%=
	d4		a		c		|%=
	b		f		a		|%=
	g2.\)						|%=

	g2.\(	|	fs	|	f!	|	e\)	|%=
} \\ {
	r4	<g, c>	q	|	r	<a c>	q	|%=
	r	<g b>	q	|	r	<g c>	q	|%=

	r4 g'2	|	f2.	|	f	|	e	|%=

	r4	<g, c>	q	|	r	<a c>	q	|%=
	r	<g b>	q	|	r	<g c>	q	|%=
} >>							|||| |||| ||||

	e''2.\(						|
	d4		a		c		|
<< {	b8	g	a4\)		%…
} \new Voice { \voiceTwo	f!2	%…
} >>					b,4		|
	c2.\fermata					|
}

lowerBirdAndNest = \relative c {
	\key a \minor

	e2.\(	|	ef	|	d	|	c\)	|

<< {
	r4	c'2		|	r4	d2		|%=
	r4	b2		|	r4	c2		|%=
} \\ {
	e,2.	|	f	|	g	|	c,	|%=
} >>								||||

	e2.\(	|	ef	|	d	|	c\)	|

	a4		<g' a cs>	q		|
	d		<fs a d>	q		|
<< {	g2				f!4		|%=
} \\ {	g,2.						| } >>	|
	<c e>2.\fermata					|
}

pedalBirdAndNest = {
	s2.*12	|
	s4\sustainOn	s4	s4\sustainOff	|
	s2.*3	|
}


dynamicsFightInWater = {
	\tempo "Allegro furioso." 4 = 144
	\time 6/8

	<>\ff
	s2.*16
	\bar "||"

	<>\ff
	s2.*30
	% Current tempo  = 144bpm; extending 3-crotchet note + 3-crotchet fermata:
	% temporary tempo = 144 × 3÷(3 + 3) = 144×3/6 = 72
	\tempo 4 = 72	s2.	|	%\tempo 4 = 144
}

upperFightInWater = \relative c'' {
	\key d \minor
	<>^\note "“THE FIGHT IN THE WATER.”"

\repeat unfold 2 {
	e8	<a, cs>	<bf d>	<cs e>	<d f>	<e g>	|
	<f a>4		<g bf>8	<f a>4		<e g>8	|
	<d f>	e	d	%…
<< {				f	e	d	|%=
} \\ {				b4.			|%=
} >>							|
	<cs e>8	a	a	a	a	a	|
}

<< {
	a4.	bf	|	b	c	|%=
} \\ {
	f,	f	|	f	f	|%=
} >>							||
	<f d'>8	d'	e	<bf d f> g'	a	|
	<g, c e g>2.					|

	a8	bf	b	c	a'	g	|
	f	e	d	c	a	f	|
	d	e'	d	c	bf	a	|
<< {	g4		a8	g4.			|%=
} \\ {	e2.						|%=
} >>							|

	\key g \minor

	<d g bf>4.		%…
<< {				a'8	fs	d	|%=
} \\ {				<c d>4.			|%=
} >>							|
	<bf d g>4.		%…
<< {				a'8	bf	c	|%=
} \\ {				<c, fs>4.		|%=
} >>							|
	<d g bf d>8 q	q	<d fs a d> q	q	|
	<d g bf d> q	q	%…
<< {				a'8	bf	c	|%=
} \\ {				<d, fs>4.		|%=
} >>							|

	<d f! bf d>4.		c'8	a	f	|
	<f bf>4.		<f a c>8 d'	ef!	|
	<f, bf d>4.		<f a c>8 a	f	|
	<f bf>4.		<f a c>8 d'	ef!	|

	<f, b f'>2.->					|
	<g c ef!>4.		d'4		c8	|
	<d, f bf>8 bf'	d	f	d	bf'	|
	gf	e	gf	bf	gf	bf	|

	<bf, d f>2.					|
	<gf bf ef>4.		<gf d'>4	c8	|
	<f, b>	d	f	af	f	b	|
	<ef,c'>	ef	g	c	g	c	|

	<d,f bf>8 <d f>	q	q	<d f bf>q	|
	q	<f bf d>q	q	<bf d f>q	|
	<bf c f>q	q	q	q	q	|
	<a c f>	q	q	q	q	q	|

	<bf d f>4.->		<f bf d>4^>	<bf d f>8|
	<bf d f bf>4.->		q->			|
	q->			<g bf ef g>->		|
	<f bf d f>2.->					|

	<g bf d>4.->		<d g bf>4^>	<g bf d>8|
	<g bf d g>4.->		<bf d g bf>->		|
	<d f bf d>2.->					|
	<c f a c>2.->					|

	<bf d f bf>2.->					|
	\repeat tremolo 12 { <d f bf>32 bf }		|
	<bf d f bf>2.\fermata				|
}

lowerFightInWater = \relative c' {
	\key d \minor

\repeat unfold 2 {
	<g a cs e>2.					|
	<f a d>4	r8	<e g a c>4	r8	|
	<d e g d>4	r8	<gs d' f>4	r8	|
	<a cs e>8   a	a	a	a	a	|
}

<< {
	c4.	c	|	c	c	|%=
} \\ {
	f,	g	|	gs	a	|%=
} >>							||

	<bf d>4		r8	<bf, d g>4	r8	|
	<c e g>	c	d	e	f	g	|

	<f a c>4.		<g bf c>		|
	<g b d>			<a c>			|
	b			<f g bf d>		|
	<c g' bf>2.					|

	\key g \minor

	<g bf d g>4.		<a d f a>		|
	<bf d g>		<d fs a>		|
	<g, d' bf'>->\arpeggio	%…
<< {				a'8	fs	d	|%=
	g4.			%…
} \\ {				a,4.			|%=
	bf			%…
} >>				d			||

	<bf f' bf>4.		<f' a c>		|
<< {
	d'4.			c8	a	f	|%=
	bf4.			c8	d	ef	|%=
	d4.			c8	a	f	|%=
} \\ \repeat unfold 3 {
	bf4.			f			|%=
} >>							|||

	<d af d>2.->	|	<ef g c>	|
	<f b>4.			<f bf d>		|
	<gf bf ef>2.	|	<f bf d>	|
	<gf bf ef>4.		<ef gf c>		|
	<d f af b>2.	|	<ef g! c>	|

	<f bf>8	q	q	q	q	q	|
	q	<f bf d> q	q	q	q	|
	<f c' ef> q	q	q	q	q	|
	q	q	q	q	q	q	|

\repeat unfold 3 {
	\repeat tremolo 12 { bf,,32 bf' }		|||
}	<bf, bf'>4.		<a a'>			|

	\repeat tremolo 12 { g32 g'}			|
	\repeat tremolo 12 { g,32 g'}			|
	\repeat tremolo 12 { f,32 f'}			|
	\repeat tremolo 12 { f,32 f'}			|

	<bf bf,>4.		<bf bf'>->		|
	<f f'>^>		<d d'>^>		|
	<bf bf'>2.\fermata				|
}

pedalFightInWater = {
	s2.*47	|
}


dynamicsPeterAndHook = {
}

upperPeterAndHook = \relative c' {
}

lowerPeterAndHook = \relative c {
}

pedalPeterAndHook = {
}


dynamicsCrocodile = {
}

upperCrocodile = \relative c' {
}

lowerCrocodile = \relative c {
}

pedalCrocodile = {
}


dynamicsBoysDepart = {
}

upperBoysDepart = \relative c' {
}

lowerBoysDepart = \relative c {
}

pedalBoysDepart = {
}


dynamicsPeterAndWendy = {
}

upperPeterAndWendy = \relative c' {
}

lowerPeterAndWendy = \relative c {
}

pedalPeterAndWendy = {
}


dynamicsWendyFlies = {
}

upperWendyFlies = \relative c' {
}

lowerWendyFlies = \relative c {
}

pedalWendyFlies = {
}


dynamicsPeterDespair = {
}

upperPeterDespair = \relative c' {
}

lowerPeterDespair = \relative c {
}

pedalPeterDespair = {
}


dynamicsBigAdventure = {
}

upperBigAdventure = \relative c' {
}

lowerBigAdventure = \relative c {
}

pedalBigAdventure = {
}


dynamicsBirdHelps = {
}

upperBirdHelps = \relative c' {
}

lowerBirdHelps = \relative c {
}

pedalBirdHelps = {
}


dynamicsPeterSails = {
}

upperPeterSails = \relative c' {
}

lowerPeterSails = \relative c {
}

pedalPeterSails = {
}


dynamics = {
	\set Score.tempoHideNote = ##t

	\dynamicsMermaidLagoon
	\dynamicsMermaidsTail
	\dynamicsBoysSwim
	\dynamicsPeterAndMers
	\dynamicsSwimmingLake
	\dynamicsMaroonersRock
	\dynamicsHighlandFling
	\dynamicsKingOfTheCastle
	\dynamicsPiratesApproach
	\dynamicsAbandonTigerLily
	\dynamicsTigerLilyEscapes
	\dynamicsHookSwims
	\dynamicsHookClimbs
	\dynamicsBirdAndNest
	\dynamicsFightInWater
	\dynamicsPeterAndHook
	\dynamicsCrocodile
	\dynamicsBoysDepart
	\dynamicsPeterAndWendy
	\dynamicsWendyFlies
	\dynamicsPeterDespair
	\dynamicsBigAdventure
	\dynamicsBirdHelps
	\dynamicsPeterSails
}

melodyDynamics = {
	\dynamicsMermaidLagoon
	\dynamicsMermaidsTail
	\dynamicsBoysSwim
	\dynamicsPeterAndMers
}

melody = {
	\autoBeamOff
	\clef treble

	\melodyMermaidLagoon
	\melodyMermaidsTail
	\melodyBoysSwim
	\melodyPeterAndMers
}

words = {
	\wordsMermaidLagoon
	\wordsMermaidsTail
	\wordsBoysSwim
	\wordsPeterAndMers
}

upper = {
	\clef treble

	\upperMermaidLagoon
	\upperMermaidsTail
	\upperBoysSwim
	\upperPeterAndMers
	\upperSwimmingLake
	\upperMaroonersRock
	\upperHighlandFling
	\upperKingOfTheCastle
	\upperPiratesApproach
	\upperAbandonTigerLily
	\upperTigerLilyEscapes
	\upperHookSwims
	\upperHookClimbs
	\upperBirdAndNest
	\upperFightInWater
	\upperPeterAndHook
	\upperCrocodile
	\upperBoysDepart
	\upperPeterAndWendy
	\upperWendyFlies
	\upperPeterDespair
	\upperBigAdventure
	\upperBirdHelps
	\upperPeterSails
}

lower = {
	\clef bass

	\lowerMermaidLagoon
	\lowerMermaidsTail
	\lowerBoysSwim
	\lowerPeterAndMers
	\lowerSwimmingLake
	\lowerMaroonersRock
	\lowerHighlandFling
	\lowerKingOfTheCastle
	\lowerPiratesApproach
	\lowerAbandonTigerLily
	\lowerTigerLilyEscapes
	\lowerHookSwims
	\lowerHookClimbs
	\lowerBirdAndNest
	\lowerFightInWater
	\lowerPeterAndHook
	\lowerCrocodile
	\lowerBoysDepart
	\lowerPeterAndWendy
	\lowerWendyFlies
	\lowerPeterDespair
	\lowerBigAdventure
	\lowerBirdHelps
	\lowerPeterSails
}

pedal = {
	\pedalMermaidLagoon
	\pedalMermaidsTail
	\pedalBoysSwim
	\pedalPeterAndMers
	\pedalSwimmingLake
	\pedalMaroonersRock
	\pedalHighlandFling
	\pedalKingOfTheCastle
	\pedalPiratesApproach
	\pedalAbandonTigerLily
	\pedalTigerLilyEscapes
	\pedalHookSwims
	\pedalHookClimbs
	\pedalBirdAndNest
	\pedalFightInWater
	\pedalPeterAndHook
	\pedalCrocodile
	\pedalBoysDepart
	\pedalPeterAndWendy
	\pedalWendyFlies
	\pedalPeterDespair
	\pedalBigAdventure
	\pedalBirdHelps
	\pedalPeterSails
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
				\melodyDynamics
			>>
		}
		\new Lyrics \lyricsto "melody" \words
		\new PianoStaff
		\with {
			midiInstrument = #"acoustic grand"
		}
		<<
			\new Staff = "upper" \unfoldRepeats <<
				\upper
				\dynamics
				\pedal
			>>
			\new Staff = "lower" \unfoldRepeats <<
				\lower
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

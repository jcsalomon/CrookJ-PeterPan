\version "2.19"
\language "english"
\include "Peter_Pan.ily"

\header {
  title = "The Building of the House"
  style = "Song"
}


dynamicsSongOne = {
  \tempo "Allegretto." 4 = 120
  \time 2/4

  \partial 8
				s8\p	|
	s2*7
	s4.			%…

  \bar "||"

				s8	|
	s2*3
	s4.			%…

  \bar "||"
}

wordsOne = \lyricmode {
  I wish I had a darl -- ing house,
  The litt -- ’lest ev -- er seen,
  With fun -- ny lit -- tle red walls,
  And roof of mos -- sy green.

  With fun -- ny lit -- tle red walls,
  And roof of mos -- sy green.
}

upperSongOne = \relative c' {
  \key g \major

  \new Voice = "melodyOne" {
    \autoBeamOff
    \voiceOne

    \note "(Wendy)"
							d8		|

	d		b'		a		g		|
	c		fs,		fs8.	 		fs16	|
    <<
      {
	e8		d		fs8.			e16	|%=
          \voiceTwo
	d4.						%…
      }
      \new Voice {
        \voiceTwo
	c4				cs4				|%=
        \voiceOne
	d8[		<g b>		<g b d>]	%…
      }
    >> \voiceOne					d8		||

	e16	fs8.			g8		a		|
	g8		fs4				a8		|
	b		g		cs		a		|
    <<
      {
        \voiceTwo
	d4.						%…
      }
      \new Voice {
        \voiceOne
	s8		<d fs a>[	<fs a d>]	%…
      }
    >> \voiceOne

    \note "(Boys.)"
							d,		|

	c'!16	c8.			b8		fs		|
	a8		g4				e8		|
	d		b'		a		d,		|
    <<
      {
        \voiceTwo
	g4.						%…
      }
      \new Voice {
        \voiceOne
	g8[		<b d>		<b d g>]	%…
      }
    >> 							%…
  }
}

lowerSongOne = \relative c {
  \key g \major
							r8		|

	g8		<d'g b>[	q		q]		|
	a		<d fs c'>[	q		q]		|
  <<
    {
	a'4				as				|%=
	b8[		<g b>		<g b d>]	%…
    }
    \\
    {
	d2~								|%=
	<g, d'>4					%…
    }
  >>							r8		||

	e8		<e'g b>4			q8		|
	a,8		<fs'a d>4			q8		|
	e8		<g b d>		a,		<g'a cs>	|
	<d fs a d>	<a a'>[		<d, d'>]	r		|

	ds'8		<a' b>		b,		q		|
	e		<g b>		cs,		as'		|
	d,[		q		d		<fs c'>]	|
	<g b>[		d		g,]		%…
}


dynamicsBuildOne = {
				s8\mf	|
	s2*35

  \bar "||"
}

upperBuildOne = \relative c'' {
							<b d>8		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<g b d>[	q		q		q]		|
	<g b>[		<b d>		<b e>		<g b>]		|
	<a c>[		q		q		q]		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<c e>[		q		q		q]		|
	<d fs>[		<c e>		<b d>		<as cs>]	|
	<b e>[		<b d>		q		q]		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<b d>[		q		q		q]		|
	<g b>[		<b d>		<b e>		<gs b>]		|
	<a c>[		q		q		q]		|

	<d fs>[		<c e>		<b d>		<a c>]		|
	<fs as>[	<g b>		<b g'>		<g b>]		|
	<g e'>[		<g a>		<fs d'>		<d fs>]		|
	<d a'>[		<d g>		q		q]		|

	<b' d g>[	q		<g b d>		<g b>]		|
	<e g d'>[	<e g c>		q		q]		|
	<gs b e>[	q		<e gs b>	<e gs>]		|
	<c e b'>[	<c e a>		q		q]		|

  <<
    {
	<a' d>[		<a c>		<a d>		<a c>]		|%=
	<g c>[		<g b>		q		q]		|%=
    }
    \\
    {
	e4				ef				|%=
	d4				%…
    }
  >>									||
	<fs b>8[	<fs a>		<fs d'>		<fs b>]		|
	<g as>[		<g b>		<g e'>		<g d'>]		|

	<b d g>[	q		<g b d>		<g b>]		|
	<e g d'>[	<e g c>		q		q]		|
	<gs b e>[	q		<e gs b>	<e gs>]		|
	<c e b'>[	<c e a>		q		q]		|

  <<
    {
	<a' d>[		<a c>		<a d>		<a c>]		|%=
	<g c>[		<g b>		q		q]		|%=
    }
    \\
    {
	e4				ef				|%=
	d4				%…
    }
  >>									||
	<fs b>8[	<fs a>		<fs d'>		<fs b>]		|

	<b, g'>		%
  \voiceOne
  \tuplet 3/2 8 {
			g''16([ a g]	fs[ g fs]	e[ fs e]	|
  }
  \tuplet 3/2 8 {
	d[ e d]		c[ d c]		b[ c b]		a[ b a]		|
  }
	g8		%…
  \oneVoice
  \tuplet 3/2 8 {
			g16[ a g]	fs[ g fs]	e[ fs e]	|
	d[ e d]		c[ d c)]	%…
  }
					b8		<c d>		|
}

lowerBuildOne = \relative c {
							r8		|

	g		<g' b d>	d,		q		|
	g		q		<e' e'>->	<d d'>->	|
	g,		<g' b d>	d,		q		|
	g		<fs' c' d>	<e e'>->	<d d'>->	|

	g,		<fs' c' d>	d,		q		|
	g		q		<fs' fs'>->	<e e'>->	|
	d,[		d'		d'		d,]		|
	g,		<g' b d>	<e e'>->	<d d'>->	|

	g,		<g' b d>	d,		q		|
	g		<fs' c' d>	<e e'>->	<d d'>->	|
	g,		<g' b d>	d,		<gs' b e>	|
	a,		<a' c e>	<fs fs'>->	<e e'>->	|

	c,[		c'		<a' c>		c,]		|
	d,[		d'		<b' d>		d,]		|
	d,		<g' a cs>	d,		<ds' fs c'>	|
	g,		<g' b>		<a, a'>->	<g g'>->	|

	g[		<f' g b>	<g b d>		<f g b>]	|
	c,		<e' g c>	<d d'>->	<c c'>->	|
	e,[		<e' gs b>	<gs b d>	<e gs b>]	|
	a,		<e' a>		<b b'>->	<a a'>->	|

	c		<e a c>		c		<ef a c>	|
	d		<g b>		<c, c'>->	<b b'>->	|
	<d d,>		<d a' c>[	q		q]		|
	<g cs>		<g d'>		<as, as'>->	<b b'>->	|

	g[		<f' g b>	<g b d>		<f g b>]	|
	c,		<e' g c>	<d d'>->	<c c'>->	|
	e,		<e' gs b>	<gs b d>	<e gs b>	|
	a,		<e' a>		<b b'>->	<a a'>->	|

	c		<e a c>		c		<ef a c>	|
	d		<g b>		<c, c'>->	<b b'>->	|
	<d, d'>		<fs' c' d>	d,		<d' fs a c>	|
	<g, g'>		%…
  \change Staff = "upper"
  \voiceTwo
			<b'' d>[	<a c>		<g b>]		|

	<fs a>[		<e g>		<d g>		<c d e>]	|
	<b d>		%…
  \change Staff = "lower"
  \oneVoice
			<bf df>[	<a c>		<g b>]		|
	<fs a>		<e g>		<d g>		<d fs>		|

	\key c \major
	g,8	r	r	r4		%…
}


dynamicsSongTwo = {
  \tempo "Allegretto." 4 = 120
  \time 6/8

	s8*5					s8\p	|
	s2.*7
	s8*5

  \bar "||"

						s8	|
	s2.*7
	s8*5

% \bar "||"

						s8	|
	s2.*7

  \bar "||"

  \time 2/4
  \tempo "Allegro vivo." 4 = 160

	s4		s8\f	%…
}

wordsTwo = \lyricmode {
  We’ve built the lit -- tle walls, and roof,
  And made a love -- ly door, __
  So tell us mo -- ther Wen -- dy,
  What are you want -- ing more? __

  Oh! real -- _ ly next I think _ I’d have
  Gay win -- dows all a -- bout, __
  With ro -- _ ses peep -- ing in _ you know,
  And ba -- bies peep -- ing out. __

  We’ve made the ro -- ses peep -- ing in,
  The babes are at the door, __
  We can -- not make our -- selves you know,
  ’Cos we’ve been made be -- fore.
}

upperSongTwo = \relative c' {
  \key c \major
  \time 6/8

  \new Voice = "melodyTwo" {
    \autoBeamOn
    \voiceOne

    \note "(Boys.)"
    <<
      \new Voice {
        \voiceTwo
	<g g'>2.					|%=
      }
      {
	s8*5					g'8	|%=
      }
    >>							|

	<c, e>4		<c f>8	<c g'>4		<c gs'>8|
	<c a'>4		<c gs'>8<c a'>4		<cs g'>8|
	<d f>4		<d g>8	<d a'>4		<d a'c>8|
	<d_~ g_~ b~>4.		q4		g8	|

    <<
      {
	b4		b8	a4		b8	|%=
	c4.\(			a4\)		%…
      }
      \new Voice
      {
        \voiceTwo
	d,2.						|%=
	c4.~			c4		%…
      }
    >>						<c ef a>8||
	<c e! g>4	c'8	<d, f c'>4	b'8	|
    <<
      {
	c4.~			c4		%…
      }
      \new Voice {
        \voiceTwo
	<c, e g>4.~		q4		%…
      }
    >>

    \key g \major

    \note "(Wendy.)"
						d8	|

    <<
      {
	c'8	d	c	b4		b8	|%=
	a8	b	a	%…
      }
      \new Voice {
        \voiceTwo
	a4.			g			|%=
	fs			%…
      }
    >> \oneVoice		g4		g8	||
	<d fs>4		<e g>8	<fs a>4		<g b>8	|
	<fs a>4.~		q4		<g b>8	|

    <<
      {
        \voiceOne
	c8	d	c	b4		b8	|%=
	a8	b	a	g4		g8	|%=
      }
      \new Voice {
        \voiceTwo
	a4.			g			|%=
	fs			g			|%=
      }
    >> \oneVoice					||
	<d fs>4		<e g>8	<fs a>4		<g b>8	|
	<fs a>4.~		q4		%…
    \note "(Boys.)"
						d8	|

	d4		g8	d4		ds8	|
	fs4		e8	e4		e8	|
	e4		a8	e4		es8	|
	fs4.~			fs4		fs8	|

	fs4		fs8	b4		a8	|
	a4		g8	%…
    <<
      {
        \voiceOne
				d'4\fermata	c8	|%=
	b4		d,8	b'4		%…
      }
      \new Voice {
        \voiceTwo
				e,4.\fermata		|%=
	d4.			fs4		%…
      }
    >> \oneVoice				a8	||


	<g b,>8		r		%…
  }
}

lowerSongTwo = \relative c {
						r8	|
	c4		d8	e4		e8	|
	f4		e8	f4		e8	|
	d4		e8	f4		fs8	|
	g4		d8	<g, g'>4.		|

	<f' g>4		q8	q4		q8	|
	<e g>4.~		q4		fs8	|
	a4		r8	<g, g'>4	r8	|
	<c, c'>4	<g g'>8^><c c'>4^>	%…

  \key  g \major
						r8	|

  <<
    {
	r4		d''8	d4		d8	|%=
	c8	d	c	b4.			|%=
	a4		b8	c4		b8	|%=
	g4.~			g4		r8	|%=

	b4		b8	b4		b8	|%=
	c8	d	c	b4.			|%=
	a4		b8	c4		cs8	|%=
	d4		a8->	d4		r8	|%=
    }
    \\
    {
	d,2.~						|%=
	d2.						|%=
	d2.~						|%=
	d4		d8	d4		d8	|%=

	d2.~						|%=
	d2.						|%=
	d2.~						|%=
	d2.						|%=
    }
  >>							|||| ||||

	<b g'>2.					|
	<c g'>2.					|
	<cs a'>2.					|
	<d a'>2.					|

	<ds b'>2.					|
	<e b'>4.		<c a'>\fermata		|
	<d b'>4.		<d c'>			|

	g,8		<d' g b>	%…
}


dynamicsBuildTwo = {
				s8	|
	s2*8

  \bar "||"

	s8\ff	s4.			|
	s2*6
	s8	s8\f	s4		|

	s8	\tuplet 3/2 { s16\< s16*7 s16\!	}|
	s2				|
	s8\<	\tuplet 3/2 { s16*8 s16\! }	|
	\tuplet 3/2 { s16\< s16*10 s16\! }	|

	s2				|
	s4		s8\f	s8	|
	s16\ff	s4..			|

  \bar "|."
}

upperBuildTwo = \relative c' {
					<b d>4->			|

	<g b>8[		<b d>		<b e>		<g b>]		|
	<g b d>		q4				q8		|
	<g b>[		<b d>		<b e>		<g b>]		|
	<a c>		q4				q8		|

	<g b>[		<b d>		<b e>		<g b>]		|
	<c e>		q4				q8		|
	<d fs>[		<c e>		d		cs]		|
	<b e>		<b d>4				q8		|

	<b d g>[	q		<g b d>		<g b>]		|
	<e g d'>[	<e g c>		q		q]		|
	<gs b e>[	q		<e gs b>	<e gs>]		|
	<c e b'>[	<c e a>		q		q]		|

  <<
    {
	<a' d>[		<a c>		<a d>		<a c>]		|%=
	<g c>[		<g b>		q		q]		|%=
    }
    \\
    {
	e4				ef				|%=
	d4				s8		s8		|%=
    }
  >>									||
	<fs b>[		<fs a>		<fs d'>		<fs b>]		|

	<b, d g>	%…
  \tuplet 3/2 8 {
			g''16\([ a g]	fs[ g fs]	e[ fs e]	|
  }
	d8\)		%…
  \tuplet 3/2 8 {
			d16\([ cs d]	e[ ds e]	fs[ e fs]	|
  }
	g8\)		%…
  \tuplet 3/2 8 {
			g16\([ a g]	fs[ g fs]	e[ fs e]	|
  }
	d8\)		%…
  \tuplet 3/2 8 {
			d16\([ cs d]	e[ ds e]	fs[ e fs]	|
	g[ fs e]	d[ e fs]	g[ fs e]	d[ e fs]	|
	g[ fs e]	d[ e fs]	g[ fs e]	d[ e fs]	|
  }
	<g, b d g>8\)	r		<b d g b>->	r		|
	<g g,>2								|
}

lowerBuildTwo = \relative c' {
					d,8		<g' b d>	|

	g,		q		d		q		|
	g		<d' g b>	<e e'>->	<d d'>->	|
	g,		<g' b d>	d,		q		|
	a'		<fs' c' d>	<e e'>->	<d d'>->	|

	a		<fs' c' d>	d,		q		|
	a'		q		d,		q		|
	<d' fs a>[	q		<d fs as>	q]		|
	g,		<g' b d>	d,		q		|

	g		<f' g b>[	q		q]		|
	c,		<e' g c>	<d d'>->	<c c'>->	|
	e,[		<e' gs>		<gs b>		<e gs b>]	|
	a,		<e' a>		<b b'>->	<a a'>->	|

	c		<e a c>		c		<ef a c>	|
	d4				<c c'>8->	<b b'>->	|
	d[		<d a' c>	q		q]		|
	<g g,>		<d g b>[	<cs g' as>	q]		|

	<d d,>		<d fs c'>[	<d g c>		<d a' c>]	|
	g,		<d' g b>	<cs gs' a>	q		|
	d,		<d' fs c'>[	<d g c>		<d a' c>]	|
	<g b>[		<d fs a>	<g b>		<d fs a>]	|

	<g b>[		<d fs a>	<g b>		<d fs a>]	|
	<g, g'>		r		q->		r		|
  <<
    {
      \repeat tremolo 4 {
	g,16	g'16
      }									|
    }
    {
      \once \override MultiMeasureRest #'transparent = ##t
	R2_\fermataMarkup
    }
  >>
}


dynamicsEliza = {
  \pageBreak

  \note "“ELIZA ON THE PROWL.”"

  \tempo "Allegretto espressione." 4 = 120
  \time 4/4

	\grace s8
	s8 \dynamic "p ben marcato"	s8*7	|
	s1*15	|

	s2.		s4-\markup "Fine."	|

  \bar "|."
  \break
}

upperElizaRepeat = \relative c'' {
	r8	<d g b>	q	q	q4		<c fs a>	|
  \voiceOne
	r8	<b e g>	q	q	q4		<b ds fs>	|
  \oneVoice
	r8	<g c e>	q	q	q4		<f b d!>	|
  <<
    {
	<b d>8	<a c>	<gs b>	<a c>	%…
    }
    \\
    {
	e2				%…
    }
  >>
					<c e a>4	r		|
}

upperEliza = \relative c' {
	\grace s8

  \upperElizaRepeat

	r8	<d fs a>-.<d fs b>-.<d fs c'>-.	<d fs d'>4-.	q-.	|
	r8	<g b d>-. <g b e>-. <g b fs'>-.	<g b g'>4-.	q-.	|
	r8	c\(	d	e	c4		e,\)		|
  <<
    {
	fs4\(		g		a2\)				|%=
    }
    \\
    {
	c,2.						c4		|%=
    }
  >>									|

  \upperElizaRepeat

	<fs a>8	<fs a fs'> q	<fs a e'> <d g d'>4	<d g>		|
	<c fs>8	<fs d'>	q	<e c'>	<d e b'>4	<gs, d' e>	|
	<g!c e>8<c e b'><c e b'><g c e>	<g c e>	<c e b'><c e b'><g c e>	|
	<g c e>8<c e a>	<c e a>	<g c e>	<fs!c'd><c'd a'>q	<fs,c'd>|

	<b d g>2~			q8	r	r4\fermata	|
}

lowerElizaRepeat = \relative c {
	\acciaccatura g8 d''2		b4	\acciaccatura d,8 d'4	|
	\acciaccatura e,8
  \change Staff = "upper"
  \voiceTwo
	g'2				%…
  \change Staff = "lower"
  \oneVoice
					\acciaccatura b,,8 b'2		|
	\acciaccatura c,8 e'2		c4	\acciaccatura gs,8 b'4	|
	<a, a'>2.					q4		|
}

lowerEliza = \relative c {
  \lowerElizaRepeat

	<c, c'>4	r		<c' d fs a>	r		|
	<b, b'>		r		<e' g b>	r		|
	<a,, a'>	r		<e'' g c>	r		|
  <<
    {
	d4		e		fs2				|%=
    }
    \\
    {
	\acciaccatura d,8 d'2.				d4		|%=
    }
  >>									|

  \lowerElizaRepeat

	c4		<d fs a>	b		<b e>		|
	a,		<d' a' c>	<e gs>		<e, e'>		|
	<a, a'>8 r	<e'' g>	r	<a,, a'> r	<e'' g>	r	|
	<a,, a'> r	<e'' g>	r	<d, d'>	r	<d' fs!> r	|

	<g,, g'> r	<g' g'>	r	<g, g'>	r	r4\fermata	|
}


dynamics = {
  \set Score.tempoHideNote = ##t

  \dynamicsSongOne
  \dynamicsBuildOne
  \dynamicsSongTwo
  \dynamicsBuildTwo

  \dynamicsEliza
}

upper = {
  \clef treble

  \mergeDifferentlyDottedOn

  \upperSongOne
  \upperBuildOne
  \upperSongTwo
  \upperBuildTwo

  \upperEliza
}

lower = {
  \clef bass

  \lowerSongOne
  \lowerBuildOne
  \lowerSongTwo
  \lowerBuildTwo

  \lowerEliza
}

\score {
  \new PianoStaff
  \with {
    instrumentName = #"Piano"
  }
  <<
    \new Lyrics = "words"
    \new Staff = "upper" \upper
    \new Dynamics = "dynamics" \dynamics
    \new Staff = "lower" \lower
    \context Lyrics = "words" {
      \lyricsto "melodyOne" \wordsOne
      \lyricsto "melodyTwo" \wordsTwo
    }
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
    \new Lyrics = "words"
    \new Staff = "upper" <<
      \upper
      \dynamics
    >>
    \new Staff = "lower" <<
      \unfoldRepeats \lower
      \dynamics
    >>
    \context Lyrics = "words" {
      \lyricsto "melodyOne" \wordsOne
      \lyricsto "melodyTwo" \wordsTwo
    }
  >>
  \midi {
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

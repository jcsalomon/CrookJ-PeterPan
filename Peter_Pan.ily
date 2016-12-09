% Common header & layout for Peter Pan incidental music

% Refer to http://www.mutopiaproject.org/contribute.html
% for usage and possible values for header variables.

\header {
	composer = "John Crook (1852–1922)"
	opus = "Peter Pan"
	% The Music to J. M. Barrie’s Successful Play “Peter Pan,” or, The Boy who wouldn’t Grow Up
	% See ‹http://hdl.handle.net/1802/24425›
	% and ‹http://books.google.com/books?id=J-wQAAAAYAAJ›.
	date = "1905"
	source = "W. Paxton & Co. Ltd., 95 New Oxford St, London WC"

	maintainer = "Joel C. Salomon"
	maintainerEmail = "joelcsalomon@gmail.com"
	license = "Public Domain"

	mutopiacomposer = "CrookJ"
	mutopiainstrument = "Piano"

	tagline = ##f
}


% Thanks to Simon Albrecht on lilypond-user for this
after =
#(define-music-function (t e m) (ly:duration? ly:music? ly:music?)
   #{
     \context Bottom <<
       #m
       { \skip $t <> -\tweak extra-spacing-width #empty-interval $e }
     >>
   #})


% http://lsr.di.unimi.it/LSR/Item?id=792
% see also http://lilypond.org/doc/v2.18/Documentation/notation/displaying-pitches

% Append markup in the text property to the grob
#(define (append-markup grob old-stencil)
  (ly:stencil-combine-at-edge
    old-stencil X RIGHT (ly:text-interface::print grob)))

trebleToBass = {
  \clef bass
  % Fake staff clef appearance
  \once \override Staff.Clef.glyph-name = #"clefs.G"
  \once \override Staff.Clef.Y-offset = #-1
  % Append change clef to the time signature
  \once \override Staff.TimeSignature.text = \markup {
    \hspace #1.2
    \raise #1
    \musicglyph #"clefs.F_change"
  }
  \once \override Staff.TimeSignature.stencil = #(lambda (grob)
    (append-markup grob (ly:time-signature::print grob)))
}


%% http://lsr.di.unimi.it/LSR/Item?id=328
%% see also http://lilypond.org/doc/v2.18/Documentation/notation/writing-rhythms#tuplets

trip = #(define-music-function (parser location m1 m2 m3)
  (ly:music? ly:music? ly:music?)
  #{ \tuplet 3/2 { $m1 $m2 $m3 } #})


RH = \markup \italic "R.H."
LH = \markup \italic "L.H."


note =
#(define-scheme-function
  (text)
  (string?)
  #{
    \once \override Score.RehearsalMark.self-alignment-X = #LEFT
    \mark \markup \smaller $text
  #}
  )


\include "easy-custom-dynamics.ily"

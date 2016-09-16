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

\version "2.18.2"
%rm -r out && lilypond-book primi.tex --out out && cd out && pdflatex primi.tex && cd .. && evince out/primi.pdf
%comments, \stemup \stemdown RestPosition fermata \time 4/4 
%eval \rest
\include "event-listener.ly"

#(set-global-staff-size 16)
\paper { 
	paper-height = 297\mm
	paper-width = 230\mm

	two-sided = ##t
	page-count = 98
	#(ly:set-option 'point-and-click #f)
	ragged-last-bottom = ##f
	inner-margin = 20\mm
	outer-margin = 15\mm
}
\header { tagline = "" }

layoutoptions =
{
}

%\score {c4}
\pageBreak
\include "primi/01.ly"
\include "primi/02.ly"
\pageBreak
\include "primi/03.ly"
\include "primi/04.ly"
\pageBreak
\include "primi/05.ly"
\include "primi/06.ly"
\pageBreak
\include "primi/07.ly"
\include "primi/08.ly"
\pageBreak
\include "primi/09.ly"
\include "primi/10.ly"
\pageBreak
\include "primi/11.ly"
\include "primi/12.ly" \pageBreak
\include "primi/13.ly"
\pageBreak
\include "primi/14.ly"
\include "primi/15.ly"
\pageBreak
\include "primi/16.ly"
\include "primi/17.ly"
\pageBreak
\include "primi/18.ly"
\include "primi/19.ly"
\pageBreak
\include "primi/20.ly" \pageBreak
\include "primi/21.ly"
\pageBreak
\include "primi/22.ly" \pageBreak
\include "primi/23.ly"
\pageBreak
\include "secundi/01.ly"
\include "secundi/02.ly"
\pageBreak
\include "secundi/03.ly"
\include "secundi/04.ly"
\pageBreak
\include "secundi/05.ly"
\include "secundi/06.ly"
\pageBreak
\include "secundi/07.ly"
\include "secundi/08.ly"
\pageBreak
\include "secundi/09.ly"
\include "secundi/10.ly"
\pageBreak
\include "tertii/01.ly"
\pageBreak
\include "tertii/02.ly"
\pageBreak
\include "tertii/03.ly"
\include "tertii/04.ly"
\pageBreak
\include "tertii/05.ly"
\include "tertii/06.ly"
\pageBreak
\include "tertii/07.ly" \pageBreak
\include "tertii/08.ly"
\pageBreak
\include "tertii/09.ly"
\include "tertii/10.ly"
\pageBreak
\include "tertii/11.ly"
\include "quarti/01.ly"
\pageBreak
\include "quarti/02.ly"
\include "quarti/03.ly"
\pageBreak
\include "quarti/04.ly"
\include "quarti/05.ly"
\pageBreak
\include "quarti/06.ly"
\include "quarti/07.ly" \noPageBreak
\include "quarti/08.ly" 
\pageBreak
\include "quinti/01.ly"
\include "quinti/02.ly"
\include "quinti/03.ly"
\pageBreak
\include "quinti/04.ly"
\include "quinti/05.ly"
\pageBreak
\include "quinti/06.ly"
\include "quinti/07.ly"
\pageBreak
\include "quinti/08.ly"
\include "quinti/09.ly"
\pageBreak
\include "quinti/10.ly"
\include "quinti/11.ly"
\pageBreak
\include "quinti/12.ly"
\include "sexti/01.ly"
\pageBreak
\include "sexti/02.ly"
\include "sexti/03.ly"
\pageBreak
\include "sexti/04.ly"
\include "sexti/05.ly"
\pageBreak
\include "sexti/06.ly"
\include "sexti/07.ly"
\pageBreak
\include "sexti/08.ly"
\include "sexti/09.ly"
\include "sexti/10.ly"
\pageBreak
\include "septimi/01.ly"
\include "septimi/02.ly"
\pageBreak
\include "septimi/03.ly"
\include "septimi/04.ly"
\pageBreak
\include "septimi/05.ly"
\include "septimi/06.ly"
\pageBreak
\include "septimi/07.ly"
\include "septimi/08.ly"
\pageBreak
\include "octavi/01.ly"
\include "octavi/02.ly"
\pageBreak
\include "octavi/03.ly"
\include "octavi/04.ly"
\pageBreak
\include "octavi/05.ly"
\include "octavi/06.ly"
\pageBreak
\include "octavi/07.ly"
\include "octavi/08.ly"
\pageBreak
\include "octavi/09.ly"
\include "octavi/10.ly"
\pageBreak
\include "octavi/11.ly"
\include "octavi/12.ly"
\pageBreak
\include "octavi/13.ly"

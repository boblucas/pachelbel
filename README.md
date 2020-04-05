# pachelbel
The 95 magnificat fugues as written by Pachelbel in lilypond

This edition is based on the 1901 publication by Max Seiffert & Hugo Botstiber. It is mostly unchanged but the voicing has been optimized somewhat and some minor errors (mostly rhythmic) have been corrected. Also all the page turns are gone and Primi toni fugue 15, which was written in breves, is rhythmically halved for clarity. 

You can generate the PDF/midi for any fugue with lilypond eg: `lilypond primi/5.ly`, you can generate all fugues using `lilypond magnificat.ly` and you can generate the index (with all fugues appended) by running m4, lilypond-book & pdflatex, in a single command `mkdir out && m4 book.tex > out/book.tex && lilypond-book out/book.tex --out out && cd out && pdflatex book.tex && cd .. && cp out/book.pdf ./ && rm -r out`

Generated pdf's are included in this repo, book.pdf is the final output



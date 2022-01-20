\version "2.18.2"

\include "dynamicparams.ly"
\include "formatangaben.ly"
\include "mergerests.ly"
\include "optionaltranspose.ly"
\include "Bezeichnungen.ly"
\include "generaldefinitions.ly"
\include "mydrums2.ly"
\include "drumdefinitions.ly"

tempTranspose = #(define-music-function (parser location music)
                   (ly:music?)
                   (let* ((octave (or (ly:get-option 'octave) -1))
                          (note (or (ly:get-option 'note) 0))
                          (alteration (or (ly:get-option 'alteration) 0))
                          (to (ly:make-pitch octave note alteration)))
                     #{ \transpose c c  $music #})) 




globalSchaffeSchuetz = { 
	\taktstil
 \accidentalStyle modern-voice
 }

vorspielpausenSchaffeSchuetz = { 
	
}

sopranINotenSchaffeSchuetz = \tempTranspose \relative c' { 
	 \globalSchaffeSchuetz
	 
 }

sopranIINotenSchaffeSchuetz = \tempTranspose \relative c' { 
	 \globalSchaffeSchuetz
	 
 }

orgelRHNotenSchaffeSchuetz = \tempTranspose \relative c' { 
	 \globalSchaffeSchuetz
	 
 }

orgelLHNotenSchaffeSchuetz = \tempTranspose \relative c { 
	 \globalSchaffeSchuetz
	 
 }

continuoNotenSchaffeSchuetz = \tempTranspose \relative c { 
	 \globalSchaffeSchuetz
	 
 }

continuoNotenSchaffeSchuetz = \tempTranspose \relative c { 
	 \globalSchaffeSchuetz
	 
 }

metronomZeileSchaffeSchuetz = \drummode { 
 }
\include "defSchaffeSchuetz.ly"

		%***Arbeitspartitur
		#(set-global-staff-size 14)
		\book { 
 	\bookOutputName "SchaffeSchuetz-Arbeitspartitur"
	\score { 
			\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'einzelstimme
			\removeWithTag #'chorpartitur
			\removeWithTag #'midiausgabe
			\scoreSchaffeSchuetz 
 } 
 }
		
		\book { 
 	\bookOutputName "SchaffeSchuetz-midi" 
 	 \score { 

		\midi {
			\tempo 4 = 120
			\context {
        \Score
        midiChannelMapping = #'instrument
      }
		}
		
	\removeWithTag #'transponierendepartitur
			\removeWithTag #'klavierauszug
			\removeWithTag #'direction
			\removeWithTag #'chorpartitur
			\removeWithTag #'partitur
			\removeWithTag #'einzelstimme
	
	\unfoldRepeats
	\scoreSchaffeSchuetz 
 } 
 }
		%Arbeitspartitur***
		
\version "2.18.2"
#(ly:set-option 'relative-includes #t)
#(set-default-paper-size "a4")
#(set-global-staff-size 16)

\include "../Noten/SchaffeSchuetz_Noten.ly"


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




\book {
  \bookOutputName "Partitur"
  \paper {
    ragged-last-bottom = ##f
    indent = 3\cm
    short-indent = 1.5\cm
    ragged-bottom = ##f
    %max-systems-per-page = 1
  }
  \header {
    title = \titel
    subsubtitle = \untertitel
    dedication = \widmung
    composer = \komponist
    poet = \herausgeber
    arranger = \arrangeur
    tagline = \schlusszeile
    instrument = "Partitur (C)"
  }
  
  
  \score {
    
    \removeWithTag #'transponierendepartitur 
    \removeWithTag #'klavierauszug
    \removeWithTag #'direction
    \removeWithTag #'einzelstimme
    \scoreSchaffeSchuetz
    
    \layout {
      \context {
        \Staff
        \override RestCollision.positioning-done = #merge-rests-on-positioning
      }
    }
  }
    
  
  
}
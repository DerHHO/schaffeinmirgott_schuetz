\version "2.18.2"
#(ly:set-option 'relative-includes #t)

#(set! paper-alist (cons '("Marschbuch" . (cons (* 148.5 mm) (* 120 mm)) ) paper-alist))

#(set-global-staff-size 16)
#(set-default-paper-size "a4")

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




\header {
  title = \titel
  subtitle = \untertitel
  dedication = \widmung
  composer = \komponist
  poet = \herausgeber
  arranger = \arrangeur
  tagline = \schlusszeile
  archivnummer = \archivNummerSchaffeSchuetz
  qrcode = \continuoQRSchaffeSchuetz
  beistrichkomponist = \beistrichKomponistSchaffeSchuetz
  beistrichuntertitel = \beistrichUntertitelSchaffeSchuetz
  copyright = \copyrightSchaffeSchuetz
}

\book {
  \paper {
    
  }
  
  \bookOutputName "Continuo"
  \header {
    instrument = "Basso continuo"
  }
  %%{<firstscorespacing>%} \markup { \vspace #0.5 } %{</firstscorespacing>%}
  \score {
  \header {
    
  }
  \removeWithTag #'partitur
  \removeWithTag #'klingendepartitur
  \removeWithTag #'transponierendepartitur
  \removeWithTag #'klavierauszug
  \removeWithTag #'direction
  \removeWithTag #'chorpartitur
  \removeWithTag #'midiausgabe
  \new Staff <<
    \new Voice { 
      \optionalTranspose { \transpose c c \ablaufzeileSchaffeSchuetz }
    }
    \new Voice = "vContinuo" {
      %{<Emergency_Section>%}
	
      %{</Emergency_Section>%}
      \compressFullBarRests
      \clef "bass"
      \optionalTranspose { \transpose c c \continuoNotenSchaffeSchuetz }
    }
    
  >>
}
%{<ausgabenpagebreak></ausgabenpagebreak>%}
  
}
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


mBreak = { }

globalSchaffeSchuetz = {
  \taktstil
  \accidentalStyle modern-voice
}

ablaufzeileSchaffeSchuetz = { }

vorspielpausenSchaffeSchuetz = {

}

sopranNotenSchaffeSchuetz = \tempTranspose \relative c'' {
  \autoBeamOff
  \globalSchaffeSchuetz
  d2. d4 b2 e2 | % 2
  c2 a2 d2 b2 | % 3
  a1 r1 | % 4
  R1*2 | % 5
  r2 d,2 e4 fis4 g4 a4 \mBreak | % 6
  \time 4/2  b2 c4 d4 a2 a2 | % 7
  g1 r1 | % 8
  a2. a4 f2 bes2 | % 9
  a2 d2. d4 b2 | \barNumberCheck #10
  e2 c2 a2 d2 ~ \mBreak | % 11
  d2 g,2 fis1 | % 12
  r2 g2. g4 e2 | % 13
  a2 f2 d2 g2 ~ | % 14
  g2 fis2 g1 \mBreak | % 15
  R1*2 | % 16
  r2 d2 e4 fis4 g4 a4 | % 17
  b2 d4 e4 a,2 ( g2 ~ | % 18
  g2 ) fis2 g1 \mBreak | % 19
  R1*2 | \barNumberCheck #20
  r1 r4 e'4 c4 a4 | % 21
  d4. d8 c2 r2 b2 | % 22
  c2 d2 gis,2 r4 e'4 \mBreak | % 23
  c4 b4 a8 ( [ b8 c8 a8 ] b8 [ c8 ] d2 ) cis4 | % 24
  d1 r1 | % 25
  R1*2 \mBreak | % 26
  r2 d2 a4 a8 a8 a4 b4 | % 27
  c2. ( b8 [ a8 ] g2 ) a2 ~ | % 28
  a2 g2 a1 \mBreak | % 29
  cis4 cis8 cis8 d4 d8 a8 b4 c2 b4 | \barNumberCheck #30
  \times 2/3  { c4 g4 g4 }
  \times 2/3  { c4. b8 c4 }
  \times 2/3  { a2 a4 }
  \times 2/3  { d4. c8 d4 }
  \mBreak | % 31
  b4 b4 c1 b2 | % 32
  a1 r1 \mBreak | % 33
  r1 r2 g4 g8 g8 | % 34
  a4 a4 fis4 fis8 fis8 g4 g8 d8 e4 g4 \mBreak | % 35
  e8. ( [ f16 ] d2 cis4 ) \times 2/3 { d4 d4 d4 }
  \times 2/3  { a'4. g8 a4 }
  | % 36
  \times 2/3  { fis2 fis4 }
  \times 2/3  { g4. fis8 g4 }
  \times 2/3  { d4 g4 g4 }
  \times 2/3  { d'4. c8 d4 }
  \mBreak | % 37
  b2 g2 fis8 ( [ g16 a16 ] g8 [ a16 b16 ] fis16 [ d16 e16 fis16 ] g16
  [ a16 b16 c16 ] | % 38
  d2 ~ d8 [ c16 b16 ] a16 [ g16 fis16 e16 ] fis4 g2 ) fis4 | % 39
  g\breve \bar "|."
}

sopranTextSchaffeSchuetz = \lyricmode {
  Schaf -- fe in mir, Gott, ein rei -- nes Herz,
  und gieb mir ei -- nen neu -- en, ge -- wis -- sen Geist,
  schaf -- fe in mir, Gott,
  schaf -- fe in mir, Gott, ein rei -- nes Herz,
  schaf -- fe in mir, Gott, ein rei -- nes Herz,
  und gieb mir ei -- nen neu -- en, ge -- wis -- sen Geist.

  von dei -- nem An -- ge -- sicht,
  ver -- wirf mich nicht von dei -- nem An -- ge -- sicht,
  und nimm dei -- nen heil -- gen Geist nicht von mir.
  Trö -- ste mich wie -- der mit dei -- ner Hül -- fe,
  und der freu -- di -- ge Geist,
  der freu -- di -- ge Geist ent -- hal -- te mich,
  trö -- ste mich wie -- der,
  trö -- ste mich wie -- der mit dei -- ner Hül -- fe,
  und der freu -- di -- ge Geist,
  der freu -- di -- ge Geist, und
  der freu -- di -- ge Geist ent -- hal -- te mich.
}

tenorNotenSchaffeSchuetz = \tempTranspose \relative c' {
  \globalSchaffeSchuetz
  \autoBeamOff
  \clef "treble_8" \time 4/2 \key c \major | % 1
  R1*4 | % 3
  d2. d4 b2 e2 | % 4
  c2 a2 d2 b2 | % 5
  a1 r1 \mBreak | % 6
  \time 4/2 r1 r2 fis2 | % 7
  g4 a4 b4 c4 d2 e4 f4 | % 8
  e2 e2 d1 | % 9
  r1 g,2. g4 | \barNumberCheck #10
  e2 a2 f2 d2 \mBreak | % 11
  g2 e2 d2 d'2 ~ | % 12
  d4 d4 b2 e2 c2 | % 13
  a2 d2 b1 | % 14
  a2 r4 d,4 e4 fis4 g4 a4 \mBreak | % 15
  b2 c4 d4 a2 a2 | % 16
  g1 r2 c2 | % 17
  g4 a4 b4 c4 d2 e4 e4 | % 18
  c2 d2 g,1 \mBreak | % 19
  r2 b2 c2 d2 | \barNumberCheck #20
  gis,2 r4 e'4 c4 b4 a8 ( [ b8 ] c4 ~ | % 21
  c4 ) b4 c2 r2 e,2 | % 22
  a2 f2 e1 \mBreak | % 23
  r4 e'4 c4 a4 d2 e2 | % 24
  d2 r4 d4 a4 a8 a8 a4 b4 | % 25
  c2 b2 a1 \mBreak | % 26
  g1 r2 d'2 | % 27
  a4 a8 a8 a4 b4 c2 f,2 | % 28
  bes2 ( ~ bes8 [ c16 d16 ] g,8 [ a16 bes16 ) ] a1 \mBreak | % 29
  R1*4 \mBreak | % 31
  r1 \times 2/3 { r4 a4 a4 } \times 2/3  { e'4. d8 e4 } | % 32
  \times 2/3  { cis2 a4 } \times 2/3 { d4. c8 d4 } b4 d4 e2 ~ \mBreak | % 33
  e2 d2 c1 | % 34
  cis4 cis8 cis8 d4 d4 b4 b8 b8 c4 c8 g8 \mBreak | % 35
  a4 bes4 a2 d,2 \times 2/3 { r4 a'4 a4 } | % 36
  \times 2/3  { d4. c8 d4 }
  b2 g2 fis8 ( [ g16 a16 ] g8 [ fis8 ] \mBreak | % 37
  g8 [ a8 g8 a8 ] b8 [ c8 b8 c8 ] d8 [ a8 b8 g8 ] d'2 ~ | % 38
  d8 [ c16 b16 ] a16 [ g16 fis16 e16 ] d2. e16 [ d16 e16 c16 ] d4. ) d8 | % 39
  g\breve \bar "|."
}

tenorTextSchaffeSchuetz = \lyricmode {
  Schaf -- fe in mir, Gott, ein rei -- nes Herz,
  und gieb mir ei -- nen neu -- en, ge -- wis -- sen Geist,
  schaf -- fe in mir, Gott, ein rei -- nes Herz,
  schaf -- fe in mir, Gott, ein rei -- nes Herz,
  und gieb mir ei -- nen neu -- en, ge -- wis -- sen Geist,
  und gieb mir ei -- nen neu -- en, ge -- wis -- sen Geist.
  
  Ver -- wirf mich nicht von dei -- nem An -- ge -- sicht,
  ver -- wirf mich nicht von dei -- nem An -- ge -- sicht,
  und nimm dei -- nen heil -- gen Geist nicht von mir,
  und nimm dei -- nen heil -- gen Geist nicht von mir.
  
  und der freu -- di -- ge Geist, 
  der freu -- di -- ge Geist ent -- hal -- te mich,
  trö -- ste mich wie -- der, 
  trö -- ste mich wie -- der mit dei -- ner Hül -- fe,
  und der freu -- di -- ge Geist ent -- hal -- te mich.
}

orgelRHNotenSchaffeSchuetz = \tempTranspose \relative c' {
  \globalSchaffeSchuetz

}

orgelLHNotenSchaffeSchuetz = \tempTranspose \relative c {
  \globalSchaffeSchuetz

}

continuoNotenSchaffeSchuetz = \tempTranspose \relative g {
  \globalSchaffeSchuetz
  \clef "bass" \time 4/2 \key c \major | % 1
  g1 g2 e2 | % 2
  f2. e4 d2 g2 ~ | % 3
  g2 fis2 g2 e2 | % 4
  a4 g4 f4 e4 d2 g,2 | % 5
  d'1 c2 b4 a4 \mBreak | % 6
  \time 4/2  g2 a4 b4 c2 d2 | % 7
  e1 d1 | % 8
  a'1 d,2 g,2 | % 9
  d'1 g2. g4 | \barNumberCheck #10
  e2 a2 f2 d2 \mBreak | % 11
  g2 e2 d1 | % 12
  g2. g4 e2 a2 | % 13
  f2 d2 g2 g,2 | % 14
  d'1 c2 b4 a4 \mBreak | % 15
  g1 c2 d2 | % 16
  g,2 g2 c1 | % 17
  g4 a4 b4 c4 d2 e4 e4 | % 18
  c2 d2 g,1 \mBreak | % 19
  e'1 a2 f2 | \barNumberCheck #20
  e2. e4 a4 gis4 a4 f4 | % 21
  g2 c,2 e1 | % 22
  a2 f2 e2. e4 \mBreak | % 23
  a4 gis4 a4 f4 g4 bes4 a2 | % 24
  d,1 d2. b4 | % 25
  a2 g2 d'1 \mBreak | % 26
  g,1 d'1 | % 27
  a'2 a4 b4 c2 f,2 | % 28
  bes1 a1 \mBreak | % 29
  a2 fis2 g4 c,4 g'2 | \barNumberCheck #30
  c,2 c2 f2 d2 \mBreak | % 31
  g2 e2 d2 e2 | % 32
  a2 fis2 g2 c2 \mBreak | % 33
  f,2 g2 c,1 | % 34
  a'2 d,2 g2 c4 c8 [ g8 ] \mBreak | % 35
  a4 bes4 a2 d,2 a2 | % 36
  d2 b2 g'2 fis2 \mBreak | % 37
  g2 e2 d1 ~ | % 38
  d2 d2. e4 d2 | % 39
  g,\breve \bar "|."

}

bezifferungSchaffeSchuetz = \figuremode {
  \globalSchaffeSchuetz
  s1*2 |
  s1*2 |
  <2>2 <[6]> s s |
  s1*2 |
  <_+>1 s2 <6>4 s |
  
  s1 s2 <_+> |
  s1*2 |
  <_+>1 s2 <_-> |
  <_+>1 s1 |
  s1*2 |
  
  s1 <_+> |
  s1*2 |
  s1*2 |
  <4>2 <_+> s1 |
  
  s1 s2 <_+> |
  s1 s1 |
  s1*2 |
  s2 <_+> s1 |
  
  <_+>1 s2 <6> |
  <_+>1 s4 <[6]> s2 |
  s1*2 |
  s2 <6> <_+>1 |
  
  s4 <[6]> s2 s4 <[6]> <4> <_+> |
  s1*2 |
  s1 <4>2 <_+> |
  
  s1 s1 |
  s1 s1 |
  <[7]>2 <[6]> <[_+]>1 |
  
  s2 <[6]> s2 <4>4 <3> |
  s1*2 |
  
  s2 <6> s <_+> |
  <_+> <[6]> s2 s |
  
  <7> s2 s1 |
  <_+>2 <_+> s s |
  
  <_+>4 s <4> <_+> <_+>2 <_+> |
  <_+>2 s s <[6]> |
  
  s2 s <_+>1 |
  s2 <_+>2. s4 <4> <_+> |
  s1*2 |
  
  
  
  
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

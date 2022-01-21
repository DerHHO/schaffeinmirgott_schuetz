\version "2.22.0"

chorpartiturSchaffeSchuetz = {
  \new ChoirStaff <<
    <<

      \new Staff \with {
        instrumentName = "Sopran"
        shortInstrumentName = "S"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vsop" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \sopranNotenSchaffeSchuetz
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \sopranNotenSchaffeSchuetz
          }
        }
        \addlyrics { \sopranTextSchaffeSchuetz }
      >>


      \new Staff \with {
        instrumentName = "Tenor"
        shortInstrumentName = "T"
        midiInstrument = "acoustic grand"

      }
      <<
        \new Voice = "vten" {
          \tag #'transponierendepartitur {
            \clef "treble"
            \transpose c c \tenorNotenSchaffeSchuetz
          }
          \tag #'klingendepartitur {
            \clef "treble"
            \tenorNotenSchaffeSchuetz
          }
        }
        \addlyrics { \tenorTextSchaffeSchuetz }

      >>
    >>
  >>
}
orgelsystemSchaffeSchuetz = {
  <<
    \new PianoStaff <<

      \set PianoStaff.instrumentName = "Orgel"
      \set PianoStaff.shortInstrumentName = "Org."	<<

        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

        }
        <<
          \new Voice = "vrH" {
            \tag #'transponierendepartitur {
              \clef "treble"
              \transpose c c \orgelRHNotenSchaffeSchuetz
            }
            \tag #'klingendepartitur {
              \clef "treble"
              \orgelRHNotenSchaffeSchuetz
            }
          }

        >>


        \new Staff \with {
          instrumentName = ""
          shortInstrumentName = ""
          midiInstrument = "acoustic grand"

          \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 9) (minimum-distance . 7) (padding . 1) (stretchability . 5))
        }
        <<
          \new Voice = "vlH" {
            \tag #'transponierendepartitur {
              \clef "bass"
              \transpose c c \orgelLHNotenSchaffeSchuetz
            }
            \tag #'klingendepartitur {
              \clef "bass"
              \orgelLHNotenSchaffeSchuetz
            }
          }

        >>

      >>
    >>
  >>

}

scoreSchaffeSchuetz = {
  <<
    \chorpartiturSchaffeSchuetz
    %\orgelsystemSchaffeSchuetz
    \new Staff \with {
      instrumentName = "Basso continuo"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vContinuo" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenSchaffeSchuetz
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenSchaffeSchuetz
        }
      }
      \new FiguredBass \bezifferungSchaffeSchuetz

    >>


    %{\new Staff \with {
      instrumentName = "Violoncello/Kontrabass/Fagott"
      shortInstrumentName = "B.c."
      midiInstrument = "acoustic grand"

    }
    <<
      \new Voice = "vBassgruppe" {
        \tag #'transponierendepartitur {
          \clef "bass"
          \transpose c c \continuoNotenSchaffeSchuetz
        }
        \tag #'klingendepartitur {
          \clef "bass"
          \continuoNotenSchaffeSchuetz
        }
      }

    >>%}
  >>
}
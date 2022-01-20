
chorpartiturSchaffeSchuetz = {
	\new ChoirStaff <<
			<<

		\new Staff \with {
			instrumentName = "Sopran 1"
			shortInstrumentName = "S 1"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vsop1" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \sopranINotenSchaffeSchuetz
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranINotenSchaffeSchuetz
				}
			}
			
		>>


		\new Staff \with {
			instrumentName = "Sopran 2"
			shortInstrumentName = "S 2"
			midiInstrument = "acoustic grand"
			
		}
			<<
			\new Voice = "vsop2" {
				\tag #'transponierendepartitur {
					\clef "treble"
					\transpose c c \sopranIINotenSchaffeSchuetz
				}
				\tag #'klingendepartitur {
					\clef "treble"
					\sopranIINotenSchaffeSchuetz
				}
			}
			
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

scoreSchaffeSchuetz = {	<<\chorpartiturSchaffeSchuetz
\orgelsystemSchaffeSchuetz


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
			
		>>


		\new Staff \with {
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
			
		>>
	>>
}
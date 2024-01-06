#import "/template/entries.typ": *

#show: create_program_entry.with(
  title: "53D_Over_Under/src/brainMenus/"
)

= autonMenu.cpp <autonMenu.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/brainMenus/autonMenu.cpp"))

= keybindMenu.cpp <keybindMenu.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/brainMenus/keybindMenu.cpp"))

= motorMenu.cpp <motorMenu.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/brainMenus/motorMenu.cpp"))

= notesMenu.cpp <notesMenu.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/brainMenus/notesMenu.cpp"))

= sensorMenu.cpp <sensorMenu.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/brainMenus/sensorMenu.cpp"))
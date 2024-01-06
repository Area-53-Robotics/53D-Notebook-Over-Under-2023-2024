#import "/template/entries.typ": *
#import "/template/globals.typ": *

#show: create_program_entry.with(
  title: "53D_Over_Under/src/"
)

= autonomous.cpp <autonomous.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/autonomous.cpp"))

= autonSelector.cpp <autonSelector.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/autonSelector.cpp"))

= global.cpp <global.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/global.cpp"))

= main.cpp <main.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/main.cpp"))

= opcontrol.cpp <opcontrol.cpp>
#raw(block: true, lang: "cpp", read("53D_Over_Under/src/opcontrol.cpp"))
#import "/template/entries.typ": *
#import "/template/globals.typ": *

#show: create_program_entry.with(
  title: "53D_Over_Under/src/"
)

= autonomous.cpp <autonomous.cpp>
#raw(block: true, lang: "cpp", read("src/autonomous.cpp"))

= global.cpp <global.cpp>
#raw(block: true, lang: "cpp", read("src/global.cpp"))

= main.cpp <main.cpp>
#raw(block: true, lang: "cpp", read("src/main.cpp"))

= opcontrol.cpp <opcontrol.cpp>
#raw(block: true, lang: "cpp", read("src/opcontrol.cpp"))
#import "/template/entries.typ": *

#show: create_program_entry.with(
  title: "53D_Over_Under/src/subsystemFiles/"
)

= wings.cpp <wings.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/wings.cpp"))
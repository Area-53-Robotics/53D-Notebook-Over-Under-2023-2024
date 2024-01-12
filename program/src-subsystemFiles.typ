#import "/template/entries.typ": *

#show: create_program_entry.with(
  title: "53D_Over_Under/src/subsystemFiles/"
)

= drive.cpp <drive.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/drive.cpp"))

= wings.cpp <wings.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/wings.cpp"))
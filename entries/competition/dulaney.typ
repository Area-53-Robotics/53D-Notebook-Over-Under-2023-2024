#import "/template/template.typ": *

#show: create_entry.with(
  title: "Dulaney Royal Rumble",
  type: "competition",
  start_date: datetime(year: 2023, month: 11, day: 4),
  attendance: "Ajibola, Ishika, Makhi, Rory"
)

= Competition Goals

= Matches
#nb_tournament_match(
  match: "Q8",
  red_alliance: (teams: ("53B", "53C"), score: 84),
  blue_alliance: (teams: ("53D", "768A"), score: 27),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("", ""), score: 0),
  blue_alliance: (teams: ("", ""), score: 0),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "",
  )
)

= Subsystem Reflection
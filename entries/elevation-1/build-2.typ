#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 14),
  end_date: datetime(year: 2024, month: 2, day: 16),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= ----/--/--
#nb_todo(
  date: datetime(year: 2024, month: 2, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the bar hang elevation mechanism. (Everyone)"),
  )
)

[Intro blurb here]

== Delegation
- 

#grid(
  columns: 2,

  [
    == Materials
    - 

    == Assembly
    - 
  ],

  [
    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )

    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )
  ]
)
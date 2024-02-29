#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1.2",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 2),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= ----/--/--
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
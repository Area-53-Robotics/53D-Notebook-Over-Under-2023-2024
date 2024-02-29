#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1.1",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 7),
  end_date: datetime(year: 2024, month: 2, day: 7),
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
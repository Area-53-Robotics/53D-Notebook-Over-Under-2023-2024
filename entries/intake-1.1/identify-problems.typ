#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1.1 - Problems",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 1),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Rory",
  witnessed: "Eric",
)

#nb_todo(
  date: datetime(year: 2024, month: 2, day: 1),
  (
    (true, "Identify existing problems with the intake (Ajbola, Jin, & Ishika)"),
    (true, "Identify existing problems with the kicker platform (Makhi, Rory, & Eric)"),
  )
)

#grid(
  columns: 2,
  [
    Although the intake works, we have experienced some prevalent problems with it at our recent tournaments. The rubber bands had a weaker grip on the triball compared to the flex wheel intake because the flex wheel can manipulate itself around the triball. The flex wheels' rubber property creates traction between the triball and the surface of the flex wheel. 

    While watching the Kalahari Classic signature event, we observed that most teams are running an intake with flex wheels instead of rubber bands. We realized that with continued usage of our rubber band intake, the rubber bands will slowly wear off and get tangled with each other.
  ],

  figure(
    image("./identify-problems/3134K.png", height: 30%),
    caption: [Team 3134K's robot from the Kalahari Classic signature event. They have a flexwheel intake which allows them to effortlessly scoop up triballs.]
  )
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: red, align: center)[*Problem*], 
  cellx(fill: green, align: center)[*Solution*],
  image("./identify-problems/Rubber band intake 2.excalidraw.svg"),
  image("./identify-problems/Flex wheel intake 2.excalidraw.svg"),
  [
    Rubber bands stretch from one side to the other. However, these rubber bands have a tendency to entangle.
  ],
  [
    Flex wheels have a higher kinetic friction than rubber bands, allowing them to grip onto the triballs easier.
  ],
)
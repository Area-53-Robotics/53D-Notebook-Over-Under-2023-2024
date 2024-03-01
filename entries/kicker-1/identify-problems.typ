#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1 - Problems",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 1),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Eric",
)

#grid(
  columns: (60%, 40%),
  column-gutter: 5pt,

  [
    Although the meta #glossary-footnote[Meta] of Over Under has shifted away from introducing matchloads (as we analyzed in our #nb_entry_reference(date: datetime(year: 2024, month: 1, day: 31), type: "identify", title: "Game Manual")), it is important to have a consistent match loading mechanism on the robot for skills runs. In the skills meta, teams introduce matchloads as quickly as possible and then score them all at once as quickly as possible. 

    While watching higher level tournaments, we discovered an innovative kicker triball platform. 5203G Gremlin has a lexan platform design that is molded from a VEX trophy case. This shape perfectly fits the shape of a triball, allowing for consistent orientation of the triball. 
  ],

  figure(
    image("./identify-problems/5203G Kicker Tray.png"),
    caption: [The tray design that team 5203G uses. The walls were heat bent and molded from a trophy case.]
  )
)

#tablex(
  columns: 2,

  cellx(fill: red)[Problem],
  cellx(fill: green)[Solution],
  image("./identify-problems/Identify problem ishika.excalidraw.svg", height: 15em),
  image("./identify-problems/Tray platform solution.excalidraw.svg", height: 15em),
  [Our lexan wings kicker platform is designed for the triball to slide into place, however, there is nothing to hold them in place afterwards. If any small movement or disturbance occurs to the robot, the triball falls off or its trajectory is interrupted.],
  [With this design, the standoffs will keep the triball in a set position. The side walls will prevent the triball from falling off the platform. Overall, this design provides more optimized grouping, allowing for better shot consistency during skills runs.]
)
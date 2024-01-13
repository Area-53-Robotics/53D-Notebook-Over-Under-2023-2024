#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "test",
  start_date: datetime(year: 2023, month: 11, day: 3),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory"
)

To ensure that our intake was functioning that the level that we wanted, we tested the catauplt on two of the "Purposes of an Outtake" that we identified on 2023/9/16. The two that we chose to test are "Game Element Acquisition" and "Handling."

= Stationary Intake Reliability Test (Game Element Acquisition)
== Materials
- Robot
- Controller
- 30 Triballs
- Notebook and pen to write down results
/*
== Procedures
+ Set the robot flat on the field against the field perimeter
+ Place a triball on the catapult and fire it
+ After the triball has finished moving, measure the distance of the triball from the center of the robot
+ Repeat steps 2-3 for a total of 5 trials

== Results
#align(center)[
  #tablex(
    columns: 6,
    rows: 2,

    cellx(fill: gray.lighten(20%))[Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    cellx(fill: gray.lighten(20%))[Distance (ft)], [5.62], [4.93], [5.34], [5.56], [5.65],
  )
]

#gridx(
  columns: 2,
  align: center + horizon,

  [
    #tablex(
      columns: 2,
      align: center + horizon,

      cellx(fill: gray.lighten(20%), colspan: 2)[Statistics],
      [Average], [5.42],
      [Range], [0.72],
      [Variance], [	0.059833333333333],
      [Standard Deviation], [0.2446085307861],
    )
  ],

  // [#image("./test/Triball Distance from Robot.svg")]
)

== Conclusion
The catapult was hitting around 5 to 6 feet. While the variance was tolerable, the middle bar is 6 feet away from the sides of the field perimeter that are perpendicular to it. We are not sure if the catapult will be enough to consistency hit triballs over the middle barrier.

#colbreak()

= Amount of Triballs Over the Middle Barrier (Manipulation)
== Materials
- Robot
- 30 Triballs
- Notebook and pen to record data

== Procedures
+ Set the robot flat on the field against the field perimeter
+ Place a triball on the catapult and fire it
+ After the triball has finished moving, note down whether the triball crossed the barrier or not
+ Remove the triball from the field
+ Repeat steps 2-4 for a total of 30 trials

== Results

#align(center)[
  #tablex(
    columns: 2,
    align: center + horizon,

    cellx(fill: gray.lighten(20%))[\# Succeeded], cellx(fill: gray.lighten(20%))[\# Failed],
    [23], [7]
  )
]


// #image("./test/Count of Triballs Crossing the Middle Barrier.svg", height: 30%)


== Conclusion
Although we are not satisfied with the catapult's consistency, we hope to tune it better before the upcoming tournament.
*/
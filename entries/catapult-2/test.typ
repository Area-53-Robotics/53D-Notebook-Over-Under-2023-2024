#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #2",
  type: "test",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)

Today we redid the catapult test from our

#nb_entry_reference(date: datetime(year: 2023, month: 10, day: 7), type: "test", title: "Catapult #1")

#h(0.5em) to test the effectiveness of the improvements we made in our

#nb_entry_reference(date: datetime(year: 2023, month: 11, day: 17), type: "build", title: "Catapult #2")

. This test focuses on two aspects of the catapult that we identified in our

// #nb_entry_reference(date: datetime(year: 2023, month: 9, day: 16), type: "identify", title: "Outtake")

, being _Scoring_ and _Multihandling_.

= Triball Distance from Robot (Scoring)
== Materials
- Robot
- 5 Triballs
- Notebook and pen to record data

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
    cellx(fill: gray.lighten(20%))[Distance (ft)], [7.42], [7.34], [7.64], [7.13], [7.23],
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
      [Average], [7.352],
      [Range], [0.51],
      [Variance], [0.030376],
      [Standard Deviation], [0.1948589233266],
    )
  ],

  [#image("./test/Triball Distance from Robot.svg")]
)

== Conclusion
We are very pleased with this result. With a 2 feet improvement from the previous catapult, we are very confident that we can consistently get triballs over the middle bar. The range, variance, and standard deviation also decreased with our new catapult compared to our old catapult, meaning that the shots that we make will also more consistently land in the same area.

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
    [28], [2]
  )
]


#image("./test/Count of Triballs Crossing the Middle Barrier.svg", height: 30%)


== Conclusion

The new catapult is 14.3% more consistent in getting triballs over the barrier, which is a massive improvement. We are extremely happy with our results, and we think that this catapult is ready for the Hereford Zone competition tomorrow.
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "test",
  start_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "",
)


To ensure that our drivetrain was functioning that the level that we wanted, we tested the drivetrain on two of the "Aspects of a Drivetrain" that we identified on 2023/7/15.

= Speed Test (Mobility)
== Materials
- Robot
- Controller
- Tape
- Stopwatch
- Notebook and pen to record data

== Procedures
+ Clear the game elements on the field to ensure a flat and obstacle-free surface.
+ Mark the starting and ending points of the distance. The distance will be 3 meters.
+ Place the front of the robot behind the starting point
+ Drive the robot forward until the front of it crosses the end line
+ Record the time it takes for the robot to get to the end point
+ Repeat steps 3-5 for a total of 5 trials

== Results
#align(center)[
  #tablex(
    columns: 6,
    rows: 2,

    map-cols: (col, cells) => cells.map(c => {
      if col == 0 {
        (..c, fill: gray.lighten(20%))
      } else {c}
    }),

    [Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Time (s)], [1.95], [1.90], [1.91], [1.91], [1.93],
    [Speed (in/s)], [60.36], [61.92], [61.56], [61.56], [60.96],
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
      [Average], [61.271666666667],
      [Range], [1.56],
      [Variance], [0.25248055555556],
      [Standard Deviation], [0.50247443273818],
    )
  ],

  [#image("./test/Drivetrain Speed.svg")]
)

== Conclusion
This test was successful, as the average drivetrain speed exceeded the goal we set in the identify phase, which was 56.723 in/sec.

#nb_admonition(type: "note")[When we add other subsystems to the robot, the drivetrain will get slightly slower.]

= Pushing Test (Foundation)
== Materials
- Robot
- Box
- Set of weights
- Measuring tape
- Stopwatch
- Notebook and pen for recording data

== Procedures
+ Set the robot flat on the field against the field perimeter
+ Place a box with 5 lb worth of weights in front of the robot
+ Drive the robot forward for 10 seconds
+ Measure the distance between the front of the box at its starting point and the front of the box at its end point
+ Write down the distance
+ Repeat steps 3-5 with 5 lb more weight for a total of 5 trials 


== Results
#align(center)[
  #tablex(
    columns: 6,
    rows: 2,

    map-cols: (col, cells) => cells.map(c => {
      if col == 0 {
        (..c, fill: gray.lighten(20%))
      } else {c}
    }),

    [Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Weight (lb)], [5], [10], [15], [20], [25],
    [Distance (ft)], [13.64], [11.34], [8.97], [7.32], [6.83],
  )
]

#image("./test/Distance (ft) vs. Trial.svg", height: 30%)

== Conclusion
Most bots weigh from 15 to 20 pounds. As it stands we are confident in our ability to push them, or at least resist getting pushed.
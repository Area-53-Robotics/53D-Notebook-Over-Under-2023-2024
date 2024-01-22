#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "test",
  start_date: datetime(year: 2023, month: 12, day: 15),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
  designed: "Ishika",
  witnessed: "Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 15),
  (
    (true, "Test the flywheel for speed and scoring distance (Everyone)"),
    (true, "Program an auton for the Capital Beltway Challenge (Ajibola & Ishika)"),
  )
)

To ensure that our flywheel was ready for the Capital Beltway Challenge tournament tomorrow, we tested the flywheel on the _Game Element Acquisition_ and _Handling_ "Purposes of an Outtake" that we identified in our #nb_entry_reference(date: datetime(year: 2023, month: 9, day: 16), type: "identify"), along with testing the speed of the flywheel.

= Speed and Acceleration Test
== Objective
We want the flywheel to reach 480 in/sec and remain stable at that speed or a higher speed within 5 seconds of the flywheel's activation.

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - Controller
    - Computer terminal
    - Notebook and pen to write down results
  ],

  [
    == Procedures
    + Set the robot flat on the field against the field perimeter
    + Turn on the robot and activate the program
    + After the flywheel begins spinning, wait 5 seconds
    + Write down the average flywheel velocity after 5 seconds
    + Repeat steps 2-4 for a total of 5 trials
  ],
)

== Data Collection
To collect the data from this test, we temporarily replaced our usual ```cpp opcontrol()``` code with the following:

#align(center)[*53D_OverUnder/src/autonomous.cpp*]
```cpp
void opcontrol() {
  // Integer variable representing how many seconds have passed since the flywheel began spinning
  int secondsPassed = 0;

  // Initiates an infinite loop until we turn the program off
  while (true) {
    // Commands the flywheel to spin at maximum velocity
    FlywheelMotor.move(127);

    // Updates the variable containing how many seconds have passed
    secondsPassed++;

    // Prints to the computer terminal how many seconds have passed along with the flywheel velocity (converted to in/sec) at that time
    std::cout << secondsPassed << ", " << (FlywheelMotor.get_actual_velocity() * 12.566 / 60) << std::endl;

    // Delays the next run of the loop by 1 second (1000 milliseconds)
    pros::delay(1000)
  }
}
```

== Results
#gridx(
  columns: 2,
  align: center + horizon,

  [
    #tablex(
      columns: 6,
      rows: 2,
      align: center + horizon,

      fill: (col, row) => {
        if col == 0 {
          if row == 1 {
            gray.lighten(20%)
          } else {
            white
          }
        } else {
          if row == 0 {
            gray.lighten(20%)
          } else {
            white
          }
        }
      },

      hlinex(start: 1, y: 0),
      vlinex(start: 1, x: 0),

      [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
      [Velocity (in/sec)], [504.02], [502.67], [503.04], [503.96], [502.88],
    )
  ],

  tablex(
    columns: 2,
    align: center + horizon,

    cellx(fill: gray.lighten(20%), colspan: 2)[Statistics],
    [Average], [503.314],
    [Range], [1.35],
    [Variance], [0.31878399999998],
    [Standard Deviation], [0.56460959963499],
  ),

  align(center)[#image("./test/Velocity (in_sec) vs. Trial.svg")]
)

== Conclusion
We are happy with the results. It seems like the flywheel can reach a high velocity quickly enough to be viable for competition usage.

#colbreak()

= Triball Distance from Robot (Scoring)

== Objective
On average, we want the triballs to land at least 6.5 ft away from the robot.

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - 5 Triballs
    - Notebook and pen to record data
  ],

  [
    == Procedures
    + Set the robot flat on the field against the field perimeter
    + Wait for the flywheel to reach max velocity (about 5 seconds)
    + Place a triball on the flywheel and launch it
    + After the triball has finished moving, measure the distance of the triball from the center of the robot
    + Repeat steps 3-4 for a total of 5 trials
  ],
)

== Results
#align(center)[
  #tablex(
    columns: 6,
    rows: 2,

    cellx(fill: gray.lighten(20%))[Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    cellx(fill: gray.lighten(20%))[Distance (ft)], [6.89], [7.03], [6.58], [6.98], [7.13],
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
      [Average], [6.922],
      [Range], [0.55],
      [Variance], [0.035256],
      [Standard Deviation], [0.18776581158454],
    )
  ],

  [#image("./test/Triball Distance from Robot.svg")]
)

== Conclusion
We observed that the flywheel had a lower range than the catapult. However we believe that the advantages outweigh the disadvantages because the flywheel is more faster and quicker at firing match loads than the catapult.

#colbreak()

= Amount of Triballs Over the Middle Barrier (Manipulation)

== Objective
We want at least 75% of the triballs shot by the flywheel to make it over the middle barrier.

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - 30 Triballs
    - Notebook and pen to record data
  ],

  [
    == Procedures
    + Set the robot flat on the field against the field perimeter
    + Wait for the flywheel to reach max velocity (about 5 seconds)
    + Place a triball on the flywheel and launch it
    + After the triball has finished moving, note down whether the triball crossed the barrier or not
    + Remove the triball from the field
    + Repeat steps 3-5 for a total of 30 trials
  ],
)

== Results
#align(center)[
  #tablex(
    columns: 2,
    align: center + horizon,

    cellx(fill: gray.lighten(20%))[\# Succeeded], cellx(fill: gray.lighten(20%))[\# Failed],
    [19], [11]
  )
]


#image("./test/Count of Triballs Crossing the Middle Barrier.svg", height: 30%)


== Conclusion

As we expected, the flywheel is more random and less accurate than the catapult. However, we believe that if we raise the flywheel higher, we can have more air time with the triballs, resulting with a higher chance of the triballs getting over the middle barrier.

We also noticed that the trajectory of the triballs is affected with how we place the triballs onto the flywheel. At a higher angle, there is a bounce that launches it lower than we want. This will be crucial to keep in mind when match loading during the tournament tomorrow.
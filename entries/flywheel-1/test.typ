#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "test",
  start_date: datetime(year: 2023, month: 12, day: 14),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory"
)

// To ensure that our intake was functioning that the level that we wanted, we tested the catapult on two of the "Purposes of an Outtake" that we identified in our #nb_entry_reference(date: datetime(year: 2023, month: 9, day: 16), type: "identify"). The two that we chose to test are "Game Element Acquisition" and "Handling."

= Speed and Acceleration Test

#v(1em)

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - Controller
    - Notebook and pen to write down results
  ],

  [
    == Procedures
    + Place the robot on a flat surface
    + Lift the flywheel up 
    + Spin the flywheel and record maximum speed and acceleration in 5 seconds
    + Repeat step 3 until we have 5 trials
  ],
)

== Results
#gridx(
  columns: 2,
  align: center + horizon,

  [
    #tablex(
      columns: 2,
      rows: 3,
      align: center + horizon,

      fill: (col, row) => {
        if col == 0 {
          gray.lighten(20%)
        } else {
          white
        }
      },

      [1 Attempt Needed], [17],
      [2 Attempts Needed], [8],
      [3 Attempts Needed], [5],
    )
  ],

  [#image("./test/Intake Reliability Performance.svg")]
)

== Conclusion
We are a bit unhappy with the consistency and reliability of our intake. While the intake did succeed, we want it to take the least attempts possible to intake so that we can save time during matches. We hope to tune the intake better after the next tournament.

#colbreak()

= Release Test (Handling)

#v(1em)

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - Controller
    - 30 Triballs
    - Notebook and pen to write down results
  ],

  [
    == Procedures
    + Clear the goal of all triballs
    + Set the robot flat on the field 6 inches away from the goal with the front (intake side) facing the goal
    + Place a triball inside of the intake
    + Drive the robot towards the goal
    + Attempt to release the triball into the goal
    + Repeat step 5 until the triball has successfully been released
    + Write down how many attempts it took to complete step 5
    + Repeat steps 1-7 with a different triball for a total of 30 trials
  ],
)

== Results
#gridx(
  columns: 2,
  align: center + horizon,

  [
    #tablex(
      columns: 2,
      rows: 2,
      align: center + horizon,

      fill: (col, row) => {
        if col == 0 {
          gray.lighten(20%)
        } else {
          white
        }
      },

      [1 Attempt Needed], [27],
      [2 Attempts Needed], [3],
    )
  ],

  [#image("./test/Intake Release Performance.svg")]
)

== Conclusion
We are very satisfied with how reliable the intake is at releasing the triballs into the net. This skill is especially crucial for our robot because we are a descore robot, so we lack other functionalities that other teams will have such as elevation.
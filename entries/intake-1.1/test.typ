#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Intake #1.1",
  type: "test",
  start_date: datetime(year: 2024, month: 1, day: 12),
  attendance: "Ajibola, Jin, Ishika, Rory, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

With our extra time this meeting, we decided to test the new changes that we recently made to our intake. We tested the intake on two of the "Purposes of an Intake" that we identified in our #past_nb_entry_reference(date: datetime(year: 2023, month: 10, day: 14), type: "identify", title: "Intake"), being "Game Element Acquisition" and "Handling."

= Intake Reliability Test (Game Element Acquisition)

== Objective
We want the intake to only need 1 attempt to intake the triball in 90% or more of our trials.

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
    + Set the robot flat on the field with the back (non-intake side) against the field perimeter
    + Place a triball 4 inches in front of the robot
    + Drive the robot forward while attempting to intake the triball
    + Repeat step 3 until the triball has successfully been intook
    + Write down how many attempts it took to complete step 3
    + Remove the triball from the intake
    + Repeat steps 1-6 with a different triball for a total of 30 trials
  ],
)

== Results
#align(center)[
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

        [1 Attempt Needed], [30],
        [2 Attempts Needed], [0],
        [3 Attempts Needed], [0],
      )
    ],

    [
      #cetz.canvas({
        import cetz.draw: *
        import cetz.chart

        let data = (
          ([1 Attempt], 30),
          ([2 Attempts], 0),
          ([3 Attempts], 0),
        )

        let colors = (green, yellow.darken(10%), red)

        chart.piechart(
          data,
          value-key: 1,
          label-key: 0,
          radius: 2.625,
          slice-style: colors,
          inner-radius: 0.75,
          outset: 0,
          inner-label: (
            content: (value, label) => [
              #text(white, label)
            ],
            radius: 110%
          ),
          outer-label: (content: "%", radius: 120%)
        )
      })
    ]
  )
]

== Conclusion
The intake exceeded our expectations by only needing 1 attempt to intake a triball 100% of the trials. We are very satisfied with its consistency.

#colbreak()

= Release Test (Handling)

== Objective
We want the intake to only need 1 attempt to release the triball in 90% or more of our trials.

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
#align(center)[
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

    [
      #cetz.canvas({
        import cetz.draw: *
        import cetz.chart

        let data = (
          ([1 Attempt], 27),
          ([2 Attempts], 3),
          ([3 Attempts], 0),
        )

        let colors = (green, yellow.darken(10%), red)

        chart.piechart(
          data,
          value-key: 1,
          label-key: 0,
          radius: 3,
          slice-style: colors,
          inner-radius: 0.8571,
          outset: 0,
          inner-label: (
            content: (value, label) => [
              #text(white, label)
            ],
            radius: 110%
          ),
          outer-label: (content: "%", radius: 120%)
        )
      })
    ]
  )
]

== Conclusion
The release test of our intake produced the same results as our previous intake, which is satisfactory. Because the intake succeeded at releasing the triballs with only 1 attempt 90% of the time, our objective ws met. The new sleds on the intake were incredibly smooth and assisted in helping the triballs go easily under the net.
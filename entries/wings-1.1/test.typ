#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1.1",
  type: "test",
  start_date: datetime(year: 2023, month: 2, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Rory",
  witnessed: "Eric",
)

To evaluate the effectiveness of our new wings, we tested them on the same criteria that we tested our previous wings iterations on: Air Loss.

= Air Loss Test
== Objective
We want at least at least 20 PSI remaining in the air canister after the wings have been deployed 5 times.

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
      - Wings
      - Air Canister
    - Controller
    - Pressure Pump
    - Notebook and pen to record data
  ],

  [
    == Procedures
    + Using the pressure pump, add pressure to the air canister until it reaches 100 PSI
    + Set the robot flat on the field
    + Deploy the wings
    + Measure and write down the PSI (pounds per square inch) remaining in the canister
    + Repeat steps 3-4 until the pistons do not have enough PSI to deploy
    + Repeat steps 1-4 for a total of 5 trials
  ],
)

== Results
#align(center)[
  #tablex(
    columns: 7,

    map-cols: (col, cells) => cells.map(c => {
      if col == 0 {
        (..c, fill: gray.lighten(20%))
      } else {c}
    }),

    [Deployment \#], [0], [1], [2], [3], [4], [5],
    [Trial 1], [100 PSI], [96 PSI], [72 PSI], [56.5 PSI], [37 PSI], [12.5 PSI],
    [Trial 2], [100 PSI], [93.5 PSI], [72.5 PSI], [55.5 PSI], [36 PSI], [13.5 PSI],
    [Trial 3], [100 PSI], [97 PSI], [65.5 PSI], [52.5 PSI], [34.5 PSI], [13.5 PSI],
    [Trial 4], [100 PSI], [94.5 PSI], [66 PSI], [54.5 PSI], [35.5 PSI], [13.5 PSI],
    [Trial 5], [100 PSI], [97 PSI], [69.5 PSI], [53.5 PSI], [35.5 PSI], [14 PSI],
    [Average], [100 PSI], [95.6 PSI], [69.1 PSI], [52.4 PSI], [35.7 PSI], [13.4 PSI],
    [Average Net Loss], [0], [-4.4 PSI], [-26.5 PSI], [-16.7 PSI], [-16.7 PSI], [-22.3 PSI],
    [Average Total Loss], [0], [-4.4 PSI], [-30.9 PSI], [-45.9 PSI], [-64.3 PSI], [-86.6 PSI],
  )
]

#image("./test/Average PSI Remaining vs. Deployment.svg", height: 40%)

#image("./test/Average Net PSI Loss vs. Deployment.svg", height: 40%)

== Conclusion
The air loss was very similar to our previous wings which shocked us. We thought that since we changed our wings, we would face less air leaking issues. We are not satisfied with this result, and we may have to look for ways to increase the versatility of each individual wing deployment rather than trying to reduce air usage.
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1 - Re-test",
  type: "test",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

Today we redid the wings test from our #nb_entry_reference(date: datetime(year: 2023, month: 10, day: 13), type: "test", title: "Wings #1") #h(0.5em) to test the effectiveness of the improvements we made in our #nb_entry_reference(date: datetime(year: 2023, month: 11, day: 18), type: "build", title: "Wings #1").
We tested the air loss of the wings as they are continuously deployed to ensure that our wings are usable throughout the round.

= Air Loss
== Materials
- Robot
  - Wings
  - Air Canister
- Controller
- Pressure Pump
- Notebook and pen to record data

== Procedures
+ Using the pressure pump, add pressure to the air canister until it reaches 100 PSI
+ Set the robot flat on the field
+ Deploy the wings
+ Measure and write down the PSI (pounds per square inch) remaining in the canister
+ Repeat steps 3-4 until the pistons do not have enough PSI to deploy
+ Repeat steps 1-4 for a total of 5 trials

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
    [Trial 1], [100 PSI], [95 PSI], [70 PSI], [54.5 PSI], [36 PSI], [12.5 PSI],
    [Trial 2], [100 PSI], [95.5 PSI], [70.5 PSI], [52.5 PSI], [36 PSI], [13 PSI],
    [Trial 3], [100 PSI], [96 PSI], [68.5 PSI], [51 PSI], [33.5 PSI], [11.5 PSI],
    [Trial 4], [100 PSI], [95.5 PSI], [68 PSI], [52.5 PSI], [35 PSI], [13.5 PSI],
    [Trial 5], [100 PSI], [97 PSI], [69.5 PSI], [51.5 PSI], [37.5 PSI], [12 PSI],
    [Average], [100 PSI], [95.8 PSI], [69.3 PSI], [52.4 PSI], [35.6 PSI], [12.5 PSI],
    [Average Net Loss], [0], [-4.2 PSI], [-26.5 PSI], [-16.9 PSI], [-16.8 PSI], [-23.1 PSI],
    [Average Total Loss], [0], [-4.2 PSI], [-30.7 PSI], [-47.6 PSI], [-64.4 PSI], [-87.5 PSI],
  )
]

#image("./test-2/Average PSI Remaining vs. Deployment.svg", height: 40%)

#image("./test-2/Average Net PSI Loss vs. Deployment.svg", height: 40%)

== Conclusion
From this test, we noticed that the wings are experiencing slightly more air loss compare to the first test. However, the increase is by -0.1 PSI per deployment, which is so small that it is negligible. The new wings lock better and are a lot stronger than the previous ones, so the slight trade-off in air loss is worth it. We are extremely satisfied with the new wings.
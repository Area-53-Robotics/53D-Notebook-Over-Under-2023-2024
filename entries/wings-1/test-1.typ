#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "test",
  start_date: datetime(year: 2023, month: 10, day: 13),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Rory",
)

To ensure that our wings are usable throughout the round, we tested the air loss of the wings as they are continuously deployed.

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
    [Trial 1], [100 PSI], [96.5 PSI], [70 PSI], [53.5 PSI], [37.5 PSI], [14.5 PSI],
    [Trial 2], [100 PSI], [98 PSI], [70.5 PSI], [54 PSI], [36 PSI], [13 PSI],
    [Trial 3], [100 PSI], [96 PSI], [68.5 PSI], [50 PSI], [35.5 PSI], [12.5 PSI],
    [Trial 4], [100 PSI], [96.5 PSI], [71 PSI], [53.5 PSI], [37.5 PSI], [14 PSI],
    [Trial 5], [100 PSI], [96 PSI], [70.5 PSI], [54.5 PSI], [35.5 PSI], [13 PSI],
    [Average], [100 PSI], [96.6 PSI], [70.1 PSI], [53.1 PSI], [36.3 PSI], [13.4 PSI],
    [Average Net Loss], [0], [-3.4 PSI], [-26.5 PSI], [-17 PSI], [-16.8 PSI], [-22.9 PSI],
    [Average Total Loss], [0], [-3.4 PSI], [-29.9 PSI], [-46.9 PSI], [-63.7 PSI], [-86.6 PSI],
  )
]


#image("./test-1/Average PSI Remaining vs. Deployment.svg", height: 40%)

#image("./test-1/Average Net PSI Loss vs. Deployment.svg", height: 40%)

== Conclusion
The data confirms that there is not a huge leak in the pneumatics, which satisfies our test prompt. However, on average the PSI remaining in the air tank decreases by -18 per wing deployment. This is not negligible, and we will have to keep this in mind when redesigning the wings.
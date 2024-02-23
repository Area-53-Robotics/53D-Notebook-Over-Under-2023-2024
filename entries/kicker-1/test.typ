#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Kicker #1",
  type: "test",
  start_date: datetime(year: 2023, month: 1, day: 12),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
  designed: "Eric",
  witnessed: "Rory",
)

To evaluate the performance of the kicker, we tested it the same way we tested the catapult and flywheel: on the _Game Element Acquisition_ and _Handling_ "Purposes of an Outtake" that we identified in our #past_nb_entry_reference(date: datetime(year: 2023, month: 9, day: 16), type: "identify").

= Triball Distance from Robot (Scoring)

== Objective
On average, we want the triballs to land at least 5.5 ft away from the robot.

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
    + Place a triball on the kicker and launch it
    + After the triball has finished moving, measure the distance of the triball from the center of the robot
    + Repeat steps 2-3 for a total of 5 trials
  ],
)

== Results
#align(center)[
  #tablex(
    columns: 6,
    rows: 2,

    cellx(fill: gray.lighten(20%))[Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    cellx(fill: gray.lighten(20%))[Distance (ft)], [5.68], [5.75], [5.64], [5.23], [5.47],
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
      [Average], [5.554],
      [Range], [0.52],
      [Variance], [0.034744],
      [Standard Deviation], [0.18639742487492],
    )
  ],

  box(stroke: 2pt)[#image("./test/Triball Distance from Robot.svg")]
)

== Conclusion
The kicker satisfied our objective for an average distance of 5.5 ft. This means that we can rely on the kicker to reliably score triballs when match loading. Although the kicker scores the triballs at a lower average distance than the flywheel (6.922 ft), the range, variance, and standard deviation of the shots made using the kicker were lower than those made using the flywheel. This means that we can rely on the kicker to be more consistent in scoring than the flywheel.

While testing, we also noticed that there is a large arc on our triballs due to the rubber stopper on our kicker hitting the underside of the kicker arm. We may consider looking into building a longer kicker arm. 

= Amount of Triballs Over the Middle Barrier (Manipulation)

== Objective
We want at least 80% of the triballs shot by the kicker to make it over the middle barrier.

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
    + Place a triball on the kicker and launch it
    + After the triball has finished moving, note down whether the triball crossed the barrier or not
    + Remove the triball from the field
    + Repeat steps 2-4 for a total of 30 trials
  ],
)

== Results
#align(center)[
  #tablex(
    columns: 2,
    align: center + horizon,

    cellx(fill: gray.lighten(20%))[\# Succeeded], cellx(fill: gray.lighten(20%))[\# Failed],
    [27], [3]
  )
]

#align(center)[
  #cetz.canvas({
    import cetz.draw: *
    import cetz.chart

    let data = (
      ([Succeeded], 27),
      ([Failed], 3),
    )

    let colors = (green, red)

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

== Conclusion
We are very happy with the consistency of the kicker, however, we noticed that how we positioned the triballs greatly affected their trajectory. Having the side of the triballs make contact with the kicker rather than the edges of the triballs greatly sharpens how deep the point of trajectory is.
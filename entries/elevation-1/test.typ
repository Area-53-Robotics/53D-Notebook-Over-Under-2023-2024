#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Elevation #1",
  type: "test",
  start_date: datetime(year: 2024, month: 2, day: 23),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Rory",
)

With the state competition rapidly approaching, we need to ensure that our elevation mechanism is high scoring and reliable. To verify this, we conducted two sets of tests on the elevation bar hang mechanism.

= Tier Test

== Objective
We want the elevation mechanism to reach C tier at least 60% of the time.

#grid(
  columns: 2,
  rows: 1,
  column-gutter: 1em,

  [
    == Materials
    - Robot
    - Controller
    - VRC Height Guide Stick
    - Notebook and pen to record data
  ],

  [
    == Procedures
    + Position the robot directly under the elevation bar
    + Grab onto the elevation bar and pull up until the robot has reached its max height
    + Measure the tier of the elevation using the Height Guide Stick
    + Repeat steps 1-3 for a total of 4 trials
  ],
)

== Results
#grid(
  columns: 2,
  column-gutter: 5pt,

  align(center)[
    #tablex(
      columns: 6,
      align: center + horizon,

      cellx(fill: gray.lighten(20%))[Trial \#], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],

      cellx(fill:gray.lighten(20%))[Tier], [B], [B], [B], [B], [B]
    )

    #cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([A Tier], 0),
        ([B Tier], 5),
      )

      let colors = (red, yellow.darken(10%))

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
    }),
  ],

  align(center)[
    #image("./test/2.23.png", height: 18em)
  ]
)

== Conclusion
We are not satisfied with the elevation bar hang design. We are barely reaching B tier, which is a step down from our goal of a C tier. We are also worried that we could fall to A tier in situations when the elevation motor is slightly weakened due to overheating or other circumstances, which could potentially lower our point gain from elevation.
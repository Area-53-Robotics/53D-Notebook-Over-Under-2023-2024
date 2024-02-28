#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Kicker #1",
  type: "test",
  start_date: datetime(year: 2024, month: 1, day: 26),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Rory",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 26),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Test the effect of the kicker platform (Everyone)"),
  )
)

To evaluate the effectiveness of the kicker platform, we performed a consistency test on the triballs shot using the new kicker.

= Consistency Test

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
  #gridx(
    columns: 2,

    align(horizon)[
      #tablex(
        columns: 2,
        align: center + horizon,

        cellx(fill: gray.lighten(20%))[\# Succeeded], cellx(fill: gray.lighten(20%))[\# Failed],
        [14], [16]
      )
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Succeeded], 14),
        ([Failed], 16),
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
  )
]

#colbreak()

== Conclusion
We are not pleased with the results of the kicker platform test. Only 47% of the triballs crossed the middle barrier, falling short of our 80% objective. We made a few observations of the kicker as well while testing:
- The platform causes the triballs to start their movement arc further away from the middle barrier
- The orientation of the triballs was inconsistent with each triball, causing the trajectories to vary
Overall, our grouping and consistency did not satisfy our standards. 
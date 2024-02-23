#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Area 53 Scrimmage 2",
  type: "competition",
  start_date: datetime(year: 2024, month: 02, day: 17),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Makhi",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Wins/Losses/Ties:* 1/4/0
]

= Competition Goals
- Diagnose any critical issues we need to resolve before the States competition

= Driving Strategies
The driving strategies that we used for this scrimmage are the same as the ones we utilized in the #nb_entry_reference(date: datetime(year: 2024, month: 2, day: 2), type: "competition")

= Matches
#nb_tournament_match(
  match: "Q2",
  red_alliance: (teams: ("12699A", "53C"), score: 95),
  blue_alliance: (teams: ("53D", "12699B"), score: 48),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We cycle on the left side while 12699B cycles on the right side
  ],
  auton_notes: [
    - One of our drive motors were not plugged in, so our auton bugged out and did not work
  ],
  match_notes: [
    - Our battery fell out at the beginning of the driver control period, disabling us for the rest of the match
    - 12699B couldn't score enough points on their own to win the match
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "",
    disabled: "Drivetrain, Intake, Wings, Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q4",
  red_alliance: (teams: ("53D", "12699B"), score: 28),
  blue_alliance: (teams: ("53E", "53B"), score: 50),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We cycle on the left side while 12699B cycles on the right side
  ],
  auton_notes: [
    - One of our drive motors were not plugged in, so our auton bugged out and did not work
    - However, we still won auton because 53B crossed the plane of our goal
  ],
  match_notes: [
    - 12699B's battery fell out at the beginning of the driver control period, disabling them for the rest of the match
    - We couldn't score enough points on their own to win the match
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake",
    underperformed: "",
    disabled: "Elevation, Kicker, Wings",
  )
)

#nb_tournament_match(
  match: "Q6",
  red_alliance: (teams: ("53F", "12699B"), score: 57),
  blue_alliance: (teams: ("53A", "53D"), score: 72),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    We play defense and capitalize on the red alliance's match loads while 53A cycles right side
  ],
  auton_notes: [
    - We won auton because 53F exited their starting zone
  ],
  match_notes: [
    - 53A got flipped over at the beginning of driver control, disabling them for the rest of the match
    - We played really good defense on 12699B when they were trying to match load
      - We stole their match loads and scored them into our goal
    - Our elevation mechanism worked for the first time in a round!
      - The 20 points that we got from being the only team to elevate won us the match
  ],
  subsystems: (
    overperformed: "Elevation",
    satisfactory: "Drivetrain, Intake",
    underperformed: "",
    disabled: "Wings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q7",
  red_alliance: (teams: ("12699A", "53D"), score: 38),
  blue_alliance: (teams: ("53F", "53B"), score: 58),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    We cycle left side while 12699A cycles right side
  ],
  auton_notes: [
    - Our auton didn't work because one of our drive motors wasn't plugged in
  ],
  match_notes: [
    - Our drivetrain couldn't move backwards because the back omnis were hitting the polycarbonate on the back
    - We weren't able to elevate because the ratchet on our elevation mechanism disengaged
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake",
    underperformed: "Elevation",
    disabled: "Wings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q10",
  red_alliance: (teams: ("53F", "53E"), score: 65),
  blue_alliance: (teams: ("53C", "53D"), score: 60),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We cycle on the left side and play defense on the red alliance while 53C match loads on the right side
  ],
  auton_notes: [
    - Our auton didn't work because one of our drive motors wasn't plugged in
  ],
  match_notes: [
    - A wire got stuck in the right side of our drivetrain, so we couldn't move for the majority of the match
    - 53C was not able to score fast enough to match the red alliance
    - 53C elevated, but it wasn't enough to make up for the point difference
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "Drivetrain",
    disabled: "Intake, Wings, Elevation, Kicker",
  )
)

#colbreak()

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #grid(
    columns: 2,
    [
      - Our drivetrain performed satisfactorily for most of our matches, and we believe it is nearly ready for the States competition
      - We need to improve our wire management to make it easier to switch ports when needed before States

      #align(center)[
        #tablex(
          columns: 2,
          rows: 5,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [3],
          [Underperformed], [1],
          [Disabled], [1]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 3),
        ([Underperformed], 1),
        ([Disabled], 1),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 1,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Intake
  #grid(
    columns: 2,

    [
      - The intake performed satisfactorily during the matches where our robot was functional
      - We believe that the intake is ready for the States competition

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [3],
          [Underperformed], [0],
          [Disabled], [2]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 3),
        ([Underperformed], 0),
        ([Disabled], 2),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 1,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Elevation
  #grid(
    columns: 2,

    [
      - We were not able to test the elevation mechanism in most of our rounds
      - For the matches where the elevation mechanism was used, the results were varying
      - We will need more tests to ensure that the elevation mechanism is ready for the States competition

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [1],
          [Satisfactory], [0],
          [Underperformed], [1],
          [Disabled], [3]
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 1),
        ([Satisfactory], 0),
        ([Underperformed], 1),
        ([Disabled], 3),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 3,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Kicker
  #grid(
    columns: 2,
    [
      - Our kicker was disabled for the scrimmage so that we could test the elevation mechanism
      - We will have to perform a separate set of tests for the kicker to make sure it is usable for skills at the States competition

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
          [Disabled], [5]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 5),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 3,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Wings
  #grid(
    columns: 2,

    [
      - We did not have access to a pressure pump during the scrimmage, so we were unable to use our wings
      - We will need to perform a separate set of tests to make sure the wings are ready for the States competition

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
          [Disabled], [5]
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 5),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 3,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

/*
  = Individual Reflections
  == Ajibola
  - I think we should look into an alternative robot design strategy to descoring. It is too unreliable to rely on the opposing alliance to double zone. If we can create stronger wings, we could be able descore using them instead, even if the robot itself is too small to descore.
  - Our blocker was effective at preventing opposing alliances from matchloading, delaying their scoring.

  == Ishika 
  - I see some problems with our current drivetrain. It lacks a lot of pushing power.
  - I am also wary of our intake design. Although it does work, I noticed that the intake is slowly deteriorating.

  == Makhi 
  - I'm really proud with our driving. We managed to score the highest scoring match of the tournament!
  - I believe that a faster drivetrain would be better. Maybe a 600 RPM, 2.75 wheel drivetrain could really benefit me.
  - I think due to the lack of time, our flywheel was a little messed up. If we had more time, I think we can perfect our outake mechanism.

  == Rory
  - We should redo the drivetrain and flywheel. The drivetrain has been annoying multiple times with failures like the gears skipping. We need a much better and more reliable design for that and the flywheel just isn't sturdy enough. The flywheel can shoot, but not very far.

  == Eric
  - I suggest we rebuild the drivetrain to not focus on descoring
  - I noticed that a lot of teams can climb. I really want to design something that could allow us to get a B level elevation. I predict that climbing will be a meta for future tournaments. 
*/
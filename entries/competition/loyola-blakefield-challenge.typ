#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Loyola Blakefield Challenge",
  type: "competition",
  start_date: datetime(year: 2024, month: 01, day: 27),
  attendance: "Jin, Ishika, Makhi",
  designed: "Jin",
  witnessed: "Ishika",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 55/57
  - *Qualification Matches Wins/Losses/Ties:* 0/5/0
  - *Eliminated in:* N/A
]

= Competition Goals
- Do well in the Qualifications 
- Run skills, or at least driver skills

= Matches
#nb_tournament_match(
  match: "Q11",
  red_alliance: (teams: ("1727Y", "7135D"), score: 65),
  blue_alliance: (teams: ("842T", "53D"), score: 51),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
     We will bowl and play field starvation against them since 1727Y can block our match loads 
  ],
  auton_notes: [
    - We didn't have a complete working auton for this match
    - 1727Y had a three triball auton that score 3 into their match goals.
  ],
  match_notes: [
    - One of the motors on our drivetrain was unplugged that cause us to have difficult driving. 
    - We unfortunately got stuck under our elevation bar which prevented our team mate to hang.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Kicker, Elevation, Horizontal Wings, Vertical Wings,",
    underperformed: "Drivetrain",
    disabled: "",
  )
)

#nb_tournament_match(
  match: "Q21",
  red_alliance: (teams: ("53F", "2072X"), score: 94),
  blue_alliance: (teams: ("53D", "9039X"), score: 82),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
     Similar strategy to the first mation, we want to bowl so that either team wont take advantage of our matchloads. 
  ],
  auton_notes: [
    - We had difficulties getting auton to work. PID needs tuning.
  ],
  match_notes: [
    - We still were having problems with our drivtrain because our wheels started to misalign themselves. 
    - 53F had a flywheel and started matchloading at us. 
    - We tried to barrier sit and failed.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Kicker, Elevation, Horizontal Wings, Vertical Wings,",
    underperformed: "Drivetrain",
    disabled: "",
  )
)

#nb_tournament_match(
  match: "Q38",
  red_alliance: (teams: ("53D", "9039V"), score: 86),
  blue_alliance: (teams: ("53E", "76763B"), score: 112),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
      We planned to play more defensive against them and bowl when we can.
  ],
  auton_notes: [
    - We are receiving issues with our auton
    - 53E's managed to score half of auton win point.
  ],
  match_notes: [
    - The opposing alliance immediately pushed all their triballs to their goal 
    - One of our drive motors got disengaged which prevented us from using enough torque to cross the middle barrier. We got stuck on a triball
    - 76763B tried to cycle throughout the match but couldn't beat the 2v1 as they continue to cycle both sides. 
    - Our hang was too low and we missed
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Kicker, Horizontal Wings, Vertical Wings,",
    underperformed: "Drivetrain, Elevation",
    disabled: "",
  )
)

#nb_tournament_match(
  match: "Q47",
  red_alliance: (teams: ("7135J", "53D"), score: 65),
  blue_alliance: (teams: ("12580A", "7135P"), score: 51),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
     Play field starvation and bowl. Take advantage of their triballs if they match load
  ],
  auton_notes: [
    - We plan to use our vertical wings and take the triball outside of the match bar. 
  ],
  match_notes: [
    - 7135J was only a push bot and didn't do much
    - Our vertical wings came off which hinder our movement.
    - Our drive train was starting to come off which hinder our movement
    - The opposing alliance did a good job taking advantage of being a push bot and out cycle us
    - 12580A hanged
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Kicker, Elevation, Horizontal Wings,",
    underperformed: "Vertical Wings,Drivetrain",
    disabled: "",
  )
)

#nb_tournament_match(
  match: "Q58",
  red_alliance: (teams: ("75368A", "1727R"), score: 97),
  blue_alliance: (teams: ("12768A", "53D"), score: 64),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
     Since 1727R was a stronger team, we wanted to bowl.
  ],
  auton_notes: [
    - We didn't run auton this match because we knew that our auton won't work

  ],
  match_notes: [
    - 1727R had a descore bot and we were worried about getting descored. 
    - 1727R started match loading at us
    - Our drivetrian motor got unplugged which hurt our driving 
    - 1727R and us hanged but they had a C tier hang.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Vertical Wings, Kicker, Elevation, Horizontal Wings,",
    underperformed: "Drivetrain",
    disabled: "",
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
      - The motors were very loose which cause the motors to be disengaged with the gears.
      - Our drive train faced overheating issues because our drivetrain became a 4 motor drive in some matches. 

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
          [Overperformed], [],
          [Satisfactory], [0],
          [Underperformed], [5],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 5),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 2,
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
      - We didn't have any problems with the intake. We are thinking of changing the intake into a flex wheel intake because it grips on to the triballs better. 

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
          [Overperformed], [5],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 5),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 0,
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
  == Vertical Wings
  #grid(
    columns: 2,

    [
      - The wings had a very hard time opening because our pivot would get caught on our chassis and get stuck.

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
          [Satisfactory], [4],
          [Underperformed], [1],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 4),
        ([Underperformed], 1),
        ([Disabled], 0),
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
  == Horizontal Wings
  #grid(
    columns: 2,

    [
      - We didn't use them much in our matches because they are bending inwards. We want to rely on these wings for skills.

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
          [Satisfactory], [5],
          [Underperformed], [0],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 5),
        ([Underperformed], 0),
        ([Disabled], 0),
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
      - The elevation worked sometimes and was heavily dependent on the vertical wings. The times it did work it was very efficient.

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
          [Satisfactory], [4],
          [Underperformed], [1],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 4),
        ([Underperformed], 1),
        ([Disabled], 0),
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
  == Kicker
  #grid(
    columns: 2,

    [
      - Our intake sleds cause the triballs to not fire in a close grouping that we want. This hurt our skill run. 
      - The kicker wasn't prioritized as much in matches but it was still useful.

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
          [Satisfactory], [5],
          [Underperformed], [0],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 5),
        ([Underperformed], 0),
        ([Disabled], 0),
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
        outer-label: (content: "%", radius: 115%)
      )
    })
  )
]

= Skills
#nb_admonition(type: "competition", title: "Skills Performance")[
  - *Driver Skills Score:* 78
  - *Programming Skills Score:* N/A
  - *Total Skills Score:* 78
]

= Individual Reflections

== Jin 
We have a lot of issues on the robot that I want to address quickly. One, we most likely need to quickly take apart the drivetrain and rescrew the drive motors. I will order locktite so our motors won't fall off. 

== Ishika
We definitely need to work on tightening everything and work on our pneumatics. For some of the matches, we faced a slight leak that caused our wings not to work. We also need to give more time towards the Auton as we did not have a fully made auton this tournament. 

== Makhi 
I'm very unhappy with the results of our robot. I think we should scratch the elevation idea for now and focus on the other subsystems on our robot.

== Rory
 The drivetrain is facing massive issues. I saw that one of the wheels was coming loose and I didn’t like how to gear was coming loose. I noticed that we had a hard time intaking triballs. Maybe we should change the intake into a flexwheel intake. 

== Eric 
We need to work on our pneumatic tubing and how we cut it. We had leaks for a long time. We should also work on having more strategy in how we play with our alliance and making sure both teams follow through on the plans if possible.
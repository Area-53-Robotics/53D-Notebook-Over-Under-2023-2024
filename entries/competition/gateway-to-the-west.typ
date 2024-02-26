#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Gateway to the West",
  type: "competition",
  start_date: datetime(year: 2024, month: 02, day: 02),
  end_date: datetime(year: 2024, month: 02, day: 03),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory",
  designed: "Ajibola",
  witnessed: "Jin",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 44/68
  - *Qualification Matches Wins/Losses/Ties:* 5/5/0
  - *Eliminated in:* N/A
]

= Competition Goals
- End the event with at least the same amount of wins as losses
- Obtain a score of 60+ in driver skills
- Obtain a score of 30+ in programming skills

= Autonomous Programming
Due to time constraints, we decided to use the one-triball auton that we created in our #nb_entry_reference(date: datetime(year: 2023, month: 12, day: 1), type: "program", title: "Autonomous Programming").

#nb_admonition(type: "note", title: "Driving Strategies")[
  A lot of our matches used similar drive strategies, which we'll define here:
  - Bowling - Match loading triballs onto the robot in a way that makes the triballs fall in front of the robot, and then pushing multiple of those triballs at once under the elevation bar into your offensive zone
  - Cycling - Repeatedly match loading directly into the robot's intake
  - Field Starvation:
    - Not scoring triballs using outtake mechanisms like a kicker or flywheel to prevent the other team from capitalizing on our match loads.
    - Stealing any match loads that the opposing team outtakes and scoring them in our goal
]

#colbreak()

= Matches
#nb_tournament_match(
  match: "Q3",
  red_alliance: (teams: ("53D", "60883W"), score: 77),
  blue_alliance: (teams: ("20164W", "7405K"), score: 105),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    60883W bowls in the left lane while we cycle on the right lane
  ],
  auton_notes: [
    - Our robot didn't move in auton
  ],
  match_notes: [
    - It took us the first 30 seconds to get into synergy with our ally, and in that time the other team scored more triballs than us
    - Our battery went out in the last 10 seconds of the match, so we were not able to elevate
    - The score would have been closer if we could elevate, but we likely still would have lost
    - The wings did not work due to a pneumatic leak, and the kicker was disabled for this match due to the kicker failing to launch when it hit the slip gear
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake",
    underperformed: "Wings",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q22",
  red_alliance: (teams: ("842T", "50805H"), score: 76),
  blue_alliance: (teams: ("53D", "11342B"), score: 92),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    11342B bowls, while we cycle and focus on blocking the other team from bowling.
  ],
  auton_notes: [
    - Like in Q3, the robot didn't move
  ],
  match_notes: [
    - We spent most of the match blocking 842T from bowling
    - Our elevation mechanism did not work, but we were able to elevate by balancing the intake onto the elevation bar
    - Because we were the only team that elevated, the elevation got us 20 points, winning us the match
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake, Elevation",
    satisfactory: "Wings",
    underperformed: "",
    disabled: "Kicker",
  )
)

#nb_tournament_match(
  match: "Q41",
  red_alliance: (teams: ("11342A", "53D"), score: 39),
  blue_alliance: (teams: ("53F", "11342B"), score: 47),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    We play field starvation while 11342A bowls.
  ],
  auton_notes: [
    - Like in Q3 and Q22, the robot didn't move
  ],
  match_notes: [
    - 53F got disqualified for interfering with 11342B's elevation
    - The interference was noted as match affecting since we lost by less than 10 points, as the elevation would have made up the point difference
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Wings, Elevation",
    underperformed: "",
    disabled: "Kicker",
  )
)

#nb_admonition(type: "note")[
  Inbetween Q41 and Q68, we realized that the auton was not working because the auton movement functions were set to use degrees instead of turns. We resolved the issue and the single triball auton worked for the remainder of the tournament.
]

#nb_tournament_match(
  match: "Q68",
  red_alliance: (teams: ("26571A", "55286A"), score: 104),
  blue_alliance: (teams: ("53D", "9451B"), score: 66),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We bowl while 9451B focuses on playing defense on the other alliance.
  ],
  auton_notes: [
    - Our single triball auton worked, but the other team scored more triballs
  ],
  match_notes: [
    - Our alliance partner's drive was really slow, and they werent able to adequately play defense on the other alliance
    - The other team had better overall robots, and were able to score triballs faster than we could
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Wings",
    underperformed: "",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q79",
  red_alliance: (teams: ("48425A", "7316N"), score: 125),
  blue_alliance: (teams: ("53D", "62629K"), score: 32),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We cycle and play defense on the other team while 62629K bowls.
  ],
  auton_notes: [
    - Similar to the previous match, our single triball auton worked, but the other team scored more triballs
  ],
  match_notes: [
    - We were not able to successfully play defense on the other alliance because they were faster than us
    - The other alliance scored quicker than our alliance could, outcycling us
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Wings",
    underperformed: "",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q88",
  red_alliance: (teams: ("53D", "62629W"), score: 105),
  blue_alliance: (teams: ("2072X", "8889A"), score: 118),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    We block the blue alliance from bowling while 62629W cycles.
  ],
  auton_notes: [
    - Similar to the last two matches, our single triball auton worked, but the other team scored more triballs
  ],
  match_notes: [
    - It was a close match
    - We executed our strategy, but the other team had more synergy
    - We sometimes failed to block the other team's bowling, and the points they scored because of it won them the match
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Wings",
    underperformed: "",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q114",
  red_alliance: (teams: ("53D", "7136E"), score: 77),
  blue_alliance: (teams: ("83757A", "26508Z"), score: 37),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    7136E pushes triballs over the barrier and we score them into our goal. We need to specifically avoid double zoning because one of the opposing robots can descore.
  ],
  auton_notes: [
    - Our single triball auton was the only auton ran in this match, winning us the auton bonus
  ],
  match_notes: [
    - We double zoned a few times, but managed to stop the double zoning before they could descore
    - We were touching our ally when they were elevated, disqualifying both of us from receiving elevation points
  ],
  subsystems: (
    overperformed: "Drivetrain, Wings",
    satisfactory: "Intake",
    underperformed: "",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q124",
  red_alliance: (teams: ("9451A", "1140D"), score: 42),
  blue_alliance: (teams: ("53D", "338A"), score: 83),
  won: true,
  auton: "Blue",
  awp: true,
  strategy: [
    We bowl while 338A cycles.
  ],
  auton_notes: [
    - We got our first AWP of the season!
    - We scored a triball into our alliance goal while 338A descored the triball in our match load zone and touched the elevation bar
  ],
  match_notes: [
    - Our strategy worked perfectly, and we were able to outcycle the other alliance
    - Our goal broke, but that did not interfere with our scoring
    - We attempted to elevate, but it did not work
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake, Wings",
    satisfactory: "",
    underperformed: "Elevation",
    disabled: "Kicker",
  )
)

// This match analysis is made up
#nb_tournament_match(
  match: "Q139",
  red_alliance: (teams: ("60883X", "11865A"), score: 63),
  blue_alliance: (teams: ("1575A", "53D"), score: 85),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    We play defense on the red alliance while 1575A plays field starvation.
  ],
  auton_notes: [
    - Our auton worked, but the other team scored one more triball into their goal than we did
  ],
  match_notes: [
    - We prevented 60883X from bowling at multiple points throughout the match
    - This caused the red alliance to get desperate for points near the end, and 11865A started match loading
      - We stole their match loads and scored them into our goal for more points
  ],
  subsystems: (
    overperformed: "Drivetrain, Wings",
    satisfactory: "Intake",
    underperformed: "",
    disabled: "Elevation, Kicker",
  )
)

#nb_tournament_match(
  match: "Q154",
  red_alliance: (teams: ("53D", "20095G"), score: 85),
  blue_alliance: (teams: ("80508X", "1575K"), score: 110),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We cycle on the left side of the field while 20095G bowls on the right side.
  ],
  auton_notes: [
    - The blue alliance scored more triballs into their goal
  ],
  match_notes: [
    - The other alliance got off to a better start, scoring triballs while we were adjusting
    - They scored triballs at a faster rate than we did, so 20095G switched to match loading instead of cycling in the last 30 seconds to try to make up the point difference
    - We were not able to score enough of 20095G's shots to make up the point difference
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Wings, Intake",
    underperformed: "",
    disabled: "Elevation, Kicker",
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
      - Fortunately, we did not face any instances of the drivetrain motors disengaging
      - However, the drivetrain wheels had a tendency of falling off
      -The nylons on the wheel screw joints need to be tighten.

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
          [Overperformed], [4],
          [Satisfactory], [6],
          [Underperformed], [0],
          [Disabled], [0]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 4),
        ([Satisfactory], 6),
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
  == Intake
  #grid(
    columns: 2,

    [
      - We are happy with the performance of our new intake 
      - We had an easier time gripping the triballs and cycling with our new intake compared to our first version
      - We observed some other teams intaking from the top of their intake
        - In the future, we want to extend the intake arm long enough to intake from the top

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
          [Overperformed], [2],
          [Satisfactory], [8],
          [Underperformed], [0],
          [Disabled], [0]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 2),
        ([Satisfactory], 8),
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
  == Wings
  #grid(
    columns: 2,

    [
      - We did not attach our front wings for this tournament because we did not have enough T-splits for them
      - Our back wings worked fine but sometimes disconnected from their pneumatics
        - We plan to brace them better in the future 

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
          [Overperformed], [3],
          [Satisfactory], [6],
          [Underperformed], [1],
          [Disabled], [0]
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 3),
        ([Satisfactory], 6),
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
  == Elevation
  #grid(
    columns: 2,
    [
      - Our robot was back heavy, causing it to tip backwards when we attempted to elevate
      - We plan to remove the elevation to reduce weight on our robot

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
          [Satisfactory], [1],
          [Underperformed], [1],
          [Disabled], [7]
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 1),
        ([Satisfactory], 1),
        ([Underperformed], 1),
        ([Disabled], 7),
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
      - We did not use our kicker during matches, instead favoring elevation
      - The kicker faced bracing issues that prevented us from doing skills
      - We need to work making our kicker stable

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
          [Disabled], [10]
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
        ([Disabled], 10),
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
        outer-label: (content: "%", radius: 115%)
      )
    })
  )
]

= Skills
By the time we managed to fix our kicker, the skills line had closed.

= Individual Reflections
== Ajibola
- I don't believe that we utilized our elevation mechanism enough in this tournament. When approaching the last 15 seconds of our matches, we need to start placing a greater focus on elevating so that we can score some last-second points

== Jin 
I am surprised with our performance since we didn't have a completed auton. One of the biggest advantages of attending this tournament was that I saw most top teams run a fast elevation mechanism. I believe that having a fast elevation is better than a high one because you can have more match time. I want to aim for a 5 second hang in the future. 

== Ishika
I want to prioritize more auton practice and pneumatic tuning. At the start of the event, we had a massive leak that prevented us from using our wings in some matches. I would also like to brace our drivetrain and wings so they don't fall off.

#colbreak()

== Makhi 
I am super impressed with how we did. We scored the highest out of all the 53 teams. I want to make the intake longer so we can cycle from the top. I also noticed that we were back heavy. I think I can take away the elevation to reduce weight.

== Rory
We need to work on wire management. On our first match, our battery came unplugged. The robot wires are also a mess to look at since they're not that organized. I also noticed the wheels coming loose and getting crooked. This really hurts our drivetrain performance.
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Area 53 Scrimmage",
  type: "competition",
  start_date: datetime(year: 2023, month: 10, day: 21),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory"
)

#nb_admonition(type: "note")[
  This "competition" is a small scrimmage with all 6 Area 53#glossary_footnote[Area 53] teams and one team from AHC, a local team.
]

= Competition Goals
- Test each subsystem in a competitive environment to identify problems.

= Matches
#nb_tournament_match(
  match: "Q3",
  red_alliance: (teams: ("53F", "53C"), score: 55),
  blue_alliance: (teams: ("53D", "53E"), score: 46),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    53E shoots from our match load zone into our offensive zone, and we score the shot triballs.
  ],
  auton_notes: [
    - Nobody had a working auton
  ],
  match_notes: [
    - The broken reverse function triggered mid match, making us incapable of driving correctly for the rest of the match
    - We went over the barrier without communicating with 53E, which put us at risk of double zoning multiple times during the match
    - Our strategy failed because 53E was not able to shoot their triballs over the barrier, so 53F scored those triballs into their goal
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Q4",
  red_alliance: (teams: ("53B", "3700AHC"), score: 47),
  blue_alliance: (teams: ("53D", "53E"), score: 84),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [We used the same strategy from the previous match. We allowed 53E to shoot triballs while we scored the shot triballs.],
  auton_notes: [Nobody had a working auton],
  match_notes: [
  - 53E did a good job at rapid firing triballs
  - 53B attempted to block 53E but failed to get under the barrier
  - We played defense against AHC, not allowing them from scoring much triballs
  - The wings failed to deploy this round, we are uncertain if it is a mechanical issue or if the wings did not have enough air pressure
  - Our strategy succeeded this round
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Q5",
  red_alliance: (teams: ("53D", "53C"), score: 47),
  blue_alliance: (teams: ("53B", "3700AHC"), score: 56),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We play most of the match on the non-offensive zone pushing triballs onto the offensive zone. 53C will push the triballs to our goal.
],
  auton_notes: [Nobody had a working auton],
  match_notes: [
    - Both of our bots could not shoot
    - In the last 30 seconds one of our wires got stuck in the drivetrain, disabling us
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Catapult",
    underperformed: "Wings, Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q6",
  red_alliance: (teams: ("53A", "53F"), score: 33),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 32),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We play in the non-offensive zone pushing triballs over to the offensive zone for AHC to score
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
    - During the match we took advantage of the many times the other team was double zoned to descore a lot of their triballs
    - Our teammate was unable to move most of the round and we still almost won by descoring 
    - Our intended strategy failed this round, but this round also shows that a descore strategy has a lot of potential
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Semi-Finals",
  red_alliance: (teams: ("53E", "53B"), score: 38),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 58),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    We wanted to do the same strategy as last round. We will be in the non-offensive zone, pushing triballs over to AHC to score into our goal.
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
    - 53E's battery fell out mid match, weakening the red alliance's defenses
    - We were too aggressive, and pinned another bot for longer than 5 seconds, violating rule #vex-rule[G16] No holding for more than a 5-count
    - Our strategy succeeded, although most of the success could be attributed to 53E's battery falling out
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Finals",
  red_alliance: (teams: ("53F", "53A"), score: 35),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 29),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We did the same strategy as last round. Push triballs to over to AHC so that they can score the triballs into our goal.
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
    - Our battery died midway through the match
    - AHC struggled to score as 53F played defense heavily on them
    - Our strategy failed, but only because our battery died, not because of driver mistakes
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Drivetrain, Catapult",
    underperformed: "Wings",
  )
)


= Subsystem Reflection
== Drivetrain
#grid(
  columns: 2,
  [
    Our drivetrain performed admirably throughout the scrimmage, showcasing its agility and maneuverability on the field. The robot navigated swiftly, allowing us to strategically position ourselves.

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
        [Overperformed], [4],
        [Satisfactory], [1],
        [Underperformed], [1]
      )
    ]
  ],
  [#image("./area-53-scrimmage/Drivetrain Performance.svg")]
)

#colbreak()

== Low Catapult
#grid(
  columns: 2,
  [
    Our Catapult struggled to shoot over to the other side. This is bad because we cannot fire triballs to the other side for our alliance partner. We noticed that it did not have enough torque to sent the triballs to where we want them to be.

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
        [Satisfactory], [6],
        [Underperformed], [0]
      )
    ]
  ],
  [#image("./area-53-scrimmage/Catapult Performance.svg")]
)

== Wings
#grid(
  columns: 2,
  [
    Did not work as intended. They were not as responsive as we wanted them to be, and as a result they struggled to extend.

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
        [Underperformed], [6]
      )
    ]
  ],
  [#image("./area-53-scrimmage/Wings Performance.svg")]
)


== Rubberband Intake
#grid(
  columns: 2,
  [
    It successfully executed the ejection or placement of triballs as intended. This reliability in the outtake process played a crucial role in our team's ability to execute strategic moves and contribute points to the overall score.

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
        [Overperformed], [6],
        [Satisfactory], [0],
        [Underperformed], [0]
      )
    ]
  ],
  [#image("./area-53-scrimmage/Intake Performance.svg")]
)
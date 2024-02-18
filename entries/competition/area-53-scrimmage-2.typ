#import "/template/template.typ": *

#show: create_entry.with(
  title: "Area 53 Scrimmage 2",
  type: "competition",
  start_date: datetime(year: 2024, month: 02, day: 17),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Makhi",
)

// #nb_admonition(type: "competition", title: "Competition Results")[
//   - *Rank:* 44/68
//   - *Qualification Matches Wins/Losses/Ties:* 5/5/0
//   - *Eliminated in:* N/A
// ]

= Competition Goals
// - End the event with at least the same amount of wins as losses
// - Obtain a score of 60+ in driver skills
// - Obtain a score of 30+ in programming skills

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


/*
  = Subsystem Reflection
  #v(0.5em)
  #box[
    == Drivetrain
    #grid(
    columns: 2,
    [
      - We saw no major problems with the drivetrain as it worked fairly well for all our matches.
      - However, we believe that our driver can benefit from having a quicker drivetrain. We also noticed that the drivetrain had some trouble getting over the middle barrier.

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
          [Satisfactory], [7],
          [Underperformed], [1]
        )
      ]
    ],
    align(horizon)[#image("./capital-beltway-challenge/Drivetrain Performance.svg")]
    )
  ]

  #box[
    == Intake
    #grid(
    columns: 2,
    [
      - The intake worked consistently, we even managed to intake into the cata a few times.
      - In the future we want to have a longer intake as we can intake deeper into the goal.

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
          [Satisfactory], [7],
          [Underperformed], [0]
        )
      ]
    ],
    align(horizon)[#image("./capital-beltway-challenge/Intake Performance.svg")]
    )
  ]

  #box[
    == Flywheel
    #grid(
    columns: 2,
    [
      - The flywheel worked consistently, however, it could be sometimes unreliable with its ability to score over the barrier.
      - The blocker was amazing though. A lot of our matches were won using it.

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
          [Satisfactory], [4],
          [Underperformed], [1]
        )
      ]
    ],
    align(horizon)[#image("./capital-beltway-challenge/Flywheel Performance.svg")]
    )
  ]

  #box[
    == Wings
    #grid(
    columns: 2,
    [
    - They worked nearly every round. We managed to multiple triballs at once with them.
    - Upon looking at the other teams, we want to add wedges to the wings.

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
          [Satisfactory], [6],
          [Underperformed], [1]
        )
      ]
    ],
    align(horizon)[#image("./capital-beltway-challenge/Wings Performance.svg")]
    )
  ]

  = Skills
  We were not able to perform skills before the line closed.

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
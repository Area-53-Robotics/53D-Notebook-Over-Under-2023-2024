#import "/template/template.typ": *

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
    underperformed: "Wings, Kicker, Elevation",
    disabled: none,
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
    overperformed: "Elevation, Drivetrain, Intake",
    satisfactory: "Wings",
    underperformed: "Kicker",
    disabled: none,
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
    underperformed: "Kicker",
    disabled: none,
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
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    overperformed: "Drivetrain, Wings, Intake",
    satisfactory: "",
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    underperformed: "Elevation, Kicker",
    disabled: none,
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
    - We were not able to score enough of the shots to make up the point difference
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Wings, Intake",
    underperformed: "Elevation, Kicker",
    disabled: none,
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
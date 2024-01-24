#import "/template/template.typ": *

#show: create_entry.with(
  title: "Capital Beltway Challenge",
  type: "competition",
  start_date: datetime(year: 2023, month: 12, day: 16),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Makhi",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 12/32
  - *Qualification Matches Wins/Losses/Ties:* 4/2/0
  - *Overall Wins/Losses/Ties:* 5/3/0
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Qualify for the elimination matches
- Obtain a score of 60+ in driver skills
- Obtain a score of 30+ in programming skills

= Matches
#nb_tournament_match(
  match: "Q7",
  red_alliance: (teams: ("53D", "9080C"), score: 181),
  blue_alliance: (teams: ("5588B", "17760Z"), score: 37),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    We block 5588B with our blocker while scoring the triballs that 9080C shoots into our offensive zone.
  ],
  auton_notes: [
    - Our auton scored the alliance triball, but did not intake the neutral triball touching the barrier
    - Because both us and 9080C scored a triball, we won the auton bonus
    - We attempted to get the AWP. but 9080C did not end the match touching the elevation bar as planned
  ],
  match_notes: [
    - The other team was not really pushing triballs into their goal, so we had no reason to try to descore
    - Our strategy worked better than intended, and because the other team had no bots small enough to fit under the goal, they could not descore from us while we were double zoned
    - 9080C managed to elevate, sealing the win for us
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Flywheel, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q14",
  red_alliance: (teams: ("341A", "9080H"), score: 51),
  blue_alliance: (teams: ("53D", "53C"), score: 112),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    We block any teams in the red alliance that try to shoot while 53C shoots triballs into our offensive zone.
  ],
  auton_notes: [
    - Our auton worked as intended, it even intook the neutral triball
  ],
  match_notes: [
    - The red alliance caught onto our strategy, and instead of launching their match loads they just dropped them onto the field and pushed them to their side
    - However, due to this, we quickly outcycled them due to how fast 53C was shooting triballs
    - Afterwards, we double zoned to score the triballs into our goal
      - The other teams were too tall to descore our triballs
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Drivetrain, Flywheel, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q22",
  red_alliance: (teams: ("3700A", "7135E"), score: 32),
  blue_alliance: (teams: ("53D", "53A"), score: 102),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    We shoot triballs into our offensive zone, and then 53A scores them into the goal.
  ],
  auton_notes: [
    - Our auton worked as intended, we were just one second too late to score the 2nd triballs
    - We didn't get the AWP because 53A's wings barely missed the triball in the match load zone
  ],
  match_notes: [
    - Our alliance had more synergy than the red alliance, allowing us to score faster
    - Our flywheel was incredibly quick, we able to finish match loading in 20 seconds
    - The red alliance was overwhelmed by the triballs being launched at them while 53A was able to capitize on their disarray
  ],
  subsystems: (
    overperformed: "Flywheel",
    satisfactory: "Drivetrain, Intake, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q32",
  red_alliance: (teams: ("7135S", "53D"), score: 86),
  blue_alliance: (teams: ("20096G", "5588H"), score: 90),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    7135S shoots triballs into our offensive zone, and we score them into the goal.
  ],
  auton_notes: [
    - Our preload was not placed correctly before the round started - This caused the auton to malfunction and not outtake the triball, causing us to lose auton
  ],
  match_notes: [
    - The round was so close that if the blue alliance didn't win auton, we would have won the round
    - If it wasnt for the blocker on the flywheel, we would have lost by even more, it worked perfectly and delayed their scoring
  ],
  subsystems: (
    overperformed: "Flywheel",
    satisfactory: "Drivetrain, Intake, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q37",
  red_alliance: (teams: ("53D", "5588E"), score: 101),
  blue_alliance: (teams: ("20096G", "53E"), score: 64),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    5588E shoots triballs into our offensive zone, and we score them into the goal.
  ],
  auton_notes: [
    - Our preload was not placed correctly before the round started, causing the triball to get released early during auton
    - We won auton because 5588E successfully scored their triball into a goal
  ],
  match_notes: [
    - 53E got caught on the middle barrier for the first 30 seconds of driver control, and we took advantage of it to focus on “they shoot we score”
    - Our cycling this round was a lot slower compared to previous rounds though
    - 53E did not shoot much this round, so our blocker did not see a lot of use
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Intake, Flywheel",
    underperformed: "Wings",
  )
)

// The match analysis for this match is made-up
#nb_tournament_match(
  match: "Q44",
  red_alliance: (teams: ("53F", "53B"), score: 124),
  blue_alliance: (teams: ("53D", "17760W"), score: 61),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    17760W shoots triballs into our offensive zone, and we score them into the goal.
  ],
  auton_notes: [
    - Our auton successfully intook and scored both triballs
  ],
  match_notes: [
    - The match was fairly even during the first 30 seconds of driver control
    - However, in the last minute of the round, 53C scored a lot of triballs with their flywheel while 53F blocked our shots
    - We were not able to rebound quickly enough with 17760W to make up the point difference
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Drivetrain, Flywheel, Intake, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Round of 16",
  red_alliance: (teams: ("12170A", "17760X"), score: 17),
  blue_alliance: (teams: ("53D", "5588B"), score: 115),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    5588B shoots triballs into our offensive zone, and we score them into the goal.
  ],
  auton_notes: [
    - We successfully scored the first triball
    - We were still contacting the second triball at the end, so it didn't count during auton scoring
  ],
  match_notes: [
    - Just the threat of our blocker prevented the red alliance from shooting for most of the match
    - 5588B have a pretty fast cata, so combined our wings we were able to rack up points quick.
  ],
  subsystems: (
    overperformed: "Wings, Flywheel",
    satisfactory: "Drivetrain, Intake",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Quarterfinals",
  red_alliance: (teams: ("9080C", "53A"), score: 139),
  blue_alliance: (teams: ("53D", "5588B"), score: 63),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    - 5588B shoots triballs into our offensive zone, and we score them into the goal.
    - When it's time for elevation, 5588B parks under the red alliances elevation bar to prevent 9080C from elevating
  ],
  auton_notes: [
    - The triball that we picked up was not successfully outtaken 
  ],
  match_notes: [
    - Our elevation blocking strategy did not work, the red alliance began to elevate right at the 30 second mark
    - The red alliance cycled faster than we could, getting them more points faster than we could keep up
    - Our blocker's passive activation (from the flywheel going up) did not activate, so we could not block 53A's shots
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Intake, Wings",
    underperformed: "Drivetrain, Flywheel",
  )
)

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
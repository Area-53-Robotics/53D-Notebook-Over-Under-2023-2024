#import "/template/template.typ": *

#show: create_entry.with(
  title: "Dulaney Royal Rumble",
  type: "competition",
  start_date: datetime(year: 2023, month: 11, day: 4),
  attendance: "Ajibola, Ishika, Makhi, Rory"
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 20/35
  - *Qualification Matches Wins/Losses/Ties:* 3/3/0
  - *Overall Wins/Losses/Ties:* 3/4/0
  - *Eliminated in:* Round of 16
]

= Competition Goals
- Evaluate other Maryland robots to identify what is succeeding and what is failing
- Make it to the elimination rounds
- Achieve a win rate of at least 50%

= Skills
We did not queue for the skills line before it closed, so we were unable to run skills during this tournament.

= Matches
#nb_tournament_match(
  match: "Q8",
  red_alliance: (teams: ("53B", "53C"), score: 84),
  blue_alliance: (teams: ("53D", "768A"), score: 27),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    768A pushes triballs into our offensive zone, and then we push them into our goal.
  ],
  auton_notes: [
    - No one had an auton
  ],
  match_notes: [
    - Due to VEXnet issues, we weren't able to move for the last minute of the match
    - Our teammate just had a drivetrain, so they weren't able to make up the point difference while our robot was incapacitated.
  ],
  subsystems: (
    overperformed: "",
    satisfactory: "Intake",
    underperformed: "Catapult, Wings, Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q12",
  red_alliance: (teams: ("53D", "98719C"), score: 83),
  blue_alliance: (teams: ("1727Y", "23098A"), score: 41),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [We push triballs onto our offensive zone so that 98719C can score them into our goal],
  auton_notes: [- 98719C had a simple right-side auton that pushed a triball into the goal],
  match_notes: [
    - Our catapult and wings were disabled for this match, leaving us with an intake, while our teammates had a claw bot
    - During the match, 1727Y had a catapult that wasn't able to shoot over the barrier, so they kept shooting triballs into our offensive zone. We took advantage of this to push more triballs into our goal, and score more points
    - Near the end of the match, our opponents double-zoned, so we took advantage of that and our low catapult design to descore most of their triballs
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "",
    underperformed: "Catapult, Wings",
  )
)

#nb_admonition(type: "note")[
  We could not get the catapult to work due to gear slippage, so we decided to disable it for the rest of the tournament and focus on fixing the intake and wings.
]

#nb_tournament_match(
  match: "Q21",
  red_alliance: (teams: ("1727B", "18391A"), score: 94),
  blue_alliance: (teams: ("53D", "1893C"), score: 75),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    Our teammate 1893C had a good catapult and intake, so our strategy was for them to shoot triballs into our offensive zone for us to score them.
  ],
    auton_notes: [
    - Nobody had an auton 
  ],
  match_notes: [
    - Our opponents had a really good flywheel, so they were able to score a lot of points really quickly
    - We managed to mitigate most of this advantage by descoring most of their triballs near in the last 30 seconds of the match while the red alliance double-zoned
    - The red alliance won because of elevation, otherwise we would have won by 1 point
  ],
  subsystems: (
    overperformed: "Drivetrain, intake",
    satisfactory: "",
    underperformed: "Catapult, Wings",
  )
)

#nb_tournament_match(
  match: "Q30",
  red_alliance: (teams: ("53A", "99009A"), score: 43),
  blue_alliance: (teams: ("53D", "1727D"), score: 26),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We stay on offensive side and push triballs in that they push over the barrier
  ],
  auton_notes: [
    - 53A's teammates won them the AWP & autonomous bonus
  ],
  match_notes: [
    - Our teammates catapult was not working, and only our wings & intake were working
    - There was one period of time in the last 45 seconds that we were able to descore, but we only descored 3 triballs out of 7
    - We lost because 53A cycled faster than we could coordinate with 1727D to score
  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: "Wings, Intake",
    underperformed: "Catapult",
  )
)

#nb_tournament_match(
  match: "Q39",
  red_alliance: (teams: ("53D", "23098B"), score: 66),
  blue_alliance: (teams: ("7135D", "1893X"), score: 43),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    We stay on defense to descore & push triballs over the barrier, while they stay on offensive side and score those triballs
  ],
  auton_notes: [
    - Nobody had a working auton
  ],
  match_notes: [
    - Our ally, 23098B, was a tank tread pushbot
    - In the last 25 seconds of the match, the other team double zoned, and we took the opportunity to descore 10 triballs
    - This was a game changing move, and it won us the game
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Wings",
    underperformed: "Catapult",
  )
)

#nb_tournament_match(
  match: "Q47",
  red_alliance: (teams: ("5588H", "19391C"), score: 63),
  blue_alliance: (teams: ("53D", "21146S"), score: 97),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    Our ally, 21146S uses their cata to shoot triballs into our offensive zone while we score them.
  ],
  auton_notes: [
    - 21146S pushed a triball over the barrier, winning us the auton bonus
  ],
  match_notes: [
    - Our wings were not working for this match, and our intake got folded inwards instead of outwards, so we were just a push bot
    - The other teams' bots were too big to descore, so we took advantage of that to double zone when we needed to
    - We won because the number of triballs in our goal outweighed the red alliance's elevation
    - Even while reduced to a pushbot, we pushed multiple triballs at a time into the goal thanks to how fast 21146S was moving
  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: "",
    underperformed: "Catapult, Intake, Wings",
  )
)

#nb_tournament_match(
  match: "Round of 16",
  red_alliance: (teams: ("23382A", "19391B"), score: 99),
  blue_alliance: (teams: ("53D", "98719C"), score: 31),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We start on defensive side while our ally 98719C starts on offensive side so they can do their auton, then we switch sides so we can utilize any opportunities to descore
  ],
  auton_notes: [
    - Nobody had a working auton
  ],
  match_notes: [
    - We had wings and an intake, and our teammate had "dragonfly" wings
    - The opposing alliance never double zoned, foiling our strategy
    - 23382A consistently shot triballs over the barrier and 19391B continuously put the triballs in their goal
    - That allowed them to cycle way faster than our team, since we were both basically push bots, winning them the match
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Wings",
    underperformed: "Catapult",
  )
)

= Subsystem Reflection
== Drivetrain
#grid(
  columns: 2,
  [
    The drivetrain exhibited a commendable level of performance, allowing for effective maneuverability on the field. Despite its overall decent functionality, the team encountered some challenges that impacted the drivetrain's reliability during the competition. During the start of the match, the motors had a tendency to break, affecting the responsiveness of the drivetrain.

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
        [Underperformed], [1]
      )
    ]
  ],
  [#image("./dulaney-royal-rumble/Drivetrain Performance.svg")]
)

#colbreak()

== Catapult
#grid(
  columns: 2,
  [
    The catapult faced notable challenges and performed below expectations, encountering several issues that impacted its functionality. The specific problems faced by the catapult, such as misfires, misalignments, or power inconsistencies, contributed to its overall subpar performance. Specifically, the catapult couldn't consistency shoot triballs over the middle bar. This culminated in our decision to disable it for most of the tournament and focus on other subsystems.

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
        [Underperformed], [7]
      )
    ]
  ],
  [#image("./dulaney-royal-rumble/Catapult Performance.svg")]
)

== Intake
#grid(
  columns: 2,
  [
    The intake faced significant challenges and struggled to meet expectations, encountering various issues that hindered its performance. Sometimes, the intake would fall backwards during a match, ultimately making it unusable.

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
        [Satisfactory], [2],
        [Underperformed], [1]
      )
    ]
  ],
  [#image("./dulaney-royal-rumble/Intake Performance.svg")]
)

#colbreak()

== Wings
#grid(
  columns: 2,
  [
    The wings were very subpar, frequently failing to fully extend.

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
        [Underperformed], [4]
      )
    ]
  ],
  [#image("./dulaney-royal-rumble/Wings Performance.svg")]
)

= Individual Reflections
== Ajibola 
I'm overall a little disappointed with the results of the tournament, but it was a good testing insight. The performance of our catapult and intake systems fell short of our expectations. The catapult, in particular, struggled with misfires and power inconsistencies, hindering our ability to score effectively. The intake system encountered problems with capturing triballs and occasional jamming.

== Ishika
I'm really glad for this tournament as it was a good opportunity to learn. After watching some other teams' autonomous routines, it sparked my curiosity. I hope to be able to create an auton before the next tournament. I also noticed just how crucial winning the AWP can be.

== Makhi
I'm really impressed with 1727B's climbing mechanism. They used a pneumatic lock that allowed them to cling onto the bar and climb. I have never seen that before and I am inspired to create something similar to that on our bot. I also learned just how important climbing is because we would have won if they never climbed.

== Eric
The drivetrain demonstrated commendable performance, providing the agility and precision needed for maneuvering on the competition field. However, challenges emerged with the catapult. I really like our capacity of descoring but I noticed that some teams had much higher catapults that offered longer trajectories.

== Rory
The wings didn't seem to work like how I would want them to. I think the weight of the wings makes it too heavy for them to be pushed out. I want to make them lighter so the pneumatics can push them out easier.
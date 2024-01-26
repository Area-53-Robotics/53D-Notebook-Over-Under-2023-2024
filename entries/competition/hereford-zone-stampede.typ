#import "/template/template.typ": *

#show: create_entry.with(
  title: "Hereford Zone Stampede",
  type: "competition",
  start_date: datetime(year: 2023, month: 12, day: 2),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory",
  designed: "Ajibola",
  witnessed: "Makhi",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 32/42
  - *Qualification Matches Wins/Losses/Ties:* 2/4/0
  // - *Overall Wins/Losses/Ties:* 2/4/0
  - *Eliminated in:* N/A
]

= Competition Goals
- Qualify for the elimination matches

= Matches
#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("9290A", "9080H"), score: 124),
  blue_alliance: (teams: ("53D", "1727K"), score: 45),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    Our ally 1727K match loads and shoots triballs into our offensive zone while we push them into our goal. If they get blocked by the red alliance, we'll double zone and use either our wedge or catapult to move triballs into our offensive zone. We do not have to worry about getting our triballs descored because neither of the red alliance teams can descore.
  ],
  auton_notes: [
    - Our robot was touching the triball that we pushed at the end of the auton, so it was not counted
      - This caused us to lose auton
  ],
  match_notes: [
    - Our drivetrain stopped working because a screw got caught in the right drive
    - Our alliance partners' (1727K) robot didn't work because they ran the wrong program
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Catapult, Wings",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q19",
  red_alliance: (teams: ("934Z", "53D"), score: 21),
  blue_alliance: (teams: ("1893P", "53C"), score: 107),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [
    934Z match loads and shoots triballs onto our offensive zone, while we push them into our goal. 934Z can elevate to A tier, which should cancel out 53C's A tier elevation.
],
  auton_notes: [
    - We lost this auton the same way we lost the last auton: our robot was touching the triball that we scored at the end of the auton, so it was not counted
],
  match_notes: [
    // - The 1893P have no shooting mech, all they can do is push
    - 934Z's battery disconnected for most of the match
    - Our drivetrain stopped working mid-match again, we think that this time it was because of the gears slipping
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Wings, Catapult",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q28",
  red_alliance: (teams: ("53E", "960Z"), score: 59),
  blue_alliance: (teams: ("53D", "9080C"), score: 122),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    Our drivetrain is not working, so we match load and shoot triballs into the offensive zone while 9080C pushes the triballs into the goal.
  ],
  auton_notes: [
    - We lost auton because our robot was still touching the triball at the end of auton
  ],
  match_notes: [
    - 960Z wasn't doing much because they're a clawbot, so we were able to outcycle them in scoring triballs
    - 9080C achieved an A tier elevation, sealing the win for us
  ],
  subsystems: (
    overperformed: "Catapult, Intake",
    satisfactory: "Wings",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q41",
  red_alliance: (teams: ("53D", "9290B"), score: 142),
  blue_alliance: (teams: ("1893J", "1893X"), score: 79),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    9290B has a very consistent puncher, so they match load and shoot triballs into the offensive zone while we push the triballs into our goal.
],
  auton_notes: [
    - The triball that we pushed didn't go completely under the net, so it was not scored
],
  match_notes: [
    - 1893J tried to block 9290B's shots, but they were too slow doing it
      - We took advantage of this opening to repeatedly score into the goal
    - Our drivetrain and wings were working consistently this round, allowing us to consistently and quickly push triballs into the goal.
    - 1893X managed to elevate, but the point difference we created negated it
  ],
  subsystems: (
    overperformed: "Catapult, Intake",
    satisfactory: "Wings, Drivetrain",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q49",
  red_alliance: (teams: ("53D", "5588B"), score: 79),
  blue_alliance: (teams: ("929N", "9290D"), score: 102),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    We match load and shoot triballs into our offensive zone while 5588B pushes as much triballs under the net as possible with their wings.
  ],
  auton_notes: [
    - Our robot did not touch the triball after auton, so we won the auton bonus
  ],
  match_notes: [
    - 929N had a more consistent launching mechanism than we did, so they were able to score faster
    - 9290D pushed us around while we tried to match load. Regardless, we managed to shoot the majority of our match loads over the barrier
    - 5588B got jammed and was not able to elevate, which became match losing when 929N managed to get an A tier elevation
  ],
  subsystems: (
    overperformed: "Wings, Drivetrain",
    satisfactory: "Catapult, Intake",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q59",
  red_alliance: (teams: ("7135B", "82856A"), score: 77),
  blue_alliance: (teams: ("53D", "7135E"), score: 39),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We match load and shoot triballs into our offensive zone while our 7135E pushes as much triballs as they can into the goal. 7135E is a push bot, so we will have to rely on our catapult's shooting speed.
  ],
  auton_notes: [
    - Our robot was still touching the triball at the end of auton, discounting it. 
  ],
  match_notes: [
    - 7135E did their best to collect the triballs while pushing 7135B
    - However, 7135E wasn't pushing many because they could only push triballs one at a time
    - We ended up losing because the red alliance could work together faster in scoring.
  ],
  subsystems: (
    overperformed: "Intake, Catapult",
    satisfactory: "Wings, Drivetrain",
    underperformed: "",
  )
)

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #grid(
  columns: 2,
  [
    - Gave us the most trouble this tournament. Zipties got caught in the drivetrain in the first match. Gear slippage made one side of the drivetrain nearly unusable in the second match. After that it was workable, but what Makhi did is a temporary fix.
    - Our plan to fix these problems is a complete rebuild of the drivetrain after our Dec. 16 Tournament.

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
        [Satisfactory], [2],
        [Underperformed], [3]
      )
    ]
  ],
  align(horizon)[#image("./hereford-zone-stampede/Drivetrain Performance.svg")]
  )
]

#box[
  == Intake
  #grid(
  columns: 2,
  [
    - Worked consistently, we even managed to intake into the cata a few times.
    - In the future, we might want to make the intake longer to grab triballs easier, and maybe even reach the inside of the match load zone for AWP.

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
        [Satisfactory], [1],
        [Underperformed], [0]
      )
    ]
  ],
  align(horizon)[#image("./hereford-zone-stampede/Intake Performance.svg")]
  )
]

#box[
  == Catapult
  #grid(
  columns: 2,
  [
    - Worked consistently, but the cycling was a bit slow compared to other teams. Maybe if we increase the banding, and add PID #glossary_footnote[PID] control to the catapult, we might be able to get the cycle time a bit faster.
    - Automatic catapult control wasn't working at the beginning of the tournament, so we had to use manual control during the tournament.
      - We suspect that it stopped working at the tournament even though it worked the night before because of the minor structural changes we made to the robot during the tournament.
    - We only got the automatic catapult code working after our last qualification match, so there is still potential for it to make catapult usage easier for future tournaments.

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
        [Satisfactory], [4],
        [Underperformed], [0]
      )
    ]
  ],
  align(horizon)[#image("./hereford-zone-stampede/Catapult Performance.svg")]
  )
]

#box[
  == Wings
  #grid(
  columns: 2,
  [
  - They worked every round. We managed to push quite a few triballs at a time with them.
  - We are planning to add guards to each wing to make them more sturdy.

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
        [Satisfactory], [5],
        [Underperformed], [0]
      )
    ]
  ],
  align(horizon)[#image("./hereford-zone-stampede/Wings Performance.svg")]
  )
]

= Skills
#nb_admonition(type: "competition", title: "Skills Performance")[
  - *Driver Skills Score:* 24
  - *Programming Skills Score:* N/A
  - *Total Skills Score:* 24
]

Our biggest takeaway from our driver skills run was that Eric and Rory need more practice match loading.

= Individual Reflections
== Ajibola
- I am a bit disappointed with the performance of the drivetrain during this tournament. The problems with the drivetrain did not show up during our testing, so we need to start performing more scrutinous tests.
- We also need to spend more time before tournaments practicing match loading and auton. Better time management might help with this.

== Ishika 
- The de-scoring thing cannot be our main point because in bigger matches it will be harder to do this with more resourceful teams. A lot of our functions stopped working after being hit so we need to work on keeping them safe. 
- Everything surrounds the functions of the robot and keeping the robot safe.
- We should work on making sure everything is set to work before the next tournament. We do not want to be fixing major problems at the next tournament.

#colbreak()

== Makhi 
- Our driving was great with the use of descoring however our subsystems need work and testing
- We ran into a problem with our catapult. It was really slow compared to other teams and also very inconsistent. We should definitely do more testing before the next tournament 

== Rory
- Bots got stuck in the banding of our bot twice and the wings broke twice. A motor also fell out from the catapult, but the main problem was the drivetrain not working correctly

== Eric
- While our driving exhibited excellence, particularly in effective descoring maneuvers, our subsystems revealed areas that require improvement and thorough testing. The catapult, in particular, posed a challenge as it operated at a slower pace compared to other teams and exhibited inconsistency. It's evident that additional testing is imperative before the next tournament to address these issues and ensure optimal performance.
- I suggest that we rebuild the drivetrain to not just focus on descoring
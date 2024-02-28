#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Valley Mall",
  type: "competition",
  start_date: datetime(year: 2024, month: 01, day: 13),
  attendance: "Jin, Ishika, Makhi",
  designed: "Jin",
  witnessed: "Ishika",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 17/31
  - *Qualification Matches Wins/Losses/Ties:* 4/3/0
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Aim to do skills and get a decent skills score
- For matches utilise bowling to grasp effectiveness
- Aim to get into the eliminations

= Matches
#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("47418B", "593D"), score: 28),
  blue_alliance: (teams: ("53D", "96807A"), score: 64),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
     Since the enemy alliance was weak, we wanted to try to match load because we believed they could effectively use our triballs to their advantage.
  ],
  auton_notes: [
    - Our auton was significantly different than Beltway Plazza's tournament 
    - We were very lucky with our auton
    - Our teammate went past the low barrier, losing auton

  ],
  match_notes: [
    - Our kicker got jammed, forcing us to bowl instead
    - 593D got stuck on the middle barrier, immobilizing them for a while
    - We blocked one their match load, causing three triballs to land on our field
    - Our wings couldn't open
    - Our teammate use their catapult to launch triballs for in the last ten seconds
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Drivetrain",
    underperformed: "Wings, Kicker",
    disabled: none,
  )
)

#nb_tournament_match(
  match:"Q9",
  red_alliance: (teams:("53D", "1723B"), score: 41),
  blue_alliance:(teams:("593B","75368A"), score:127),
  won: false,
  auton:"Tie",
  awp: false,
  strategy: [
    - We want to starve the enemy team from triballs. Instead of match loading, we plan to drop triballs on our intake and roll them over.
  ],
  auton_notes: [
    - Our auton only went forward, didn't work
  ],
  match_notes: [
    - 593B had a very impressive flywheel, they managed to match loaded all their triballs
    - We were in a pushing battle with their teammate
    - A tribal felt into our intake when we tried to match load. There isn't enough grip for the platform. 
    - 593B's wings were incredible 
    - We got a minor violation
  ],
  subsystems: (
    overperformed:"Intake",
    satisfactory:"Drivetrain, Kicker",
    underperformed:"Wings",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Q19",
  red_alliance: (teams:("12699A","12580A"), score:136),
  blue_alliance: (teams:("96807C","53D"), score:60),
  won: false,
  auton:"Red",
  awp: false,
  strategy: [
    Like the previous strategy, we plan to bowl and field starve our opponent 
  ],
  auton_notes: [
    - Our auton didn't worked again, crashing into the side of the middle barrier
  ],
  match_notes: [
    - Our pathway for bowling got block this time 
    - Our drivetrain motors were becoming loose
    - Unfortunately, we couldn't push the triballs the middle barrier with our intake and drivetrain. We need sleds.
  ],
  subsystems: (
    overperformed: "",
    satisfactory:"Kicker, Intake",
    underperformed: "Drivetrain, Wings",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Q30",
  red_alliance: (teams:("12580A","53D"), score:101),
  blue_alliance: (teams:("1723A","9012A"), score:39),
  won: true,
  auton:"Blue",
  awp: false,
  strategy: [
    The enemy team couldn't really take advantage of our match loads. We want our teammate to match the load because we fear our kicker is too inconsistent.
  ],
  auton_notes: [
    - Our auton didn't work again
    - Same result as last match
  ],
  match_notes: [
    - 12580A had a very fast and good catapult. We allowed them to match load
    - One of the enemie's drivetrain broke down.
    - During the last 30 seconds, some of the motors on the drivetrain we starting to come off
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"",
    underperformed: "Drivetrain, Wings, Kicker",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Q38",
  red_alliance: (teams:("16700A","9080S"), score:78),
  blue_alliance: (teams:("53D","9080R"), score:110),
  won: true,
  auton:"Red",
  awp: false,
  strategy: [
    We agreed to bowl until the last 45 seconds, then we will let them matchload the rest
  ],
  auton_notes: [
    - Our auton didn't work
    - It spinned in circles 
  ],
  match_notes: [
    - 9080R was blocking 9080S' flywheel
    - Our drivetrain's motor got loose, becoming a 4 motor drive. However, it still worked
    - Bowling was very successful in this match
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"Drivetrain, Kicker",
    underperformed: "Wings",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Q45",
  red_alliance: (teams:("53D","9845A"), score:60),
  blue_alliance: (teams:("929T","9080C"), score:150),
  won: false,
  auton:"Blue",
  awp: false,
  strategy: [
    Since our opponent were confident, we want field starve them and bowl.
  ],
  auton_notes: [
    - Auton didn't work
    - 929T scored them AWP
  ],
  match_notes: [
    - 9080C had a very fast and aggressive intake
    - They were a descore bot
    - Our pathway to bowl was blocked
    - They easily pushed all their triballs into the field 
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"Drivetrain, Kicker",
    underperformed: "Wings",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Q50",
  red_alliance: (teams:("53D","96807B"), score:87),
  blue_alliance: (teams:("9290A","47418A"), score:45),
  won: true,
  auton:"Blue",
  awp: false,
  strategy: [
    We plan to use our kicker for this match. We fear that we will get our third small violation 
  ],
  auton_notes: [
    - Our auton didn't work
  ],
  match_notes: [
    - Our kicker worked really well
    - Our drivetrain motors got loose, causing us to unable to go straight
    - We were very effective at pushing triballs into our goal. 
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"Kicker",
    underperformed: "Wings, Drivetrain",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Round of 16",
  red_alliance: (teams:("53D","12580A"), score:124),
  blue_alliance: (teams:("16700A","96807A"), score:82),
  won: true,
  auton:"Red",
  awp: false,
  strategy: [
   Since we were confident that we could easily win this match, we decided to use our kicker to matchload 
  ],
  auton_notes: [
    - None of the blue teams had an auton
    - 12580A scored their triball
  ],
  match_notes: [
    - We helped our teammate scored with their catapult
    - Easily play defense against red alliance
    - Wings still couldn't deploy
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"Drivetrain, Kicker",
    underperformed: "Wings",
    disabled: none,
  )
)

#nb_tournament_match(
  match: "Quarterfinals",
  red_alliance: (teams:("9080H","9080S"), score:147),
  blue_alliance: (teams:("53D","12580A"), score:90),
  won: false,
  auton:"Red",
  awp: false,
  strategy: [
   Since they were a stronger team, we planned to bowl.
  ],
  auton_notes: [
    - Auton didn't work
  ],
  match_notes: [
    - We called a time out because our drivetrain was very loose.
    - 9080H had an fast puncher and we couldn't stop them.
    - An overwhelming amount of triballs landed on our side.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory:"Kicker",
    underperformed: "Drivetrain, Wings",
    disabled: none,
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
      - Motors were very loose. In some matches, we were a 4 motor drive or 2 motor drive.
      - Sometimes, this cause us to be stuck turning in one intake. 


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
          [Underperformed], [4],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 5),
        ([Underperformed], 4),
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
      - Worked consistently
      - The sleds did a great job intaking it into the goal.

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
          [Overperformed], [8],
          [Satisfactory], [1],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 8),
        ([Satisfactory], 1),
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
  == Wings
  #grid(
    columns: 2,

    [
      - The wings did not work much during the entire duration of the tournament.

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
          [Underperformed], [9],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 9),
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
  == Kicker
  #grid(
    columns: 2,

    [
      - The rubberbands kept snapping and the motors were really loose.
      - We want to add a ratchet to our kicker so we can set it set when we bowl
      - We need to make the platform larger

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
          [Underperformed], [2],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 7),
        ([Underperformed], 2),
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

#colbreak()

= Skills
#nb_admonition(type: "competition", title: "Skills Performance")[
  - *Driver Skills Score:* 72
  - *Programming Skills Score:* 61
  - *Total Skills Score:* 133
]

= Individual Reflections

== Jin 
- I'm a little hesitant with bowling. I think we should always rely on bowling and instead start match loading and then bowl if we're getting counter
- We need to make the kicker platform a lot larger. The triball had a hard time being placed on it


== Ishika
- Some matches were better than others. We used a method called bowling instead of just match loading and it was pretty effective. However, there needs to be more practice with it because it did give us two violations.
- Definitely tightening everything because parts were falling because we rushed. Everything works decently we just need to fix it up more. Also this time we need to buy the longer rubber bands because we went around trying to find some for the kicker.  We also have to work on auton because for some reason it was not following commands that were put. 

== Makhi 
- Even though we only had two days to complete this rebuild, I'm not surprised with how the result. We need to work on tightening and testing out the robots. 
- I'm very mad with how some of our matches played out. Some of the teammates got in our way with our bowling
- We should make the kicker platform larger. It will help with grouping.
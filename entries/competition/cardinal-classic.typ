#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create_entry.with(
  title: "Cardinal Classic",
  type: "competition",
  start_date: datetime(year: 2024, month: 02, day: 10),
  attendance: "Jin, Ishika, Makhi, Rory, Eric",
  designed: "Jin",
  witnessed: "Ishika",
)

#nb_admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 9/56
  - *Qualification Matches Wins/Losses/Ties:* 5/1/0
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Do our best in the qualification matches to get a good alliance for eliminations.
- Try to get through most of eliminations and into the finals.
- Try and get a better driver skills score.

= Matches
#nb_tournament_match(
  match: "Q8",
  red_alliance: (teams: ("53C", "1727Y"), score: 65),
  blue_alliance: (teams: ("53D", "1727K"), score: 70),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    -  Since we're up against two confident teams, we are going to bowl. 1727K will have 6 triballs to cycle with. 
  ],
  auton_notes: [
    - We tried to go for auton win point but 1727K auton didn't work.
    - The red alliance scored all their red alliance triballs in the. 
  ],
  match_notes: [
    - 53C play heavy defense against our bowling but this allowed our teammate to cycle without anyone blocking them.
    - 1727Y was trying to cycle
    - We started playing bowl defense everytime we saw someone try to get to the match load bar
    - We successfully middle bar hang
  ],
  subsystems: (
    overperformed: "Drivetrain, Elevation, Vertical Wings, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: "Kicker, Horizontal Wings",
  )
)

#nb_tournament_match(
  match: "Q15",
  red_alliance: (teams: ("55618A", "53D"), score: 59),
  blue_alliance: (teams: ("11555A", "5839B"), score: 68),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [
    -  Since our team mate was a push bot, we wanted them to bowl while we cycle. They should try to descore when the enemy team double zone
  ],
  auton_notes: [
    - No one here had an auton but us.
    - 55618A's auton didn't work and failed to push an alliance triball that cost us the AWP
  ],
  match_notes: [
    - 11555A's drivetrain was very slow
    - We had trouble crossing the middle bar because our drive train failed 
    - One of our wing detach itself 
    - 11555A got in our way when we tried to bowl
    - We we tried to hang, the robot dropped and failed. 
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "",
    underperformed: "Drivetrain,Vertical Wings,Elevation",
    disabled: "HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q31",
  red_alliance: (teams: ("53D", "26648B"), score: 99),
  blue_alliance: (teams: ("9039N", "960W"), score: 87),
  won: true,
  auton: "Red",
  awp: true,
  strategy: [
    We bowl to the other side. 26648B will have 6 tirballs where they can launch

  ],
  auton_notes: [
    - 26648B successfully push an alliance triball into the goal
    - Our AWP worked, we used our vertical wings to push a triball off the match load zone.
  ],
  match_notes: [
    - We played heavy defense against 960W bowling
    - We started to bowl two at a time as 960W was trying to blocked us
    - During the final 30 seconds, 26648B started matchloading for us
    - We hang at the last few seconds which won us the match
  ],
  subsystems: (
    overperformed: " Elevation, VerticalWings, Drivetrain, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: " HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q46",
  red_alliance: (teams: ("7135E", "26648A"), score: 73),
  blue_alliance: (teams: ("21078A", "53D"), score: 79),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [
    We are going to bowl off our vertical wings. Our teammate will play defense. 

  ],
  auton_notes: [
    - Our teammate didn't had an auton
    - We push one triball out of the match load and score one alliance triball
    - The opposing alliance socred 3 triballs
  ],
  match_notes: [
    - 26648A immediately tried to match load
    - We used our intake to block the triball 
    - We started to cycle and played heavy defense against 7135E
    - 7135E tried to cycle but we stole the triball away from them
    - Both us and 7135E hung
  ],
  subsystems: (
    overperformed: "Elevation, VerticalWings, Drivetrain, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: " HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q56",
  red_alliance: (teams: ("7135J", "53D"), score: 101),
  blue_alliance: (teams: ("5525A", "24K"), score: 72),
  won: true,
  auton: "Red",
  awp: true,
  strategy: [
    Since 24K was a descore bot, we will try not to double zone. We will time our robots to be at the other side when we try to bowl

  ],
  auton_notes: [
    - 7135J was able to push the alliance triball into the goal
    - We got a triball off the match load zone
  ],
  match_notes: [
    - 24K battery died while trying to cross the middle barrier
    - With 24K out, we were freely to bowl and cycle as much as we want
    - 7135J was playing heavy defense at 5525A in order for us to score triballs faster
    - We used 24K to assist with our hang

  ],
  subsystems: (
    overperformed: "Elevation, VerticalWings, Drivetrain, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: " HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Q73",
  red_alliance: (teams: ("960X", "18990A"), score: 45),
  blue_alliance: (teams: ("5588E", "53D"), score: 109),
  won: true,
  auton: "Tie",
  awp: true,
  strategy: [
    We split the triballs evenly with 53A. We want to out cycle them as fast as possible

  ],
  auton_notes: [
    - Since neither of us had a mid rush auton ready, our auton failed
    - 929S managed to scored 3 triballs
  ],
  match_notes: [
    - We saw that 929S was going to match load and 53A blocked them
    - We bowl 2 triballs at a time while 53A play defense against them
    - 5588R tribled to cycle but was blocked by us
    - Both 53A and us hung and only 929S hang

  ],
  subsystems: (
    overperformed: "Elevation, VerticalWings, Drivetrain, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: " HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Round of 16",
  red_alliance: (teams: ("53D", "53A"), score: 105),
  blue_alliance: (teams: ("5588R", "929S"), score: 85),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [
    We split the triballs evenly with 53A. We want to out cycle them as fast as possible

  ],
  auton_notes: [
    - Since neither of us had a mid rush auton ready, our auton failed
    - 929S managed to scored 3 triballs
  ],
  match_notes: [
    - We saw that 929S was going to match load and 53A blocked them
    - We bowl 2 triballs at a time while 53A play defense against them
    - 5588R tribled to cycle but was blocked by us
    - Both 53A and us hung and only 929S hang
  ],
  subsystems: (
    overperformed: "Elevation, VerticalWings, Drivetrain, Intake",
    satisfactory: "",
    underperformed: "",
    disabled: " HorizontalWings, Kicker",
  )
)

#nb_tournament_match(
  match: "Quarterfinals",
  red_alliance: (teams: ("9290B", "9239N"), score: 104),
  blue_alliance: (teams: ("53A", "53D"), score: 78),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    Since we were against 9290B, 53A will play defensive. We will continue to bowl and cycle. Our plan is to out cycle them. 

  ],
  auton_notes: [
    - 53A's scored the alliance triballs into the match zone

  ],
  match_notes: [
    - We accidentally scored the alliance triball into the match zone as well
    - 9290B tried to match load but was blocked by 53A
    - Both alliance cycle through the match with much alliance defense
    - We never got the alliance triballs out of the zone
    - We failed to hang, 9290B and 9239N did hung
  ],
  subsystems: (
    overperformed: " Drivetrain, intake",
    satisfactory: "",
    underperformed: "Elevation, VerticalWings,",
    disabled: " HorizontalWings, Kicker",
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
      - We didn't run into much trouble with our drivetrain. The wheels didn't fall off and all the motors were properly plugged in. We are very happy with our barrier cross as well.

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
          [Overperformed], [7],
          [Satisfactory], [0],
          [Underperformed], [1],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 7),
        ([Satisfactory], 0),
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
  == Intake
  #grid(
    columns: 2,

    [
      - The intake had no problems with gripping the triballs and outtaking. However, we did had some problems with grouping the triballs 

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
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 8),
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
  == Elevation
  #grid(
    columns: 2,

    [
      - Since the robot was back heavy, this cause us to tip backwards. In order for the robot to properly hang, the barrier sit need to be further back.

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
          [Underperformed], [2],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 6),
        ([Satisfactory], 0),
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
        outset: 0,
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

#box[
  == VerticalWings
  #grid(
    columns: 2,

    [
      - We discovered a strategy to use our wings as barrier sit. Our barrier sit elevation mechanism was too center. Since our robot was back heavy, our elevation couldn't work with the barrier sit.


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
          [Underperformed], [2],
        )
      ]
    ],
    
    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 6),
        ([Satisfactory], 0),
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
  == HorizontalWings
  #grid(
    columns: 2,

    [
      - The sleds that we had on our wings came off which interfere with our hang. We didn't have the pistons to make them so they were rubberbanded down to our drive train

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
          [Disabled], [8],
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
        ([Disabled], 8),
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
      - The tray definitely improved our skill run. We are confident with our kicker performance, however need more practice with match loading
      - We believe that we can slip more gears on our slip gear to make the match loading faster

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
          [Disabled], [8],
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
        ([Disabled], 8),
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

#colbreak()

= Skills
#nb_admonition(type: "competition", title: "Skills Performance")[
  - *Driver Skills Score:* 130
  - *Programming Skills Score:* 75
  - *Total Skills Score:* 205
]

= Individual Reflections

== Jin 
-  I am very happy with our performance, though there are some problems that I want to address. Firstly, the vertical wings need to be mounted better. Often they came off and interfere with our movement. Second, I plan to take off the barrier sit and use only our wings to elevate. 

== Ishika
- This was a good tournament for us and we are very happy with the result. I think we need more practice with match loading and we'll be set. I do noticed that our intake axle started to bent.
== Makhi 
- I love our barrier sit. We can fly across the middle bar easily. I plan to make the tray modular so we can hotswap our kicker into a motoriazed hang. Hopefully since our robot is lower to the ground, we can get a C-tier hang
== Rory
- The horizontal wings needs the be reworked. They're not finished and harmed us more than they helped us. I hope we can get them finished before states
== Eric
-  The intake sleds snapped which wasn't good. I plan to recut more sleds and ensure their quality is up to standards. We cannot afford more of our sleds to break, especially during a competition. Overall, I am pleased with our performance. 
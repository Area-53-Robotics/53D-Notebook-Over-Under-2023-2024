#import "/template/template.typ": *
#import "@preview/tablex:0.0.8": *

#show: create_entry.with(
  title: "Game Challenge - Analysis",
  type: "identify",
  start_date: datetime(year: 2023, month: 4, day: 30),
  attendance: "Ajibola, Emma, Von, Eric",
  designed: "Ajibola",
  witnessed: "Eric",
)

#nb_todo(
  date: datetime(year: 2023, month: 4, day: 30),
  (
    (true, "Analyze the game challenge rules to identify the game objectives for the season. (Everyone)"),
  )
)

= Field Elements #footnote[All images and diagrams are sourced from #link("https://content.vexrobotics.com/docs/23-24/vrc-overunder/VRC-Manual-2324-1.1-Release.pdf")]


#image("/assets/field-elements/game-field.png", width: 55%)

== Field Overview
- Area: 12ft x 12ft foam mat, surrounded by a perimeter and divided in half by a barrier spanning the length of the field.
- (2x) Alliance colored triballs for preload—one per team.
- (22x) Triballs outside the field for Alliance match loads
- (1x) Triball centered under the low elevation bar
- (1x) Triball touching the Barrier halfway between the Autonomous Line and the Elevation Bar on the side of the Autonomous Line without a neutral zone
- (1x) Triball touching the Barrier and the Autonomous Line
- (1x) Triball between the Goal and the Barrier on the Autonomous Line
- (1x) Triball in each Match Load Zone

#gridx(
  columns: (1fr, 1fr),
  rows: auto,
  gutter: 50pt,
  [
    == Triballs
    - 60 total Triballs can be in play
    - 2 Alliance Triballs per team
    - 22 Match Load Triballs per alliance
    - 12 Field Triballs
    - 6.18” tall
    - Weight of 103-138g
    - Abnormal shape (Reuleaux triangle/Tetrahedral Sphreroform)

    #tablex(
      columns: 2,

      cellx(fill: gray)[*Achievement*], cellx(fill: gray)[*Point Value*],
      [Each Triball Scored in a Goal], [5 points],
      [Each Triball Scored in an Offensive Zone], [2 points]
    )
  ],
  [#image("/assets/field-elements/triball.png", height: 20em)],
  [#image("/assets/field-elements/elevation-bar.png")],
  [
    == Elevation Bar
    - *Elevation Bar* - The Alliance-colored PVC pipes, two red and two blue, at either end of the Barrier.
    - *Elevation Bar Cap* - The yellow plastic piece at the top of each set of Elevation Bars. The Elevation Bar Cap is a separate field element and is not considered part of the Elevation Bar.
    - *Elevation Tier* - A status that represents an Elevated Robot's height off of the field at the end of the Match. They go from A tier to J tier as the highest
    - 1 set of Elevation Bars per alliance
  ],
  [
    == Goal
    - *Goal* - The Alliance-colored, netted structure on either side of the field, one red and one blue, into which Triballs can be scored for points.
    - Two (2) goals, one (1) per Alliance
    - Total length - 47.13 inches 
    - Gap length - 39.37 inches
    - Width - 19.20 inches
    - Height (exclude net) - 5.78 inches
    - Degree of net - 14.27 degrees
  ],
  [#image("/assets/field-elements/goal1.png")],
  [#image("/assets/field-elements/load-zone.png")],
  [
    == Match Load Zones
    - *Match Load Bar* - The Alliance-colored structure, made up of 2” Schedule 40 PVC pipe (with a 2.375” outer diameter) and associated connectors/hardware, that connects diagonally across a corner of the Field.
    - Four Match Load Bars / Match Load Zones, two per Alliance
    - Length - 30 inches
    - Height - 2.38 inches
    - Distance away from corner - 17.33 inches 
    - Angle - 45 degrees
  ],
  [
    == Robot Skills Challenge
    - One minute long Matches in an effort to score as many points as possible.
    - These Matches consist of Driving Skills Matches, which are entirely driver-controlled, and Autonomous Coding Skills Matches, which are autonomous with limited human interaction.
    - Teams will be ranked based on their combined score in the two types of Matches.
    - The two (2) Blue Alliance Triball Preloads will not be used
    - All of the forty-four (44) Match Load Triballs will be located in the red Alliance Station
  ],
  [#image("/assets/field-elements/skills-field.png")],
)

== Robot Sizing Restrictions
- #vex-rule[R4] Robot must fit within an 18” x 18” x 18” volume
- #vex-rule[SG2] Horizontal expansion is limited to 36”
- There is NO limit on vertical expansion

#grid(
  columns: 2,
  rows: 1,

  [
    == Autonomous
    - *Autonomous Period* - A time period during which Robots operate and react only to sensor inputs and commands pre-programmed by the Students into the Robot control system.
      - Fifteen (15) seconds long
    - *Neutral Zone* - One of two areas of the field bordered by white tape lines, the Barrier, and the field perimeter. The Neutral Zone is defined as the gray foam tiles themselves; it is not a 3-dimensional volume.
    - #vex-rule[SC2] Scoring of the Autonomous Bonus is evaluated immediately after the Autonomous Period ends (i.e., once all Triballs, Field Elements, and Robots on the field come to rest).
      - Elevation Tier points are not included in the calculation of an Alliance's score for the purposes of determining the Autonomous Bonus.
      - If the Autonomous Period ends in a tie, including a zero-to-zero tie, each Alliance will receive an Autonomous Bonus of four (4) points.
    - #vex-rule[SG1] Each robot must begin the match on their alliance's starting tiles that are adjacent to their alliance robot
    - #vex-rule[SG9] Stay in your starting Zone during Autonomous: During the Autonomous Period, Robots may not contact foam tiles, Triballs, or Field Elements on the opposing Alliance's side of the Neutral Zone, or in the opposite Offensive Zone from which they began the Match.
    - #vex-rule[SC7] Autonomous Win Point Conditions:
      - Removed the triball from the Alliance's Match Load Zone that coincides with their Starting Tiles
      - Scored at least one Alliance Triball in the Alliance's own Goal
      - Ended the Autonomous Period with at least one Robot contacting their own Elevation Bar
    - Autonomous Bonus: 8 Points
  ],
  image("/assets/field-elements/neutral-zones.png")
)

#nb_admonition(type: "note")[
  #vex-rule[SG9] makes a solo autonomous win point impossible to achieve unless you can consistently score into your goal from across the field. We strongly believe that teams will not be able to do this, especially at the beginning of the season.
]

== Match Scoring

#tablex(
  columns: (1fr, 1fr),
  rows: 8,
  align: center + horizon,
  header-rows: 1,

  cellx(fill: gray)[*Achievement*], cellx(fill: gray)[*Point Value*],
  [Autonomous Bonus], [8 Points],
  [Each Triball Scored in a Goal], [5 Points],
  [Each Triball Scored in an Offensive Zone], [2 Points],
  [Elevation - Top Tier], [20 Points],
  [Elevation - 2nd Tier], [15 Points],
  [Elevation - 3rd Tier], [10 Points],
  [Elevation - 4th Tier], [5 Points]
)

#nb_admonition(type: "note")[
  We will be going on summer break hiatus until July.
]
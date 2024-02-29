#import "/template/template.typ": *

#show: create_entry.with(
  title: "Game Manual Updates & Meta Changes",
  type: "identify",
  start_date: datetime(year: 2024, month: 1, day: 31),
  attendance: "Ajibola, Jin",
  designed: "Ajibola",
  witnessed: "Jin",
)

#nb_todo(
  date: datetime(year: 2023, month: 1, day: 30),
  monthly-schedule: "Off",
  yearly-schedule: "On",
  (
    (true, "Identify and analyze the game manual changes (Everyone)"),
    (true, "Identify and analyze the changes to the Over Under meta (Everyone)"),
  )
)

= Game Manual Updates
Today a few noteworthy changes were made to the VEX Game Manual #footnote[https://www.vexrobotics.com/over-under-manual]:
- #vex-rule[SG11] was updated to reduce the Short Barrier protection time from 30 seconds to 15 seconds
  - This makes it easier for teams to interfere with opposing alliance's elevation by permitting them to do it until the last 15 seconds of the match
  - We will take advantage of this in our upcoming competitions to prevent opposing teams from scoring points by elevating on the barriers until the last 15 seconds
- The elevation bar caps were removed from the vertical elevation bars
  - This makes it easier to develop high-scoring elevation mechanisms by making robot contact with the vertical elevation bar more consistent
  - This does not directly affect us because our elevation mechanism does not reach the top of the vertical elevation bar, but it will be worth keeping in mind for future iterations of our elevation mechanism

= Meta Changes
At the Valley Mall and Loyola Blakefield competitions, we have observed shifts towards some new meta #glossary-footnote[Meta] strategies. We took this opportunity to evaluate each strategy and determine their possibility for our usage in the future.

#gridx(
  columns: 2,

  [
    == Half Court Shots
    Half court shots are when a robot rapid fires matchloads from across the field. This strategy is common in low level matches such as the local tournaments that we attend. However, in higher level tournaments, this strategy can be easily taken advantaged of. An opposing robot can sit infront of the goal and push triballs over while the other team mate can use these triballs and score. 
  ],

  image("./meta-changes/Half court shots.excalidraw.svg", height: 17em),

  image("./meta-changes/Bowling.excalidraw.svg", height: 17em),

  [
    == Bowling
    In more advanced matches, instead of shooting their triballs, teams drop triballs infront of their robot and push triballs across the field. This strategy is known as bowling and is starting to gain popularity in Maryland, proven by its prevalence at our previous tournaments. However,bowling can be prevented by blocking the opposing robot's path or stealing the triballs they are pushing. 
  ],

  [
    == Cycling
    Cycling is passing one triball into the intake, carrying it toward the objective, and then returning for another. Cycling prevents the other alliance from even attempting to take the triball unless they are forced into the match loading bar and the team is unable to seize the triball. Robots that employ this tactic typically have long intakes, direct-positioning intakes, or the ability to move their wheels up the match loading bar and retrieve the match load. One disadvantage is that it's the slowest of the three strategies.
  ],
  image("./meta-changes/Cycle.excalidraw.svg", height: 17em),

)
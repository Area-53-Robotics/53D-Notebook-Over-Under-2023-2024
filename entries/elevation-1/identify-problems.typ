#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1 - Problems",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 12),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Jin",
  witnessed: "Ajibola",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 1),
  (
    (true, ""),
  )
)

= Middle Bar Elevation
During the Gateway to the West competition, we saw that we could just hang with our vertical wings. Due to the the kicker, our robot leans backwards when we try to balance on the middle barrier. Since our vertical wings are locking, we can initiate the robot on the middle barrier and balance the robot with our vertical wings.

#tablex(
  columns: 2,

  image("./identify-problems/Identify barrier sit 1.excalidraw.svg"),
  image("./identify-problems/Identify barrier sit wings.excalidraw.svg"),

  [Since the center of gravity is more towards the kicker/back end of the robot, it leans back when we try to hang. Our elevation mechanism is further away from the center of gravity than it is to the vertical wings.],
  [The center of gravity is closer to the vertical wings than it was to the elevation mechanism. We tip less when we extend the wings to support us.]
)

We decided to ditch the middle bar balance elevation mechanisms and use our vertical wings instead. This allows us to reduce weight on our robot and gain an extra piston that we can use for future mechanisms.

= Elevation Mechanism
Since the Loyola competition, we removed our pneumatic hang mechanism to reduce weight. Since our kicker tray is modular, we can replace the gear ratio with a motorized elevation bar hang mechanism. This would allow us to have a motorized elevation mechanism for matches while also being able to use the kicker for skills. Hopefully, we can achieve C tier elevation with this method.

#table(
  columns: 2,

  image("./identify-problems/Kicker mech.excalidraw.svg"),
  image("./identify-problems/The hang mech.excalidraw.svg"),

  [
    With this design, the kicker will use the outer silver driven gear. The kicker, tray and stopping point can be hotswapped for our elevation bar hang mechanism during matches. 

    Since the flex wheels are more elastic than the rubber bumper, they absorb more of the impact, giving us more controlled grouping.
  ],
  [
    With this design, the hang uses the inner silver gear. The hang is modular and can be hotswapped for our kicker mechanism during skills.
  ]
)

= Rule Concern
A concern we had when developing this idea was that it might be forbidden to switch subsystems under #vex-rule[R1] *One Robot per Team.* However, #vex-rule[R1] does not prohibit the swapping out of level 3 subsystems, which are defined as "Additional mechanisms (and associated motors) that allow manipulation of Triballs, Field Elements, or navigation of field obstacles." Both the kicker and the elevation bar hang mechanism fall under the description for level 3 subsystems, and therefore can be swapped out without violating #vex-rule[R1].
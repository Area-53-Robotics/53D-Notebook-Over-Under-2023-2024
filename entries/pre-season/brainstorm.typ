#import "/template/template.typ": *

#show: create_entry.with(
  title: "Game Challenge - Design Strategies",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 7, day: 14),
  attendance: "Ajibola, Ishika, Eric, Emma"
)

Before beginning the construction of our robot, we wanted to take time to brainstorm different strategies for how to approach the game challenge.

#nb_pro_con(
  name: "Heavy Bot",
  image: image("./brainstorm/Heavy bot.excalidraw.svg"),
  pros: [
    - *Stability* - Allows for more flexibility in weight distribution, which in turn allows for better stability
    - *Increased Traction* - The added weight can improve traction, allowing the robot to better grip the playing surface
    - *Defense* - A heavier bot can more easily withstand being push around due to having more inertia
  ],
  cons: [
    - *Power* - A heavier bot requires more power to move
    - *Weight & Elevation* - A heavier bot will be more challenging to elevate with during the endgame
  ],
  notes: [
    - In previous seasons, Maryland bots have tended to be heavy
  ],
)

#nb_pro_con(
  name: "Light Bot",
  image: image("./brainstorm/Light bot.excalidraw.svg"),
  pros: [
    - *Speed* - Lighter robots can accelerate and move faster across the field
    - *Energy Efficiency* - Lighter bots are usually more simple, and as a result use less motors and power

  ],
  cons: [
    - *Impact Resistance* - Lighter robots may be more susceptible to damage during collisions with other robots or game elements.
    - *Limited Pushing Power* - A light robot will not be able to match the pushing power of a heavier robot.
  ],
  notes: [
    - Since this game will likely requires a lot of subsystems, having extra motors could come in handy later in this design cycle
  ],
)

#colbreak()

#nb_pro_con(
  name: "Descore Bot",
  image: image("./brainstorm/Descore bot.excalidraw.svg"),
  pros: [
    - *Descore* - Allows us to get under the match goal and descore the opponsing alliance's scored triballs if they double zone
    - *Weight* - A descore robot is the the lightest of the three options
  ],
  cons: [
    - *Match Specific* - The strategy of this robot heavily depends on the enemy team double zoning to enable us to descore
    - *Wasted Space* - This robot sacrifices a lot of the legal 18 in#super[3] volume for a robot, which makes some tasks, such as elevation above A tier, impossible.
  ],
  notes: [
    - Having a descore bot will prevent most enemy teams from double zoning in fear of getting their triballs descored
  ],
)
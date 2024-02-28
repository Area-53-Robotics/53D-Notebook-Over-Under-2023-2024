#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 1, day: 18),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Ajibola",
)

Throughout the season, we have observed a large variety of elevation options, with each of them varying greatly in how they are constructed. We created a pros and cons list for each of them to organize our collective thoughts.

#nb_pro_con(
  name: "Middle Barrier Hang",
  image: image("./brainstorm/Middle bar hang.excalidraw.svg"),
  pros: [
    - *Speed* - Super quick, giving us more playtime on the field before we have to hang
    - *Simplicity* - The middle hang is not complicated to make
  ],
  cons: [
    - *Tier* - The barrier hang only scores an A-tier elevation
    - *Balance* - The barrier hang requires a good center of gravity
  ],
  notes: [
    - A lot of teams don't have a middle bar hang, making us very compatible with partners 
    - Requires a pneumatics
  ],
)

#nb_pro_con(
  name: "Pull Up Hang",
  image: image("./brainstorm/Pull up hang.excalidraw.svg"),
  pros: [
    - *Tier Flexibility* - This hang can do more different levels of hangs
  ],
  cons: [
    - *Torque* - This hang requires a lot of torque because it requires lifting the entire bot
    - *Space* - This hang is huge, taking up a majority of the space
  ],
  notes: [
    - A lot of teams run this
    - Most teams transform this hang into a flywheel design
  ],
)

#colbreak()

#nb_pro_con(
  name: "Upside-Down Hang",
  image: image("./brainstorm/Upside-down hang.excalidraw.svg"),
  pros: [
    - *Highest Tier* - Can score a J tier elevation, the highest tier
  ],
  cons: [
    - *Weight* - this hangs requires a lot of torque because it needs to fully lift the robot upside down
  ],
  notes: [
    - In order to make this hang work, we would need a descore or a light bot
  ],
)
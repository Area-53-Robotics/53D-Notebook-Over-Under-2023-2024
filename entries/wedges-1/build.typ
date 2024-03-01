#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wedges #1",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 11),
  end_date: none,
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Makhi",
  witnessed: "Ishika",
)

= #datetime(year: 2023, month: 11, day: 11).display("[year]/[month]/[day]")
#nb_todo(
  date: datetime(year: 2023, month: 11, day: 11),
  monthly-schedule: "Off",
  yearly-schedule: "On",
  (
    (true, "Brainstorm possible wedges for the robot (Everyone)"),
    (true, "Select the best wedges for the robot using a decision matrix (Everyone)"),
    (true, "Create a plan for the construction of the wedges using CAD (Ajibola)"),
    (true, "Attach wedges to the robot (Makhi, Eric, Rory, and Ishika)"),
    (false, "Finish tuning the catapult tower (Makhi, Eric, and Rory)"),
  )
)

From observing robots from the higher level and other robots at the tournament, we recognized the power of wedges. Robots equipped with wedges can effectively block, push, or redirect opponents, disrupting their planned maneuvers and potentially limiting their scoring opportunities.

#tablex(
  columns: 2,
  align: center + horizon,

  cellx(fill: gray.lighten(20%))[Aggressive Wedges], cellx(fill: gray.lighten(20%))[Passive Wedges],
  [#image("./build/Aggressive wedges.excalidraw.svg")], [#image("./build/Passive wedges.excalidraw.svg")],

  [Used to get under the other alliance bot and tilt them over or unbalance them],
  [Used to push triballs over the middle bar],
)

== Delegation
- Inventory (collecting materials from the manifest to create the wedges): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Cut and drill the lexan: Eric & Rory
- Attach the hinges and standoffs for the wedges on the robot: Makhi, Eric, & Rory
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika and Ajibola

#colbreak()

== Materials
- Lexan for the wedges
  + We cut a lexan sheet into a 3” x 10” rectangle 
  + We drilled holes through them for screws

#gridx(
  columns: 2,
  rows: auto,

  [
    == Assembly
    - Assembled wedges to the front of the robot
      - Wedges serve two purposes in the game:
        - They can be offensive, upsetting the balance of enemies bots
        - They can be defensive, helping push triballs over the middle barrier
    - Passive wedges:
      - Used collars and stand offs and set them at a 45 degree angle 
      - Attached the lexan sheet to the stand-offs. They are zip tied together
    
    == Troubleshooting
    - We worked on tensioning the catapult since the catapult base was lowered from last meeting
      - We readjusted the stopper of the catapult
    - Having the tower so low to the ground led to some clearance problems for us. Instead of using gears, we had to use sprockets and chains to connect the catapult axles.
  ],
  figure(
    image("./build/11-11.png", height: 100%),
    caption: [
      The passive wedges on the back of the robot. Additionally, you can see how we ziptied the lexan onto the lexan plate.
    ]
  )
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wedges #1",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 11),
  end_date: none,
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
)

From observing robots from the higher level and other robots at the tournament, we recognized the power of wedges. Robots equipped with wedges can effectively block, push, or redirect opponents, disrupting their planned maneuvers and potentially limiting their scoring opportunities.

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  gridx(
    columns: 2,
    rows: auto,

    cellx(colspan: 2)[
      = #datetime(year: 2023, month: 11, day: 11).display("[year]/[month]/[day]")
      #nb_todo(
        date: datetime(year: 2023, month: 11, day: 11),
        monthly-schedule: none,
        yearly-schedule: none,
        (
          (true, "Brainstorm possible wedges for the robot (Everyone)"),
          (true, "Select the best wedges for the robot using a decision matrix (Everyone)"),
          (true, "Create a plan for the construction of the wedges using CAD (Ajibola)"),
          (true, "Attach wedges to the robot (Makhi, Eric, Rory, and Ishika)"),
          (false, "Finish tuning the catapult tower (Makhi, Eric, and Rory)"),
        )
      )
    ],
    [
      == Build Steps
      - Assembled wedges to the front of the robot
        - Wedges serve two purposes in the game. They can be offensive, upsetting the balance of enemies bots
        - They can be used of defense, helping push triball over the middle barrier
      - Passive wedges:
        - Used collars and stand offs and set them at a 45 degree angle 
        - Cut a 8” lexan sheet and attached it to the front of the standoff using zip ties
      - Worked on tensioning the catapult since the catapult base was lowered from last meeting
        - Readjusted the stopper of the catapult
    ],
    [#image("./build/11-11.png")],
  ),

  nb_admonition(type: "note")[
    Having the tower so low on the ground leads to some problems for us. Instead of using gears, we used sprockets and chains to connect the catapult.
  ]
)
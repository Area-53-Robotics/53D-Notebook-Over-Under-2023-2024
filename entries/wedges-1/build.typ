#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wedges #1",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 11),
  end_date: none,
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
)

We don't plan on making any major rebuilds until the winter break in December. Right now, what we're focusing on is tuning the robot for the Hereford Zone Stampede Tournament on 2023/12/02. We are satisfied with the strategy behind our current robot because it allows us to descore when the opposing team double zones, and the Dulaney tournament showed that we are one of the only teams that takes advantage of this aspect of the game. However, we noticed that the catapult was lacking, and we would need to fix it before the Hereford tournament.

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
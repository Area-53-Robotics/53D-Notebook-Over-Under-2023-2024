#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #2 - Catapult #1 Improvements (cont.)",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 17),
  end_date: none,
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Makhi",
  witnessed: "Eric",
)

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  gridx(
    columns: 2,
    rows: auto,

    cellx(colspan: 2)[
      = #datetime(year: 2023, month: 11, day: 17).display("[year]/[month]/[day]")
      #nb_todo(
        date: datetime(year: 2023, month: 11, day: 17),
        monthly-schedule: "Behind",
        yearly-schedule: "Behind",
        (
          (true, "Finish boxing the catapult (Makhi, Eric, and Rory)"),
          (true, "Check for and fix any remaining problems with the wings (Ajibola and Ishika)"),
        )
      )
    ],
    [#image("./build/11-17.png")],
    [
      After the previous meeting, we found that lowering the catapult base came with some problems. One problem is the chain that we used for the catapult began to slip. We hope to complete the catapult and solve these issues in order to start working on the other subsystems.

      == Build Steps
      - Boxed the stand-offs connecting the catapult better
        - Since they're not C-channels we can't use C-channels to secure it better
        - Instead, several stand-offs connecting from across does the job
      - Moved the batteries and piston canister to the side of the chassis 
      - Changed the axle that held the rubber bands
        - We want to make it as low as possible to ensure proper tension
        - We must be careful of wear, otherwise the catapult could break at a crucial time, such as in the middle of a competition match
        - Attached a rotation sensor to the bottom axle with a sprocket
    ],
  ),
)
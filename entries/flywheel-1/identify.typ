#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "identify",
  start_date: datetime(year: 2023, month: 12, day: 8),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Eric",
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 8),
  (
    (true, "Identify the design constraints and goals for the flywheel. (Everyone)"),
    (true, "Brainstorm possible configurations for the flywheel. (Everyone)"),
    (false, "Select the best flywheel configuration using a decision matrix. (Everyone)"),
    (false, "Create a plan for the construction of the flywheel using CAD. (Ajibola and Makhi)"),
  )
)

#grid(
  columns: 2,

  [
    After watching other competitive teams and observing the meta in Maryland, we decided to switch our outtake mechanism from a catapult to a flywheel. We believe that for the time being, this is our best way to keep up with the fast cycle times of other Maryland teams.

    The flywheel is an different outtake from the catapult. Instead of needing to wind the catapult arm, the flywheel doesn't need to reload and instead is constantly spin. This allow us to simply drop triballs on the flywheel instead of waiting for the catapult to go down when match loading.

    The purposes, design goals, and design constraints remain the same as those that we identified in our #past_nb_entry_reference(  title: "Outtake", type: "identify", date: datetime(year: 2023, month: 9, day: 16)).
  ],
  box(height: 35%)[#image("/assets/identify/identify-flywheel.excalidraw.svg")]
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  // align: left + top,

  cellx(fill: green)[*Pros of the flywheel compared to the catapult*],
  cellx(fill: red)[*Cons of the flywheel compared to the catapult*],
  [
    - Fast and easy to match load
    - Does not have a wind up time inbetween match loading
    - Harder to get blocked by other teams
  ],
  [
    - Requires time for the flywheel to accelerate to full speed
    - Very inconsistent grouping
  ],
)
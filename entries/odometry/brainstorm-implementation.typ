#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous - Implementation",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 2, day: 13),
  attendance: "Ajibola, Ishika",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2024, month: 2, day: 13),
  (
    (true, "Brainstorm possible implementation methods for PID (Everyone)"),
    (true, "Select the best implementation method using a decision matrix (Everyone)"),
    (true, "Build the kicker upgrades. (Everyone)"),
  )
)

Now that we have decided to use PID with a possibility for Pure Pursuit, we brainstormed a few different implementation methods that have the capability to use them.

#nb_pro_con(
  name: "DIY Implementation",
  image: circle(fill: gray, image("/assets/logos/logo.svg")),
  pros: [
    - *Customizability* - We would be able to add and change as many features as we desire, and make the algorithms specific to the robot
    - *Revertability* - Using Git commands, we can easily revert any breaking changes we make to the codebase
  ],
  cons: [
    - *Support* - It would be slightly harder to get assistance from others if an algorithm does not work
    - *Development Time* - Unlike with a library, we would have to take time to program the algorithms we need
  ],
  notes: [
    - We attempted this last year, to an unsatisfactory level of success.
    - However, because we have more experience now, a DIY implementation would likely be more successful this year
  ],
)

#colbreak()

#nb_pro_con(
  name: "LemLib",
  image: image("./brainstorm-implementation/LemLib.png", height: 5em),
  pros: [
    - *Actively Maintained* - LemLib will continue being developed throughout this season, so if we encounter problems with the library we can request a fix from the developers
    - *Robust Movement Options* - LemLib has linear PID movement, turning PID movement, boomerang PID movement (curved movement), and Pure Pursuit
    - *Support* - Many other teams use LemLib, so we can get support and advice from them
  ],
  cons: [
    - *PROS 4 Unstable* - LemLib has a version that is compatible with our version of PROS, but it is currently unstable and will likely have a lot of issues
  ],
  notes: [
    - Created and maintained by other VRC students
  ],
)

#nb_pro_con(
  name: "ARMS",
  image: image("./brainstorm-implementation/ARMS.svg"),
  pros: [
    - *PROS 3 Compatibility* - It has the greatest compatibility with PROS, which will make debugging issues easier
  ],
  cons: [
    - *Deprecated* - ARMS is no longer being updated, so if we encounter any significant problems we will be unable to fix them without modifying the source code ourselves
    - *PROS 4 Incompatibility* - We would have to downgrade our current version of PROS from the PROS 4 Beta to the PROS 3 stable version to use this library
  ],
  notes: [
    - Created by the Purdue SigBots VEX U team, the same group that created PROS. #glossary-footnote[PROS]
  ],
)
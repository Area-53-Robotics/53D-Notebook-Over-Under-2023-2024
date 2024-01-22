#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Identify Design Goals and Constraints",
  type: "identify",
  start_date: datetime(year: 2023, month: 7, day: 15),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 7, day: 15),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Identify the design constraints and goals for the drivetrain. (Everyone)"),
    (true, "Determine the mathematical and scientific concepts involved in drivetrain design (Everyone)"),
  )
)


#grid(
  columns: 2,

  [
    Our team spent a lot of time talking and planning the foundation of our robot: the drivetrain. The drivetrain's shape determines what other subsystems we can build in the future, making it even more critical. However, before getting into the technical aspects, we figured out how the drivetrain fits into our overall game plan, ensuring it helps us do well in the competition.
  ],
  box(height: 25%)[#image("/assets/identify/identify-drivetrain.excalidraw.svg")]
)

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Aspects of the Drivetrain*],
  [*Mobility* - enables the robot to move in different directions. This includes forward and backward motion and strafing or lateral movement.],
  [*Versatility* - different drivetrain setups, such as tank drive, holonomic (omni-directional) drive, or mecanum drive, offer varying levels of maneuverability and are suited to different game strategies.],
  [*Foundation* - the drivetrain serves as the robot's base, so its weight will be distributed on top of the drivetrain. Proper weight distribution is crucial for maintaining stability and preventing tipping during rapid movements or interacting with game elements.],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - To withstand and support the weight of other subsystems on the robot.
    - A speed faster than 333 RPM (56.723 in/sec)
      - This game will likely require faster movement than Spin Up, so we want a drivetrain speed higher than last year.
    - To be able to generate enough torque to push other robots
    - To fit under the goals for descoring
  ],
  [
    - It must fit within the 18-inch cubed limit.
      - In order to fit other subsystems, the drivetrain will have to be constrained further than this. These are the preliminary size limits we came up with:
        - Length: 16 in
        - Width: 16 in
        - Height: 6 in
    - The total power drawn from the motors in the drivetrain cannot exceed 88W.
  ],
)
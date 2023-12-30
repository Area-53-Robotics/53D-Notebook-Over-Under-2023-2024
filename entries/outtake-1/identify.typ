#import "/template/template.typ": *

#show: create_entry.with(
  title: "Outtake - Identify Design Goals and Constraints",
  type: "identify",
  start_date: datetime(year: 2023, month: 9, day: 16),
  attendance: "Ajibola, Ishika, Eric, Rory",
)

#nb_todo(date: datetime(year: 2023, month: 9, day: 16), monthly-schedule: "On")[
  + Identify the design constraints and goals for the outtake. (Everyone)
]

During the team discussion about the outtake, our group engaged in a collaborative conversation where each member had the opportunity to express their thoughts about what should go into an outtake. 

The outtake is a mechanism or system that facilitates the controlled release, expulsion, or transfer of objects from the robot to the surrounding environment.

#tablex(
  columns: (1fr),
  rows: 4,
  header-rows: 1,
  align: left + top,

  cellx(fill: gray, align: center)[*Purposes of an Outtake*],
  [*Scoring* - an outtake mechanism allows for precise control over the release or placement of game elements. This precision is crucial for accurately scoring points in designated zones.],
  [*Multi-handling* - an outtake can be designed to handle different objects in various ways. This flexibility is valuable in scenarios where the robot needs to adapt its strategy based on the specific game elements available on the field.],
  [*Manipulation* - outtake mechanisms enable robots to manipulate and interact with game elements beyond just collecting them. This capability is particularly valuable in games where robots need to perform specific tasks or actions with the collected objects.],
)

#tablex(
  columns: (1fr, 1fr),
  rows: 2,
  header-rows: 1,
  align: left + top,

  cellx(fill: green)[*Design Goals*], 
  cellx(fill: red)[*Design Constraints*],
  [
    - Provide precise control over the release or placement of game elements.
    - Able to align to the abnormal shape of the triball consistently 
    - Fast cycle rate to shoot out match loads
    - Seamlessly integrate with the intake mechanism.
      - Not a must because we can match load directly into the intake, but an intake to outtake system would greatly increase our efficiency.
  ],
  [
    - It must fit within the 18-inch cubed limit.
    - It must be able to grab and hold onto the triball's abnormal shape
    - Height of the outtake needs to be low enough so we can cross under the elevation bar if needed. 
  ],
)
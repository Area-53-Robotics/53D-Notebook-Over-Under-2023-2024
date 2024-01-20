#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 12, day: 8),
  attendance: "Ajibola, Ishika, Eric, Makhi"
)

#nb_pro_con(
  name: "Stationary Flywheel",
  image: [
    #box(image("./brainstorm/Stationary flywheel.excalidraw.svg"), height: 10em)
    #box(image("./brainstorm/Bird eye view of stationary flywheel.excalidraw.svg"), height: 10em)
  ],
  pros: [
    - *Grouping* - Due to its short height, the triballs more consistently land in the same place
  ],
  cons: [
    - * Easily Blocked* - Due to its short height, the trajectory of the triballs is much lower, making them easier to block
    - *Space and Weight* - Stationary flywheels can be bulky, heavy, and large, taking up most of the legal 18 in#super[3] space for the robot
  ],
  notes: [
    - Incredible for skills, in which we won't run into anyone attempting to block us
  ],
)

// #colbreak()

#nb_pro_con(
  name: "Four Bar Flywheel",
  image: [
    #box(image("./brainstorm/Fourbar fly wheel.excalidraw.svg"), height: 10em)
    #box(image("./brainstorm/Bird eye view of four bar fly wheel.excalidraw.svg"), height: 10em)
  ],
  pros: [
    - *Adjustable Height* - Sprocket and rubber band intakes are The four-bar linkage allows for an adjustable arm mechanism, providing flexibility in controlling the reach and orientation of the flywheel
    - *Control* - The four-bar linkage, when properly designed, allows for precise control over the flywheel arm's movement
    - *Blocker Attachment* - We would be able to attach a blocker to the top of this flywheel due to its height
  ],
  cons: [
    - *Weight* - The four bar mechanism is heavy, about as much so as the stationary flywheel
  ],
  notes: [
    - The tallest of the three flywheel options
  ],
)

#colbreak()

#nb_pro_con(
  name: "Two Bar Flywheel",
  image: [
    #box(image("./brainstorm/Two bar flywheel.excalidraw.svg"), height: 10em)
    #box(image("./brainstorm/Bird eye view of two bar flywheel.excalidraw.svg"), height: 10em)
  ],
  pros: [
    - *Adjustable Arm Mechanism* - Similar to the flywheel four bar, it allows for flexibility with the height of the flywheel
    - *Simplicity* - A two-bar linkage is relatively simple in design, making it easier to design, assemble, and maintain. 
  ],
  cons: [
    - *Constrained Rotation* - The two bar has a very limited range of motion
  ],
  notes: [
    - Fairly easy to create a blocker on
  ],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1 - Horizontal and Vertical Wings",
  type: "build",
  start_date: datetime(year: 2024, month: 1, day: 6),
  end_date: none,
  attendance: "Ajibola, Jin, Ishika, Rory, Eric, Makhi",
  designed: "Jin",
  witnessed: "Ajibola",
)

= #datetime(year: 2024, month: 1, day: 6).display("[year]/[month]/[day]")

== Delegation
- Inventory (collecting materials from the manifest to improve the wings): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Create the pivot point of the back wing: Makhi
- Mount the pneumatic of the wing on the catapult's tower: Makhi
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika & Ajibola

#gridx(
  columns: 2,
  rows: auto,

  [
    == Build Steps

    === Back Wings
    - We built the back wings to fall and retract vertically
    #nb_admonition(type: "build", title: "Build Features: Back/Vertical Wings")[
      - Similar to a draw bridge, the pneumatic and gravity will push them down
      - Once they reach the bottom, they will lock until the pneumatic pulls them back up
    ]
    - Attached pneumatics to the side of the kicker
    - Attached a hinge to the back of the drivetrain
      - *Reason:* We need a hinge in order for the wing to pivot up and down
    - Attached a 15 hole long C-channel to the hinge
      - Attached that C-channel to the pneumatic 
  ],
  figure(
    image("./build-3/1.6.excalidraw.svg", height: 20em),
    caption: "Elevated view of the robot, in which the right horizontal (circled in green) and vertical wings (circled in red) can be seen"
  ),
  cellx(colspan: 2)[
    === Front Wings
    - We built the front wings to open and close horizontally
    - What's different from the back wings is that they don't lock
      - We want to use these wings when we bowl
      - Bowling is when you place triballs at the front of the robot and push them across the field
    - Attached a small C-channel that will be the pivot point
    - Attached a longer piece of C-channel to it that will pivot and swing
    - Attach pneumatic pistons to the wings to make them functional
  ]
)
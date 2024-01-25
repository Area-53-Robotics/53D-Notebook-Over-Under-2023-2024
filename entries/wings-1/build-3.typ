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


#gridx(
  columns: 2,
  rows: auto,

  cellx(colspan: 2)[
    = #datetime(year: 2024, month: 1, day: 6).display("[year]/[month]/[day]")
  ],

  [
    == Build Steps

    === Back Wings
    - We built the back wings to fall and retract vertically
    #nb_admonition(type: "build", title: "Build Features: Back/Vertical Wings")[
      - Similar to a draw bridge, the pneumatic and gravity will push them down
      - Once they reach the bottom, they will lock until the pneumatic pulls them back up
    ]
    - Attached pneumatics to the side of the kicker
    - Attach a hinge to the back of the drivetrain
      - *Reason:* We need a hinge in order for the wing to pivot up and down
    - Attached a 15 hole long C-channel to the hinge
      - Attached that C-channel to the pneumatic 
  ],
  figure(
    image("./build-3/1.6.png", height: 24em),
    caption: "Bird's eye view of the robot, in which the right horizontal and vertical wings can be seen"
  ),
  cellx(colspan: 2)[
    === Front Wings
    - We built the front wings to open and close horizontally
    - What's different from the back wings is that they don't lock
      - We want to use these wings when we bowl
      - Bowling is when you place triballs at the front of the robot and push them across the field
    - Created small C-channel that will be the pivot point
    - Attach a longer piece of c-channel to it that will pivot and swing
    - Attach pneumatic to the wings

    #nb_admonition(type: "note")[
      Today we received the gears that we needed to complete the drivetrain build that we started in our #nb_entry_reference(date: datetime(year: 2024, month: 1, day: 4), type: "build", title: "Drivetrain #2").
    ]
  ]
),
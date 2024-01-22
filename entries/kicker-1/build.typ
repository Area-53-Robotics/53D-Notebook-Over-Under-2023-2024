#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1",
  type: "build",
  start_date: datetime(year: 2023, month: 1, day: 5),
  end_date: datetime(year: 2023, month: 1, day: 6),
  attendance: "Ajibola, Jin, Ishika, Rory, Eric, Makhi",
  designed: "Jin",
  witnessed: "Ajibola",
)

With the majority of our drivetrain having completed construction, we made a strategic pivot towards working on the kicker mechanism. The decision to shift focus aligns with our goal of creating a well-rounded and versatile robot that can succeed in multiple different aspects of the game.

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  [
    = #datetime(year: 2023, month: 1, day: 5).display("[year]/[month]/[day]")

    #nb_todo(
      date: datetime(year: 2023, month: 1, day: 5),
      monthly-schedule: none,
      yearly-schedule: none,
      (
        (true, "Construct the kicker tower (Eric and Rory)"),
        (true, "Construct the kicker leg (Ajibola and Makhi)"),
        (true, "Attach the kicker tower and kicker leg together (Makhi)"),
        (true, "Attach the kicker to the drivetrain and brace it (Eric and Rory)"),
        (true, "Finish bracing and boxing the drivetrain (Jin)"),
      )
    )
  ],

  gridx(
    columns: 2,
    rows: auto,

    [
      == Build Steps
      - Finished boxing #glossary_footnote[Boxing] the back 3C-channel
      - Gathered 2 15 hole long 2C-channel
        - *Reason:* They will serve as the towers.
        - Attached them with 2 inch clearance from the ground
      - Secured the 36 tooth gear onto a high strength axle
        - Stripped the gear. This will allow the gear #glossary_footnote[Slip Gear] to lose contact and release the kicker
      - Attached the gear to a 60 tooth gear
        - Connecting on the gear will be the rubber kicker
      - Attached a rubber bumper at the end of the kicker leg
      - Secured an 8 hole long 5C-channel to the top of the kicker tower
        - *Reason:* This will act as a platform for us to match load triballs
      - Boxed the platform and tensioned the kicker with rubber bands
    ],
    figure(
      image("./build/1.5-1.png", height: 19em),
      caption: "The front of the completed kicker"
    ),
  ),

  gridx(
    columns: 2,
    rows: auto,

    figure(
      image("./build/1.5-2.png", height: 19em),
      caption: "The triangle bracing at the back of the kicker"
    ),
    [
      - We decided to use triangle braces for bracing our catapult
      - *Triangle brace:* Triangles are inherently stable geometric shapes. When used as braces, they help distribute forces and loads more evenly, contributing to the overall stability of a structure.
      - Attached two pillow bearings from the side of the catapult towers
      - Attached two collars on the back of the chassis
        - Connected them with standoffs
      - #highlight(fill: green)[*Drivetrain Changes:*] Drilled high strength axles and used them to connect both sides of the drivetrain
        - *Reason:* This will create a space between the motors where we can fit our pneumatic canister
        - *Reason:* A high strength axle placed at the bottom of the drivetrain will support and prevent the drivetrain from bending inwards
    ],
  ),
)

#colbreak()

#gridx(
  columns: 2,
  rows: auto,
  auto-hlines: false,

  cellx(colspan: 2)[
    = #datetime(year: 2023, month: 1, day: 6).display("[year]/[month]/[day]")

    #nb_todo(
      date: datetime(year: 2023, month: 1, day: 6),
      monthly-schedule: none,
      yearly-schedule: none,
      (
        (true, "Verify the strength of the triangle bracing on the intake (Jin)"),
        (true, "Assemble the shell of the intake (Makhi and Jin)"),
        (true, "Attach the intake sprockets and wrap chain around them (Ajibola and Ishika)"),
        (true, "Attach both vertical and horizontal wings to the robot (Eric and Rory)"),
      )
    )
  ],
  [
    - #text(red)[Problem:] The kicker was not properly braced at the front
    - #text(green)[Solution:] We attached another pair of triangle braces at the front 
    - Attached a 25 long 3C-channel across the entire drive train.
      - *Reason:* Helps prevent the drivetrain from bending under pressure
      - *Reason:* We can fit pillow bearings on it. However we have to cut parts of the front of the bearings for them to fully fit 
    - Gathered four pillow bearings
      - Attached two on the 3C-channel
      - Attached two on the front of the kicker
    - Attached the pillow bearing with collars and standoffs to create the triangle braces 

    - #text(red)[Problem:] The back C-channel rubs against the omni wheels, causing friction
    - #text(green)[Solution:] We attached a 1/4 spacer on the top of the chassis so that there is enough clearance
  ],
  figure(
    image("./build/1.6.png", height: 23em),
    caption: "Revised bracing on the kicker"
  ),
  cellx(colspan: 2)[
    #nb_admonition(type: "note")[
      We will halt building the drivetrain because we do not have enough materials.
    ]
  ],
)
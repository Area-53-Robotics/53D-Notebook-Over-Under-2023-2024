#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1.1",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 7),
  end_date: datetime(year: 2024, month: 2, day: 7),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/07
[Excited from our performance from Gateway, the team was eager to design this new wing design. We decided to not CAD this wing since we had pictures of the wings from team 338A. From our priority list, the team wants to do more skills runs. The front wings is used to help us bowl and to push triballs over the middle barrier. 
]

== Delegation
- inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
- Manufacture (Cutting pieces to size, cleaning sharp edges, slip gears): Eric and Ajibola
- Tune the drive-train to reduce any friction - Makhi 
- Fixed the screw joint - Jin
- Make and boxed the physical wing - Eric and Rory
- Attach the piston to the wing - Jin
- Attach the sensor - Ajibola
- Oversight & Quality Control: Ajibola, Jin
- Initial testing: Everyone
- Programming: Ishika and Ajibola
#grid(
  columns: 3,

  [
    == Troubleshooting
    - Before building anything new on the bot, the team wants to make sure everything works first. This took some time.
    - Properly wire everything
    - Reattach the wheels because they were loose 
      - We feared that they will come off mid match


    == Materials
    - A pair of  2x5x1 c-channel
    - 4 1x15x1 half cuts
    - A pair of  double acting pistons 
    - The rest fo the materials are found in the tool box


    == Assembly
    Wing:
    - Attach the screw joint to the end of the drivetrain
      -This screw join will extend to reach all the way below to maxmize stability 
    - Box the inside of the chassis
    - Attach the 2x5x1 c-channel 
    - Attach the half cuts together and box through out
      - Prevent them from bending
      - Attach to the c-channel
    - Attach a collar at the end of the screw joint
      - This will server as one of the end of the triangle brace 
    - Attach piston to the c-channel middle brace
      - Creates the 145 degrees

    Triangle Brace: 
    - From the inner side of the chassis, attach a 1.5 inch stand-off.
      - This serves as the stop for the wing and to the other end of the triangle brace
    - Attach collar at the end
    - From the two collars, connect them with a stand-off

  ],

  [
    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )

    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )
  ]
)
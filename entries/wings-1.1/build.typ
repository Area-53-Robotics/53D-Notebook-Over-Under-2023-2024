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
After witnessing the success of 338A's wings at Gateway, we are eager to redesign our wings. We decided to not CAD these wings since we had pictures of the wings from team 338A. The new front wings will help us bowl (pushing multiple triballs down the left or right lanes of the fieldat once) and to push triballs over the middle barrier.


== Delegation
- Inventory (collecting materials from the manifest to create the wedges): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Tune the drivetrain to reduce any friction: Makhi 
- Fix the screw joint: Jin
- Make and box the physical wing: Eric and Rory
- Attach the piston to the wing: Jin
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika and Ajibola



#grid(
  columns: 2,

  [
    == Troubleshooting
    - Before building anything new on the bot, we wanted to make sure everything worked first
      - This took about 20 minutes of time
    - Properly wired everything
    - Reattached the drivetrain wheels because they were loose 
      - We feared that they could come off during matches

    == Materials
    - A pair of 2x5x1 C-channel
    - 4 1x15x1 half cut C-channel
    - A pair of double acting pistons 
    - The rest of the materials are found in our toolbox

    == Assembly: Wings
    - Attached the screw joint to the end of the drivetrain
      - This screw joint will extend to reach all the way below to maxmize stability 
    - Boxed the inside of the chassis
    - Attached the 2x5x1 C-channel 
    - Attached the half cut C-channel together and box through out
      - Prevent them from bending
      - Attach to the C-channel
    - Attached a collar at the end of the screw joint
      - This will serve as one end of the triangle brace 
    - Attached a piston to the C-channel middle brace
      - Creates the 145 degree angle needed for the optimal wings movement

    == Assembly: Triangle Brace
    - From the inner side of the chassis, we attached a 1.5 inch stand-off.
      - This serves as the stop for the wing and to the other end of the triangle brace
    - Attached a collar at the end
    - From the two collars, we connected them with a stand-off

  ],

  [
    #figure(
      image("./build/2.7-1.png", height: 30%),
      caption: [
        The wing mechanism before we attach the triangle brace. The two collars at the end will meet with a stand-off.
      ]
    )

    #figure(
      image("./build/2.7-2.png", height: 30%),
      caption: [
        The triangle brace on the pivot point.
      ]
    )
  ]
)

#align(center)[
  #tablex(
    columns: 2,
    column-gutter: 5pt,
    align: center,

    [Left wing], [Right wing],

    cellx(inset: 0pt)[#image("./build/2.7-3.png", height: 20em)],
    cellx(inset: 0pt)[#image("./build/2.7-4.png", height: 20em)]
  )
]
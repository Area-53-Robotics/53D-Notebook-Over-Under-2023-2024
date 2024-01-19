#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1 - Improvements",
  type: "build",
  start_date: datetime(year: 2023, month: 1, day: 6),
  end_date: none,
  attendance: "Ajibola, Jin, Ishika, Rory, Eric, Makhi",
)

With the kicker finished and the Valley Mall tournament quickly approaching, we dedicated today towards working on the intake and wings. To optimize efficiency and skill utilization, we've strategically divided the tasks among our team members. The more experienced builders are taking on the construction of the intake, leveraging their expertise to ensure precision and functionality. 

The Valley Mall tournament serves as a motivating deadline, driving our team's commitment to excellence. With the collective efforts of our experienced and newer members, coupled with the guidance of CAD diagrams, we are poised for success in the upcoming competition.


#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  [
    = #datetime(year: 2023, month: 1, day: 6).display("[year]/[month]/[day]")
  ],

  gridx(
    columns: 2,
    rows: auto,

    [
      == Build Steps
      - #text(red)[Problem:] Due to the nature of the intake, there needs to be equal spacing of the intake at both side of the drivetrain 
      - #text(green)[Solution:] Instead of having an 18 hole long intake, we changed it to 20 holes. This allows use to have more clearance on each side
      - Finished boxing #glossary_footnote[Boxing] the back 3C-channel
      - Gathered 2 15 hole long 2C-channel
        - *Reason:* They will serve as the towers.
        - Attached them with 2 inch clearance from the ground
      - Secured the 36 tooth gear onto a high strength axle
        - Stripped the gear. This will allow the gear #glossary_footnote[Slip Gear] to lose contact and release the kicker
      - Attached the gear to a 60 tooth gear
        - Connecting on the gear will be the rubber kicker
    ],
    figure(
      image("./build-2/1.6-1.png", height: 19em),
      caption: "The new spacing between the right side of the intake and the right drive"
    ),
    cellx(colspan: 2)[
      - Attached a rubber bumper at the end of the kicker leg
      - Secured an 8 hole long 5C-channel to the top of the kicker tower
        - *Reason:* This will act as a platform for us to match load triballs
      - Boxed the platform and tensioned the kicker with rubber bands

      #nb_admonition(type: "note")[
        We originally used collars instead of spacers for the intake spacing. We did this because it would make the spacing stronger. However we backtracked on this idea after realizing that we do not have enough spacers to implement this for both sides of the drivetrain.
      ]
    ]
  ),

  gridx(
    columns: 2,
    rows: auto,

    figure(
      image("./build-2/1.6-2.png", height: 19em),
      caption: "Our current robot, with the newly completed intake in the bottom right"
    ),
    [
      - We attached two polycarbonate pieces vertical on the kicker resting platform
        - *Reason:* Keeps the triball in place when match loading
        - *Reason:* Allows us to angle the triballs higher 
      - We used a low strength axle instead of high strength axle for our intake
        - This is a lot different from other teams.
        - *Reason:* We believe that since our intake extends a lot further than most other teams', we do not need the extra length
      - Attached sleds to the side of the intake
        - *Reason:* When the sleds collide with the goal, this will force the intake upwards, making it easier to outtake the triballs into the net. 
      - They are similar to wedges. Once they have contact, the intake will follow the side of the sleds and go up

    ],
    cellx(colspan: 2)[
      - #highlight(fill: green)[*Additional Changes:*]
        - Increased the tension on the banding for the kicker
        - Attached a green roller at the front of the drive train
          - *Reason:* When we collide with the wall, the green roller will roll us parallel to the wall
        - Drilled high strength standoffs and attached them at the bottom of the drivetrain for more stability
    ]
  ),
)
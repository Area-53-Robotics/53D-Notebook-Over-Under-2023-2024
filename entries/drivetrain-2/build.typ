#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #2",
  type: "build",
  start_date: datetime(year: 2024, month: 1, day: 4),
  end_date: datetime(year: 2024, month: 1, day: 4),
  attendance: "Ajibola, Jin, Ishika, Rory, Makhi",
  designed: "Jin",
  witnessed: "Ajibola",
)

We were excited to begin building the new iteration of the drivetrain. Going into the construction phase, we planned on following the CAD model more stringently than we did when building the first iteration of the drivetrain to ensure that we complete the drivetrain in a timely manner. The aim was to ensure a systematic and efficient building process that aligns with our design objectives so that we can complete this rebuild quickly. 

= Build Steps

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

    gridx(
      columns: 2,
      rows: auto,

      [
        == Right Drive
        - Gathered 28 hole long C-channels
          - *Reason:* They will serve as the chassis base
        - Attached the wheels to the gears with a 3/8 inch spacers
        - Spaced out the wheels onto their screw joints using the spacing from sheet 5 of the Drivetrain \#2 CAD
        - Attached the motors to their axles and then attached them to the motor 
        - Close the drive half tightly from the screw joint 
      ],
      figure(
        image("./build/1.4-1.png", height: 19em),
        caption: "The completed right drive"
      ),
    ),

    gridx(
      columns: 2,
      rows: auto,

      figure(
        image("./build/1.4-2.png", height: 19em),
        caption: "The incomplete right drive - missing the wheel joints"
      ),
      [
        == Left Drive
        - Gather 28 hole long C-channels
          - *Reason:* We will use them to create the chassis
        - Gathered all remaining materials
          - This includes the motor, axles, gears, and spacers
        - Assembled the gears and attached them to motors

        #nb_admonition(type: "note")[
          We did not have enough 36 tooth gears to construct the wheel joints needed to complete this side of the drivetrain.
        ]
      ],
    ),

    gridx(
      columns: 2,
      rows: auto,

      [
        == Drivetrain Assembly
        - Attached a 25 long 3C-channel across the back of the drivetrain
          - We hope to box #glossary-footnote[Boxing] it together to allow for better structural integrity 
        - #text(red)[Problem:] The back C-channel rubs against the omni wheels, causing friction
        - #text(green)[Solution:] We attached a 1/4 spacer on the top of the chassis so that there is enough clearance

        #nb_admonition(type: "note")[
          We will halt building the drivetrain because we do not have enough materials.
        ]
      ],
      figure(
        image("./build/1.4-3.png", height: 23em),
        caption: "The incomplete drivetrain"
      ),
    ),
)
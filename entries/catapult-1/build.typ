#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #1 - Low Catapult",
  type: "build",
  start_date: datetime(year: 2023, month: 9, day: 30),
  end_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
)

#grid(
  columns: (1fr, 1fr),
  rows: auto,
  gutter: 50pt,
  
  [
    == 2023/9/30
    Directly after the drivetrain was finished being built, we wanted to start working on the catapult as soon as possible. Thankfully, a few of the members on the team already had experience with building one. When building the drivetrain, we got held back when we weren't following the CAD design. We don't plan to make the same mistake during the catapult build session.

    == Build Steps
    - Gathered C-channel
      - A pair of 6 hole long C-channel
      - A piece of 7 hole long C-channel
      - A piece of 8 hole long C-channel serving as the holder for the catapult
    - We attached two slipped 36 tooth gears #footnote[See "Slip Gear" glossary entry] with a screw joint to help with consistency
      - *Reason:* A catapult requires a release mechanism in order to swing its catapult hand. When the gears loose contact with each other, this will serve as a release mechanism for the catapult
      - The gear ratio is 1:3
    - Gathered 0.5” stand-offs to box the catapult
    - Gathered several long stand-offs and collars to create the catapult arm according to sheet 5 of the catapult CAD

  ],
  [#image("./build/9.30.png", height: 40%)],

  [#image("./build/10.06.png", height: 40%)],
  [
    = 2023/10/6
    #nb_todo(date: datetime(year: 2023, month: 10, day: 6))[
      + Figure out a way to mount the catapult (Makhi, Eric, and Rory)
      + Center the catapult (Ajibola and Ishika)
      + Test the catapult (Everyone)
    ]

    The construction of the catapult proved to be a considerably faster process compared to the assembly of the drivetrain. With the catapult mechanism now in place, the team is shifting its attention to attaching the catapult onto the drive chassis. The primary objective at this stage is to center the catapult within the framework of the drive chassis, ensuring optimal balance and alignment.

    == Build Steps
    - Replaced inner stand-offs with spacers for better boxing
    - Attached crossbar on the front of the bot
      - Connected a 5 long 5 C-channel onto the crossbar
      - Attached the catapult onto it
    - Created a stopper for the catapult
    - #text(red)[Problem:] Lack of tension on the front of catapult
    - #text(green)[Solution:] Double twisting the rubber bands allowed for more secure contact
  ],

  [
    = 2023/10/7
    #nb_todo(date: datetime(year: 2023, month: 10, day: 7))[
      + Brace the catapult (Makhi and Eric)
      + Test the catapult (Everyone)
    ]

    While some of the members were working on the catapult, the wings were also completed. We wanted this meeting to be both an educational meeting for the new builders of the different sub systems, as well as a meeting to test both the catapult and the wings. The final catapult turned out almost exactly as planned on sheets 2 and 3 of the Catapult CAD.

    == Build Steps
    - Added the motor cartridges to the intake
    - Attached triangle braces to help brace the catapult
      - *Reason:* Triangle braces are one of the stronger braces. When force is applied to a triangle, the load is evenly distributed among its sides and vertices.
    - #text(red)[Problem:] Similar to the problem last meeting, a lack of tension on the rubberband connecting to the catapult arm.
    - #text(green)[Solution:] We added a stand-off perpendicular to the arm. This will serve as our new stopper and add rubber bands. 

    #nb_admonition(type: "note")[We are building the wings simultaneously with the catapult.]
  ],
  [#image("./build/10.07.png", height: 45%)],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "build",
  start_date: datetime(year: 2023, month: 12, day: 9),
  end_date: datetime(year: 2023, month: 12, day: 14),
  attendance: "Ajibola, Ishika, Rory, Makhi",
  designed: "Makhi",
  witnessed: "Ishika",
)

#grid(
  columns: 1,

  gridx(
    columns: 2,
    row-gutter: 5pt,

    cellx(colspan: 2, inset: 0pt)[
      = #datetime(year: 2023, month: 12, day: 9).display("[year]/[month]/[day]")

      #nb_todo(
        date: datetime(year: 2023, month: 12, day: 9),
        monthly-schedule: none,
        yearly-schedule: none,
        (
          (true, "Construct the joints needed to facilitate arm movement (Ishika, Jin, and Rory)"),
          (true, "Attach the flywheel to the robot (Ajibola and Makhi)"),
          (false, "Test and tune the flywheel (Everyone)"),
        )
      )

      We are very excited to build the flywheel since none of us have built one before. Despite the enthusiasm, there we recognize that some team members possess a higher level of knowledge about the control mechanisms associated with the flywheel. We believe that the CAD model will ensure that all team members, regardless of their experience, can actively participate in the learning and construction process. We also hope that with the CAD, the building process will become as quick, if not quicker than the time it took to build the low catapult.
    ],

    figure(
      image("./build/12.9-1.png", height: 23em),
      caption: [The newly constructed flywheel (without the blocker)]
    ),

    [
      == Build Steps
      - Gathered strips of C-channel 
        - Connected them together and pivoted using a motor axle
        - *Reasoning:* We want the flywheel to be able to fold on itself. This will allow us to be small enough to enter goals to descore
      - Attached the sprocket on the motor and chained it to the flywheel
        - The ratio is 5:2
      - Gathered strips of C-channel and attached them above the flywheel 
        - Connected them together and pivoted with the flex wheel axle
        - *Reasoning:* We want to make as many joints of the flywheel foldable as possible to make it easier to fold the flywheel down when descoring.
      - Attached nets across the blocker
    ],

    cellx(colspan: 2)[
      #nb_admonition(type: "note")[
        When matchloading, If we place the triballs over the net, they can easily get past our own blocker uninterrupted
      ]
    ],

    figure(
      image("./build/12.9-2.png"),
      caption: [The compound gear ratio we created using sprockets]
    ),

    [
      - Attached two sprockets from the bottom of the chassis
        - *Reasoning:* In order to power everything, we need 2 11 watts motors
      - Created a compound gear ratio with the sprockets
        - *Reasoning:* This allows us to power multiple systems at once with one motor. However, both subsystems will experience a lot of friction 
      - The ratio between the sprockets is 1:1
      - The ratio between the gears is 1:3
      - What this design does is controls the entire flywheel folding process.
    ],
    image("./build/Flywheel down fully.excalidraw.svg"),
    image("./build/Flywheel up fully.excalidraw.svg"),
    cellx(colspan: 2)[
      We designed the blocker so that the net is at an angle. This is because teams' catapults and punchers tend to be angled upwards. We want our net to be above and over the enemies outtake mechanism so we can ensure we block them completely.
    ]
  ),

  gridx(
    columns: 2,

    cellx(colspan: 2)[
      = #datetime(year: 2023, month: 12, day: 14).display("[year]/[month]/[day]")

      #nb_todo(
        date: datetime(year: 2023, month: 12, day: 14),
        (
          (true, "Check for and resolve any causes of friction on the flywheel (Ishika, Jin, and Rory)"),
          (false, "Program the flywheel to be usable for driver control (Ajibola & Ishika)"),
          (false, "Test the flywheel for speed and scoring distance (Everyone)"),
        )
      )

      We were surprised with how fast we managed to complete the flywheel. Since the Capital Beltway Challenge tournament is in 2 days (#datetime(year: 2023, month: 12, day: 16).display("[year]/[month]/[day]")), we hope to dedicate a little bit of today's meeting and all of tomorrow's meeting to drive and auton practice.
    ],

    figure(
      image("./build/12.14.png", height: 15em),
      caption: [The flywheel with the blocker almost fully upright]
    ),

    [
      == Build Steps
      - #text(red)[Problem:] The flywheel isn't spinning as fast as we hoped due to a high amount of friction
      - #text(green)[Solution:] We checked for any spacing errors
      - Took apart the flywheel and reexamined the spacing
        - *Reasoning:* If the spacing is too tight, this will cause the C-channel strips to squeeze into the flex wheel
      - Instead of using spacers, we decided to use collars instead.
      - Attached a piece of rope from the flywheel to the chassis
        - *Reasoning:* We need tension to help keep the flywheel upright
    ],

    cellx(colspan: 2)[
      #nb_admonition(type: "note")[
        We didn't find any major issues with the other subsystems. Thankfully, we are still able to descore with the flywheel fully lowered.
      ]
    ]
  )
)
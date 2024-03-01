#import "/template/template.typ": *

#show: create_entry.with(
  title: "Flywheel #1",
  type: "build",
  start_date: datetime(year: 2023, month: 12, day: 9),
  end_date: datetime(year: 2023, month: 12, day: 14),
  attendance: "Ajibola, Ishika, Rory, Makhi, Eric",
  designed: "Makhi",
  witnessed: "Ishika",
)

= #datetime(year: 2023, month: 12, day: 9).display("[year]/[month]/[day]")

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 9),
  monthly-schedule: "Ahead",
  yearly-schedule: "Behind",
  (
    (true, "Construct the joints needed to facilitate arm movement (Ishika, and Rory)"),
    (true, "Attach the flywheel to the robot (Ajibola and Makhi)"),
    (false, "Test and tune the flywheel (Everyone)"),
  )
)

We are very excited to build the flywheel since none of us have built one before. Despite the enthusiasm, there we recognize that some team members possess a higher level of knowledge about the control mechanisms associated with the flywheel. We believe that the CAD model will ensure that all team members, regardless of their experience, can actively participate in the learning and construction process. We also hope that with the CAD, the building process will become as quick, if not quicker than the time it took to build the low catapult.

== Delegation
- Inventory (collecting materials from the manifest to build the flywheel): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Create the motor system for the flywheel: Makhi
- Create the flywheel base: Makhi, Eric, & Rory
- Sprocket the flywheel together: Makhi
- Assemble the net/blocker: Makhi
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika and Ajibola

== Materials
- Gathered 2 1x10x1 half cuts
  - Will be used to construct the first base of the flywheel
- 2 sets of 12 tooth and 36 tooth gears 
  - The 12 tooth gears will be used to create the slip gears
  - They will be used in a 1:3 gear ratio
- Gathered 2 1x6x1 C-channels
  - This is where the flex wheels will be attached to
- Gathered 1 4” flex wheel
  - Gathered sprockets and chain
  - It will be attached to a 5:2 gear ratio 

#gridx(
  columns: 2,
  row-gutter: 15pt,

  [
    == Assembly: Flywheel
    - Connected the half-cut C-channel and pivot them using a motor axle
      - *Reasoning:* We want to be able to fold the entire mechanism onto our drivetrain and still be able to descore
    - Connected the gear axle to the sprocket axle
      - This will raise the flywheel up
      - We want the flywheel to be as high as possible to minimize the randomness of our flywheel
    - Attached the net to the halfcut 
      - The angle of the halfcut will allow us to block any triballs
  ],

  figure(
    image("./build/12.9-1.png", height: 95%),
    caption: [The completed flywheel when fully extended upwards]
  ),

  figure(
    image("./build/12.9-2.png"),
    caption: [The compound gear ratio we created using sprockets]
  ),

  [
    == Assembly: Gearbox
    - Attached two sprockets from the bottom of the chassis
      - *Reasoning:* In order to power everything, we need 2 11 watt motors
    - Created a compound gear ratio with the sprockets
      - *Reasoning:* This allows us to power multiple systems at once with one motor. However, both subsystems will experience a lot of friction
    - The ratio between the sprockets is 1:1
    - The ratio between the gears is 1:3
    - This part of the design controls the entire flywheel folding process.
  ],
  image("./build/Flywheel down fully.excalidraw.svg"),
  image("./build/Flywheel up fully.excalidraw.svg"),
  cellx(colspan: 2)[
    We designed the blocker so that the net is at an angle. This is because teams' catapults and punchers tend to be angled upwards. We want our net to be above and over the enemies outtake mechanism so we can ensure we block them completely.
  ]
)

= #datetime(year: 2023, month: 12, day: 14).display("[year]/[month]/[day]")

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 14),
  monthly-schedule: "Ahead",
  yearly-schedule: "Behind",
  (
    (true, "Check for and resolve any causes of friction on the flywheel (Makhi)"),
    (true, "Program the flywheel to be usable for driver control (Ajibola & Ishika)"),
    (false, "Test the flywheel for speed and scoring distance (Everyone)"),
  )
)

We were surprised with how fast we managed to complete the flywheel. Since the Capital Beltway Challenge tournament is in 2 days (#datetime(year: 2023, month: 12, day: 16).display("[year]/[month]/[day]")), we hope to dedicate a little bit of today's meeting and all of tomorrow's meeting to driving and auton practice.

#colbreak()

== Delegation
- Inventory (collecting materials from the manifest to build the flywheel): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Trouble shoot causes of friction on the flywheel: Makhi
- Check if spacing is corect: Eric & Rory
- Rubber band the flywheel down: Makhi
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika & Ajibola

#gridx(
  columns: 2,

  figure(
    image("./build/12.14.png", height: 100%),
    caption: [The finished flywheel with the blocker almost fully upright]
  ),

  [
    == Troubleshooting
    - #text(red)[Problem:] The flywheel isn't spinning as fast as we hoped due to a high amount of friction
    - #text(green)[Solution:] We checked for any spacing errors
    - We took apart the flywheel and reexamined the spacing
      - *Reasoning:* If the spacing is too tight, this will cause the C-channel strips to squeeze into the flex wheel
    - We found that the spacing for the flywheel and the spacing for the 12 tooth sprocket were wrong
    - Instead of using spacers, we decided to use collars instead.
      - Collars are capable of locking in and staying in place
    - Attached a piece of rope from the flywheel to the chassis
      - *Reasoning:* We need tension to help keep the flywheel upright
  ],
)
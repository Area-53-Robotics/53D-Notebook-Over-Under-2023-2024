#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1 - Extension Length Improvements",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 18),
  end_date: none,
  attendance: "Ajibola, Ishika, Makhi, Eric",
  designed: "Makhi",
  witnessed: "Ishika",
)

= #datetime(year: 2023, month: 11, day: 18).display("[year]/[month]/[day]")

#nb_todo(
  date: datetime(year: 2023, month: 11, day: 18),
  monthly-schedule: "Off",
  yearly-schedule: "Behind",
  (
    (true, "Improve the extension length of the wings (Everyone)"),
  )
)

Today we attempted to tackle the problem with the wings not fully extending when deployed. This seems to be linked with the result that we obtained from our test of the wings in our #past_nb_entry_reference(date: datetime(year: 2023, month: 10, day: 13),type: "test", title: "Wings #1"). In the air loss test, we found that the wings lost about 18 PSI per deployment. This, combined with the wings not fully extended, creates a major concern regarding the functionality and air efficiency of the wings. It became apparent that the piston was not delivering the required torque to properly extend the wings as intended.

== Delegation
- Inventory (collecting materials from the manifest to improve the wings): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Troubleshoot why the pneumatics have a difficult time opening: Makhi, Eric, & Rory
- Remount the pivot for the pneumatics: Makhi
- Check for any leaks in the wings: Makhi, Eric, & Rory 
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika and Ajibola

#gridx(
  columns: 2,
  rows: auto,

  [
    == Troubleshooting
    - #text(red)[Problem:] The mechanical advantage of the robot is small. We noticed that because the piston is attached right next to the pivot, more force is required to fully extend the wings compared if the piston was further.
      - Due to the linear nature of the pneumatics, it is difficult to angle the piston further away from that point without the pneumatic banging into parts of the chassis
    - #text(green)[Solution:] Lowering the mass of the wings.
      - The lower the weight is, the lower the inertia is, and thus, the easier it is to set the wings in motion.
    
    == Assembly
    - We replaced the C-channel with a plate.
      - *Reason:* This seemed to help the piston generating enough torque to push out the wings.
  ],
  figure(
    image("./build-2/11-18.png", height: 100%),
    caption: [
      The completed wings. They push out easier than the previous iteration.
    ]
  )
)
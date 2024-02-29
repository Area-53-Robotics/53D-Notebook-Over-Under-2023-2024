#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1.1",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 2),
  end_date: datetime(year: 2024, month: 2, day: 2),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/02
[With Gateway coming soon, the team is anxious because it is the first signature event that the org is going to. The team has already done research about what the skill level we will be expecting at the event. From our research, we plan to make a tray from Gremlin. The unique aspect of this tray is that we plan to make it modular, meaning we quickly take it off and put it back on. 
]

== Delegation
- inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
- Manufacture (Cutting pieces to size, cleaning sharp edges, slip gears): Eric and Ajibola
- Reattached the towers of the kicker - Eric, Rory
- Cut and shape the lexan for the tray - Jin
- Heat and mold the tray for the robot - Jin
- Create the base for the platform - Makhi 
- Tune the platform and the kicker arm- Mkahi and Jin
- Attach the sensor - Ajibola
- Oversight & Quality Control: Ajibola, Jin
- Initial testing: Everyone
- Programming: Ishika and Ajibola


#grid(
  columns: 2,

  [
    == Materials
    - 36 tooth metal gear
      - Time was spent sanding and slipping this gear 
    - 60 tooth gear
    - Pair of 2x15x1 c-channel 
    - 5x6x1 c-channel
    - Lexan 
    - Vex Robotics Trophy 
    - Heat gun
      - The heat gun is used to shape the tray 


    == Assembly
    Kicker:
    - In the previous design, the hole was drilled at the side of the drivetrain. This cause the walls of the c-channel to be weak. 
      - During previous matches, the towers of the kicker started to bend and tip over. 
    - We attached new towers on the c-channel for the kicker
      - The novice builders redrilled the c-channel in order to fit our gear. With our new gear ratio, we will have more torque when firing triballs.
    - Boxed the c-channel of the tower in order to prevent any future bending

    Kicker Tray:
    - Cut out a square piece of the lexan for the tray
      - 8x10 lexan tray 
    - We used a heat gun and mold the walls of the tray 
      - This took a considerably amount of time to make 
    - Cut a square piece of the tray that allows the kicker to hit the triball.
    - Attach the kicker by two screws
      -This helps the tray to be modular. We plan to only use the tray for skills and replace it for an elevation mechanism 
    - Rerubberband the kicker arm for skills
      - We tested that the kicker arm was able to kick at least 5 feet away from the robot. That is the distance between the match bar and the middle barrier

    Optical Sensor:
    - Attached a 5c under the tray with the color sensor 
    - Screw it to the bottom of the tray 
    - Something that we worried about the color sensor is its ability to detect the color of the triball
      - Since the distance sensor use a laser, we needed to cut hole in order for it to work 


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
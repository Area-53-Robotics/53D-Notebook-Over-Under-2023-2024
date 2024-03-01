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
With Gateway coming soon, we are a bit anxious because it is the first signature event that the organization is going to. We have already done research to determine the skill level we will be expecting at the event. From our research, we plan to build a new tray inspired by 5203G Gremlin (our process for identifying this design can be found in our #nb_entry_reference(date: datetime(year: 2024, month: 2, day: 1), type: "identify", title: "Kicker")). The unique aspect of this tray is that we plan to make it modular, meaning that we would be able to take it off and quickly put it back on. 

== Delegation
- Inventory (collecting materials from the manifest to improve the kicker): Ishika and Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric and Ajibola
- Reattach the towers of the kicker: Eric, Rory
- Cut and shape the lexan for the tray: Jin
- Heat and mold the tray for the robot: Jin
- Create the base for the platform: Makhi 
- Tune the platform and the kicker arm: Mkahi and Jin
- Attach the sensor: Ajibola
- Oversight & Quality Control: Ajibola, Jin
- Initial Testing: Everyone
- Programming: Ishika and Ajibola


#grid(
  columns: 2,

  [
    == Materials
    - 36 tooth metal gear
      - We spent a lot of time sanding and slipping #glossary-footnote[Slip Gear] this gear
    - 60 tooth gear
    - Pair of 2x15x1 C-channels
    - 5x6x1 C-channel
    - Lexan
    - Vex Robotics Trophy 
    - Heat gun
      - The heat gun is used to shape the tray 

    == Assembly: Kicker
    - In the previous design, the hole was drilled at the side of the drivetrain. This caused the walls of the C-channel to be weak. 
      - During previous matches, the towers of the kicker started to bend and tip over. 
    - We attached new towers on the C-channel for the kicker
      - The novice builders redrilled the C-channel in order to fit our gear. With our new gear ratio, we will have more torque when firing triballs.
    - Boxed the C-channel of the tower in order to prevent any future bending

    == Assembly: Kicker Tray
    - Cut out a 8x10 in square piece of the lexan for the tray
    - We used a heat gun to mold the walls of the tray 
      - This took a considerable amount of time to make 
    - Cut a square piece out of the backside of the tray, allowing the kicker to hit the triball.
    - Attached the kicker by two screws
      -This helps the tray to be modular. We plan to only use the tray for skills and replace it for an elevation mechanism before matches
    - Re-attached rubberbands onto the kicker arm for skills
      - We tested that the kicker arm was able to kick at least 5 feet away from the robot. That is the distance between the match bar and the middle barrier
    
    == Assembly: Optical Sensor
    - Attached a 5C-channel under the tray with the color sensor attached to it 
    - Screwed it to the bottom of the tray 
    - Something that worried us about the color sensor is its ability to detect the color of the triball
      - Since the distance sensor uses a laser, we needed to a cut hole in order for it to work
  ],

  [
    #figure(
      image("./build/2.2-1.png", height: 40%),
      caption: [The C-channel of the towers that were bending. The side of the C-channel was exposed, causing them to bend.]
    )

    #figure(
      image("./build/2.2-2.png", height: 40%),
      caption: [The back of the kicker tray]
    )

    #figure(
      image("./build/2.2-3.excalidraw.svg", height: 40%),
      caption: [The color sensor under our lexan tray (circled in green).]
    )
  ]
)
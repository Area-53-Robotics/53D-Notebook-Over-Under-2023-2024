#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1.1 - Improvements",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 13),
  end_date: datetime(year: 2024, month: 2, day: 13),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/13
#nb_todo(
  date: datetime(year: 2024, month: 2, day: 13),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the kicker upgrades. (Everyone)"),
  )
)

[We are excited to introduce our modular mechanism as we have not seen anyone do this in Maryland. We learnt that we barely use our kicker during matches and can be replaced with a hang mechanism. Instead of trying to add a hang mechanism along our kicker, we can replace our kicker all together. This helps reduce the weight of our mechanism. 
]

== Delegation
- inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
- Manufacture (Cutting pieces to size, cleaning sharp edges, slip gears): Eric and Ajibola
- Create the new flex wheel kicker arm - Makhi
- Rubber band and tune the banding of the rubber bands - Makhi
- Oversight & Quality Control: Ajibola, Jin
- Initial testing: Everyone
- Programming: Ishika and Ajibola


#grid(
  columns: 2,

  [
    == Materials
    - 2x13x1 c-channel 
    - A pair of 2” flex wheels 
    - The rest of the materials are found in the toolbox 
    - Lexan 
      - This is for the sleds of the drivetrain 

    == Assembly
    Kicker: 
    - Attach the 2x13x1 c-channel to the gear box
      - Since we want to hit the kicker at a certain angle to maxmize the grouping, we are going for a lower angle kicker 
      - We need a shorter arm to achieve this result
    - Attach the pair of flex wheels together with a screw joint and a collar
      - Attach with a stand off and connect to the kicker arm
    - Box the area where it makes contact with our stopper.

    Back Sleds:
    - Attach a half cut to the back of the drivetrain
      - Since the hinges of the wings are in the way, we will cut the sleds to be under the hinge
    - Take apart the back wheels to add supports to the back sleds
      - This took a majority of this meeting's time. 
    - Cut off remaining excess in our back sleds .

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
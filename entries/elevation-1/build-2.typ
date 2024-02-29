#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 14),
  end_date: datetime(year: 2024, month: 2, day: 16),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/14
#nb_todo(
  date: datetime(year: 2024, month: 2, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the bar hang elevation mechanism. (Everyone)"),
  )
)

[With the kicker finished, the team is ready to but the motorized hang. We will be following the CAD so the novice builders can assist with assembly. We hope to finish this assembly quickly in order to have a hang tested before states. We believe that a C tier hang is plausible. 
]

== Delegation
- inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
- Manufacture (Cutting pieces to size, cleaning sharp edges, slip gears): Eric and Ajibola
- Cut and shape the lexan for the hang mechanism: Eric
- Connect and assemble the hang mechanism - Jin, Makhi, Rory
- Wire everything for testing - Eric, Rory
- Rubberband the hang mechanism - Makhi
- Oversight & Quality Control: Ajibola, Jin
- Initial testing: Everyone
- Programming: Ishika and Ajibola


#grid(
  columns: 3,

  [
    == Materials
    - Gather a 84 tooth gear
    - Gather a pair of 2x15x1 c-channel
      - Since we want to use mechanical advantage when we try to hang, we need a long to achieve maximum leverage 
    - Lexan
      - We want to make custom lexan sleds when we approach the middle barrier
    - The rest of the materials are found in our tool box

    == Assembly
    - Attach the pair of 2x15x1 c-channel on the 84 tooth gear
    - Box them together though the middle
      - Prevent the c-channel from bending
      - Serves as a link between the two c-channel 
    - Attached the custom lexan to the hang mechanism 
      - Since we are going to be perpdenicular at the elevation bar, we want a to be tangent the surfance of the bar to slide across
      - Our center of gravity is more towards the back. We want to be as close as possible to it
    - Attach the mechanism to the inner 12 tooth gear
      - This results in a 7:1 gear ratio 
      - We want as much torque as possible to lift our robot
    - Rubberband the hang down
      - Since we need to hold around 15 pounds of weight, we need a lot of bands 
    
    == Troubleshooting
    Climb:
    - We first test how well the robot was able to clamp itself to the elevation bar.
    - So far the robot had some difficulties getting the initiate grip on the elevation bar 
      - We gave it additional help for the hang mechanism to grip onto the elevation bar
    
    Tier:
    - The team hopes to get a C-tier hang with our design 
      - Since Maryland teams mostly have a B tier hang, we will be rarely beaten with a C tier
    - After initial help for the robot to clamp on the pole, we observed that we barely scrapped B tier.
    - Since our center of gravity is further back, we need to create new sleds that will sent us more back. 
    - We noticed the at the end of the match, we would need a ratchet to prevent the robot from falling
      - The ratchet prevents the robot from moving in both directions
      - We planned to make a pneumatic ratchet where a pneumatic will push a ratchet when activated 

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
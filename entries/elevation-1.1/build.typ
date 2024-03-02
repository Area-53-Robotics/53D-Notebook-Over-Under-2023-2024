#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1.1",
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

With the kicker finished, we are ready to build the motorized elevation bar hang mechanism. We will be following the CAD so that the novice builders can assist with assembly. We hope to finish this assembly quickly in order to have this tested before states. We believe that a C tier elevation is plausible.


#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to build the elevation): Ishika & Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
    - Cut and shape the lexan for the hang mechanism: Eric
    - Assemble the hang mechanism: Jin, Makhi, Rory
    - Wire everything for testing: Eric, Rory
    - Rubberband the hang mechanism: Makhi
    - Oversight & Quality Control: Ajibola
    - Initial Testing: Everyone
    - Programming: Ishika and Ajibola

    == Materials
    - Gathered a 84 tooth gear
    - Gathered a pair of 2x15x1 C-channels
      - Since we want to use mechanical advantage when we try to hang, we need long C-channels to achieve maximum leverage 
    - Lexan
      - We want to make custom lexan sleds for when the robot approaches the middle barrier
    - The rest of the materials are found in our toolbox

    == Assembly
    - Attached the pair of 2x15x1 C-channel onto the 84 tooth gear
    - Boxed them together though the middle
      - Prevents the C-channel from bending
      - Serves as a link between the two C-channel 
    - Attached the custom lexan to the hang mechanism 
      - Since the robot will be perpendicular to the elevation bar, we want the elevation arm to be tangent to the surface of the bar to slide across it
      - Our center of gravity is more towards the back. Therefore, we want to be as close as possible to it
    - Attached the mechanism to the inner 12 tooth gear
      - This results in a 7:1 gear ratio 
      - We want as much torque as possible to lift our robot
    - Rubber banded the elevation bar hang down
      - Since we need to hold around 15 pounds of weight, we need a lot of rubber bands
    
    == Troubleshooting Climb:
    - We first tested how well the robot was able to clamp itself to the elevation bar.
    - So far the robot has had some difficulties getting the initial grip on the elevation bar
      - We gave it additional help for the hang mechanism to grip onto the elevation bar
    
    == Troubleshooting Tier:
    - We hope to get a C-tier elevation with our design 
      - Since Maryland teams mostly have B tier elevation, we will be rarely beaten with a C tier
    - After initial help for the robot to clamp on the pole, we observed that we barely scrapped B tier.
    - Since our center of gravity is further back, we need to create new sleds that will position the elevated robot more backwards. 
    - We noticed that at the end of the match, we would need a ratchet to prevent the robot from falling
      - The ratchet would prevent the elevation mechanism from turning in both directions
      - We planned to make a pneumatic ratchet where a pneumatic will push a ratchet when activated
  ],

  [
    #figure(
      image("./build/2.14-1.jpg", height: 25%),
      caption: [The elevation arm with its attached gear and the custom lexan sled]
    )

    #figure(
      image("./build/2.14-2.png", height: 25%),
      caption: [The rubber banding for our elevation bar hang mechanism]
    )

    #figure(
      image("./build/2.14-3.jpg", height: 25%),
      caption: [The finished elevation bar hang mechanism attached to the robot. The elevation will be swapped for the kicker during skills. This is what our bot will run during matches.]
    )

    #figure(
      image("./build/2.14-4.jpg", height: 25%),
      caption: [The sleds making contact with the elevation bar]
    )

    #figure(
      image("./build/2.14-5.jpg", height: 25%),
      caption: [Picture of the B tier elevation. We hope to make it to a C tier by states.]
    )
  ]
)

#colbreak()

= 2024/02/15
#nb_todo(
  date: datetime(year: 2024, month: 2, day: 15),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Continue building the bar hang elevation mechanism. (Everyone)"),
  )
)

With the elevation design finished, we wanted to rework the hang sleds and the ratchet. At the end of the match, all motors are deactivated. Since we are using a motorized hang, we need to find a way to lock the gear to prevent us from falling. We worked on a ratchet that will accomplish this.

#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to build the elevation): Ishika & Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
    - Attach the pneumatics onto the robot: Makhi
    - Gather the screws needed for the ratchet: Jin & Rory
    - Create the connection mechanism for the ratchet: Makhi & Eric
    - Oversight & Quality Control: Ajibola
    - Initial Testing: Everyone
    - Programming: Ishika and Ajibola

    == Materials
    - Single acting pneumatic piston 
    - 1x8x1 Half cut C-channel
    - Zipties 
    - The rest is found in our toolbox

    == Assembly
    - Created a screw joint at the bottom of the kicker tower
      - We placed the ratchet on this screw joint
    - We attached the half cut on the screw joint alongside the standoff
    - On the 3C-channel's cross bracing, we attached the piston
    - We ziptied the piston to the half cut
      - When the piston fully extends, the ratchet will activate on the gear
  ],

  [
    #figure(
      image("./build/2.15-1.png", height: 15em),
      caption: [The elevation arm with its attached gear and the custom lexan sled]
    )

    #figure(
      image("./build/2.15-2.png", height: 15em),
      caption: [The rubber banding for our elevation bar hang mechanism]
    )

    #figure(
      image("./build/2.15-3.png", height: 15em),
      caption: [The finished elevation bar hang mechanism attached to the robot. The elevation will be swapped for the kicker during skills. This is what our bot will run during matches.]
    )
  ]
)

#colbreak()

= 2024/02/16
#nb_todo(
  date: datetime(year: 2024, month: 2, day: 16),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Continue building the bar hang elevation mechanism. (Everyone)"),
  )
)

With the elevation bar hang mechanism nearing completion, we need to perform testing on the hang. The sleds were not working as much as we hoped, and we need to perform additional tests. If we tune it perfectly, we can make it a C tier elevation mechanism.

#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to build the elevation): Ishika & Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
    - Measure the new sleds: Rory
    - Recut the sleds: Eric
    - Reexamine the tier of the robot: Makhi
    - Oversight & Quality Control: Ajibola
    - Initial Testing: Everyone
    - Programming: Ishika and Ajibola

    == Materials
    - Lexan
      - In the previous design, the sleds had a flat surface 
    - The rest is in the toolbox
      - Since we are mostly spending the day testing, we will make any small fixes as needed

    == Troubleshooting
    - Tested the elevation mechanism for its tier
      - Since the center of gravity is further back on the robot, it has a tendency of leaning backwards
    - Since the robot has the greatest amount of trouble when initiating its climb, we added green rollers to test if it helps
    - *Results:* When the robot is perfectly balanced, it makes C tier. 
      - The robot's intake prevents it from fully hugging the pole.
  ],

  [
    #figure(
      image("./build/2.16-1.png", height: 15em),
      caption: [The robot on the elevation pole]
    )

    #figure(
      image("./build/2.16-2.png", height: 15em),
      caption: [How we approach the elevation barrier]
    )
  ]
)
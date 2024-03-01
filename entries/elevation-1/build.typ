#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "build",
  start_date: datetime(year: 2024, month: 1, day: 19),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Rory",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 19),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the middle bar sit elevation mechanism (Everyone)"),
  )
)

= 2024/01/19
As the meta of the game evolved throughout the season, elevation became increasingly important. A lot of powerful teams practice a strategy of not match loading. Instead, they starve the enemy team of trialls and limit the amount of triballs in play. With the decline of triball-based scoring, the importance of elevation raised. As a result, we want to make two forms of elevation, first with the middle bar sit that we selected in our #nb_entry_reference(date: datetime(year: 2024, month: 1, day: 18), type: "select", title: "Elevation #1").

== Delegation
- Inventory (collecting materials from the manifest to build the elevation mechanism): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Assemble the hinge onto the robot: Makhi
- Brace the middle bar sit elevation mechanism to the robot: Makhi, Eric, & Rory 
- Mount the pneumatic onto the kicker: Jin
- Oversight & Quality Control: Ajibola & Jin
- Initial Testing: Everyone

#grid(
  columns: 2,

  [
    == Materials
    - Gathered hinges
      - We want to use the hinges to pivot the barrier sit elevation mechanism off of the robot
      - Since it is on a hinge, the pneumatics will have an easier time pushing outwards
    - Obtained a double acting piston 
      - Since we only need this elevation mechanism in the last few seconds, we do not need a single acting piston 
    - Gathered 2x10x1 C-channels
    - The rest of the materials were found in our tool box

    #colbreak()

    == Assembly: Middle Barrier Sit Elevation
    + Attached the hinge as close as possible to the middle of the robot
      - We want to be able to balance on the middle barrier by balancing between our inner wheels
      - We also want to have as close of a weight distribution as possible. Having a front heavy or back heavy robot will cause it to tip over.
    + The hinge was attached to the tower of the intake
    + On the hinge, we attached the C-channel with a standoff at the end
      - This standoff will act as a hook to grip itself to the elevation bar 
    + With collars, we attached the pneumatics onto the middle barrier sit elevation mechanism
  ],

  [
    #figure(
      image("./build/1.19-1.jpg", height: 30%),
      caption: [Robot with the middle bar elevation activated on the right side]
    )

    #figure(
      image("./build/1.19-2.jpg", height: 30%),
      caption: [Close up of the middle bar elevation (without pneumatics attached) on our hinge]
    )
  ]
)

= 2024/01/20
#nb_todo(
  date: datetime(year: 2024, month: 1, day: 20),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the elevation bar hang mechanism (Everyone)"),
  )
)

Now that the middle bar sit elevation mechanism has been completed, we started working on the second elevation mechanism. We want to have access to a second elevation mechanism so that we can be more compatible with our alliance parter during elimination rounds. If an alliance can perform a double elevation, then  it is likely to be worth around 35 points (tier 1 and tier 2). During this new meta, an extra 35 points can win us a match.

#grid(
  columns: 2,

  [
    == Materials
    - Gathered a pair of 2x18x1 C-channel
    - Gathered 2x10x1 C-channel
    - Gathered sleds for the hang mechanism
      - These sleds are round at the end to ride on the elevation bar 
      - A significant amount of time was spend making these sleds
    - The remaining materials were in the tool box

    == Assembly: Elevation base 
    + We started by placing two parallel 2x18x1 C-channel together and connecting them with stand-offs 
      - We also braced them with C-channel and the 10 hole long C-channel
    + Attached the two sleds to the front of the elevation mechanism
      - Screwed the mechanism to the end of the base 
      - Bracing is important because we do not want the ends to snap when we try to elevate 
    + Attached a round gusset at the tip of the mechanism

    == Assembly: Elevation
    + We attached the elevation bar hang to the side of the kicker 
      - We used a screw joint to further secure the pivot. This is because the further the rotational distance is, the more power needed. 
    + Attached the pneumatics from the side of the robot 
      - Once fully extended, the pneumatic piston is 45 degrees from the elevation bar. 
      - We made rubber bands so that the it is a 90 degrees from the elevation when fully extended.
  ],

  [
    #figure(
      image("./build/1.20-1.png", height: 30%),
      caption: [The elevation mechanism frame]
    )
    
    #figure(
      image("./build/1.20-2.excalidraw.svg", height: 30%),
      caption: [The elevation bar hang mechanism (circled in green). When activated it can achieve a B tier elevation.]
    )
  ]
)
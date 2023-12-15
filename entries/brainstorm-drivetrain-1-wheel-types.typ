#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1 - Wheel Types",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 7, day: 22),
  attendance: "Ajibola, Ishika, Eric, Emma",
  [
    #nb_todo(date: datetime(year: 2023, month: 7, day: 22), schedule: "Behind Schedule")[
      + Brainstorm possible wheel configurations for the tank drive. (Everyone)
    ]

    #nb_heading([Wheel Types], level: 1)

    #tablex(
      columns: (1fr, 1fr, 1fr),
      rows: 4,
      header-rows: 1,
      align: left + top,

      cellx()[*Wheel Type*], 
      cellx(fill: green)[*Pros*], 
      cellx(fill: red)[*Cons*],

      cellx(align: center + horizon)[
        *Omni*
        #image("/assets/drivetrain/OmniWheel.excalidraw.svg", height: 70%)],
      [
        - *Omnidirectional Movement* - enabling the robot to move forward, backward, and sideways with ease
        - *Strafing* - The ability to strafe easily allow the robot to navigate around obstacles, align with targets, or avoid opponents
        - *Versatility* - Omni wheels are versatile and can be incorporated into various drive train configuration
      ],
      [
        - *Reduced Traction* - Omni wheels  have less traction compared to other wheel types, which would make us easy to push around by other teams
        - *Limited Load-Bearing Capacity* - Omni wheels have a lower load-bearing capacity compared to some other wheel types
        - *Less stability at high speed* - Omni wheels can lead to less stability at high speeds or during rapid acceleration and deceleration. This instability may affect the robot's ability to maintain control.
      ],

      cellx(align: center + horizon)[
        *Traction*
        #image("/assets/drivetrain/TractionWheel.excalidraw.svg", height: 12em)],
      [
        - *High Traction* - Traction wheels are designed to maximize grip on the surface
        - *Stability* - Traction wheels contribute to the stability of the robot, especially at higher speeds or during rapid acceleration and deceleration. 
        - *Pushing Power* - well-suited for applications that require the robot to exert pushing or pulling forces
      ],
      [
        - *Limited Maneuverability* - Traction wheels are typically designed for straightforward movement
        - *Wheel Scrubbing* - Traction wheels in a tank drive configuration may experience wheel scrubbing during turns, causing excessive wears
      ],
      
      cellx(align: center + horizon)[
        *Mecanum*
        #image("/assets/drivetrain/MecanumWheel.excalidraw.svg", height: 12em)],
      [
        - *Omnidirectional Movement* - Mecanum wheels enable omnidirectional movement
        - *Simple Control System* - The control system for mecanum wheels is relatively simple compared to some other omnidirectional drive systems.
      ],
      [
        - *Complex Programming* - Programming a mecanum drive system can be more complex compared to traditional drive systems
        - *Reduced Traction* - Mecanum wheels may have reduced traction compared to other wheel types
      ],
    )

    #nb_heading([Tank Drive Configurations], level: 1)

    #tablex(
      columns: (1fr, 1fr, 1fr),
      rows: 5,
      header-rows: 1,
      align: left + top,

      cellx()[*Tank Drive Config*], 
      cellx(fill: green)[*Pros*], 
      cellx(fill: red)[*Cons*],

      cellx(align: center + horizon)[
        #image("/assets/drivetrain/TankDriveOmnis.excalidraw.svg", height: 12em)],
      [
        - *Basic Maneuverability* - Excels in basic maneuverability (forward, backward, and turns)
        - *Pivoting* - Wheels can pivot easily, putting less stress on the motors
        - *Availability* - Area 53 has multiple omnis of different sizes in storage
      ],
      [
        - *Low Traction* - Makes it easier to be pushed around by other teams, which could inhibit our ability to score and match load
        - *Strafing* - Omni wheels cannot strafe diagonally, and a tank drive with omnis cannot strafe side-to-side on command
      ],

      cellx(align: center + horizon)[
        #image("/assets/drivetrain/TankDriveTraction.excalidraw.svg", height: 12em)],
      [
        - *Immovability* - Cannot be pushed from the side by other teams, making it easier to match load
        - *Force* - Generates a lot of traction, which makes it easier to push other teams
      ],
      [
        - *Maneuverability* - Cannot strafe side-to-side or diagonally, severely limiting our movement
        - *Inefficient Turns* - Makes it harder for the driver to make quick responses on the field
        - *Slow* - Has the slowest speed out of all the wheel types
        - *Motor Strain* - The low maneuverability of traction wheels puts strain on motors
        - *Availability* - Area 53 does not currently have many 3.25” traction wheels in storage, so if we want to use that size we will have to delay construction
        - *Wheel Durability* - A full traction drive displays wear and tear on the wheel quicker than any other drivetrain.
      ],
      
      cellx(align: center + horizon)[
        #image("/assets/drivetrain/TankDriveOmnis+Traction.excalidraw.svg", height: 12em)],
      [
        - *Motor Strain* - Has a decreased strain on motors compared to full traction wheels
        - *Immovability* - More protected against pushing compared to a full omni configuration
        - *Versatility* - The combination allows for smooth transitions between omnidirectional movement and enhanced traction.
      ],
      [
        - *Turning* - Less ability to turn in place compared to omnis
      ],

      cellx(align: center + horizon)[
        #image("/assets/drivetrain/TankDriveMecanums.excalidraw.svg", height: 12em)],
      [
        - Relatively simple to build
        - Difficult to move from the side
        - Able to strafe
        - Can get into more precise positions than a full omni drive
      ],
      [
        - *Driving* - Driving can be clunky, especially because nobody on 53D has driven a mecanum configuration before
        - *Building Precision* - Wheels have to be orientated in a certain matter to allow strafing
        - *Less Traction* - Due to the mecanum rollers, mecanum wheels have less surface area than omnis and traction wheels, causing them to have less traction.
        - Weigh more than omnis
        - Requires more complex programming
        - Requires more torque from the motors
      ],
    )
  ]
)
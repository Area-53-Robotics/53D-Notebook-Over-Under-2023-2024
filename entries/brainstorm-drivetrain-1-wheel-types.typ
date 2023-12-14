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
      columns: (1fr, 1fr, 1fr, 1fr),
      rows: 4,
      header-rows: 1,
      align: left + top,

      cellx()[*Wheel Type*], 
      cellx(fill: green)[*Pros*], 
      cellx(fill: red)[*Cons*],
      cellx(fill: gray)[*Notes*],

      cellx(align: center + horizon)[
        *Omni*
        #image("/assets/drivetrain/OmniWheel.excalidraw.svg")],
      [
        - Omnidirectional Movement - enabling the robot to move forward, backward, and sideways with ease
        - Strafing - The ability to strafe easily allow the robot to navigate around obstacles, align with targets, or avoid opponents
        - Versatility - Omni wheels are versatile and can be incorporated into various drive train configuration
      ],
      [
        - Reduced Traction - Omni wheels  have less traction compared to other wheel types
        - Limited Load-Bearing Capacity - Omni wheels have a lower load-bearing capacity compared to some other wheel types
        - Less stability at high speed - Omni wheels can lead to less stability at high speeds or during rapid acceleration and deceleration. This instability may affect the robot's ability to maintain control.
      ],
      [
      ],

      cellx(align: center + horizon)[
        Traction
        #image("/assets/drivetrain/TractionWheel.excalidraw.svg")],
      [
        - High Traction - Traction wheels are designed to maximize grip on the surface
        - Stability - Traction wheels contribute to the stability of the robot, especially at higher speeds or during rapid acceleration and deceleration. 
        - Pushing Power - well-suited for applications that require the robot to exert pushing or pulling forces
      ],
      [
        - Limited Maneuverability - Traction wheels are typically designed for straightforward movement
        - Wheel Scrubbing - Traction wheels in a tank drive configuration may experience wheel scrubbing during turns, causing excessive wears
      ],
      [
      ],
      
      cellx(align: center + horizon)[
        Mecanum
        #image("/assets/drivetrain/MecanumWheel.excalidraw.svg")],
      [
        - Omnidirectional Movement:- Mecanum wheels enable omnidirectional movement
        - Simple Control System - The control system for mecanum wheels is relatively simple compared to some other omnidirectional drive systems.
      ],
      [
        - Complex Programming: - Programming a mecanum drive system can be more complex compared to traditional drive systems
        - Reduced Traction:- Mecanum wheels may have reduced traction compared to other wheel types
      ],
      [
      ],
    )
  ]
)
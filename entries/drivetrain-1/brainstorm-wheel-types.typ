#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1 - Wheel Types",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 7, day: 22),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Eric",
)

#nb_todo(
  date: datetime(year: 2023, month: 7, day: 22),
  monthly-schedule: "Behind",
  yearly-schedule: "On",
  (
    (true, "Brainstorm possible wheel configurations for the tank drive. (Everyone)"),
    (true, "Select the best wheel configurations for the tank drive using a decision matrix. (Everyone)"),
  )
)

Now that we have chosen to use a tank drive configuration, our next step is to brainstorm different wheel types to use with it. Due to the simplicity of a tank drive, there are multiple different combinations of wheel types that we can use, depending on what our goals are.

= Wheel Types

#nb_pro_con(
  name: "Omni",
  image: image("brainstorm-wheel-types/OmniWheel.excalidraw.svg", height: 70%),
  pros: [
    - * Partially Omnidirectional Movement* - Enabling the robot to move forward, backward, and sideways with ease
    - *Strafing* - The ability to strafe easily allow the robot to navigate around obstacles, align with targets, or avoid opponents
    - *Versatility* - Omni wheels are versatile and can be incorporated into various drivetrain configuration
  ],
  cons: [
    - *Reduced Traction* - Omni wheels  have less traction compared to other wheel types, which would make us easy to push around by other teams
    - *Limited Load-Bearing Capacity* - Omni wheels have a lower load-bearing capacity compared to some other wheel types
    - *Less Stability at High Speed* - Omni wheels can lead to less stability at high speeds or during rapid acceleration and deceleration. This instability may affect the robot's ability to maintain control.
  ],
)

#colbreak()

#nb_pro_con(
  name: "Traction",
  image: image("brainstorm-wheel-types/TractionWheel.excalidraw.svg", height: 12em),
  pros: [
    - *High Traction* - Traction wheels are designed to maximize grip on the surface
    - *Stability* - Traction wheels contribute to the stability of the robot, especially at higher speeds or during rapid acceleration and deceleration. 
    - *Pushing Power* - well-suited for applications that require the robot to exert pushing or pulling forces
  ],
  cons: [
    - *Limited Maneuverability* - Traction wheels are typically designed for straightforward movement
    - *Wheel Scrubbing* - Traction wheels in a tank drive configuration may experience wheel scrubbing during turns, causing excessive wears
  ],
)

#nb_pro_con(
  name: "Mecanum",
  image: image("brainstorm-wheel-types/MecanumWheel.excalidraw.svg", height: 12em),
  pros: [
    - *Omnidirectional Movement* - Mecanum wheels enable omnidirectional movement
    - *Simple Control System* - The control system for mecanum wheels is relatively simple compared to some other omnidirectional drive systems.
  ],
  cons: [
    - *Complex Programming* - Programming a mecanum drive system can be more complex compared to traditional drive systems
    - *Reduced Traction* - Mecanum wheels may have reduced traction compared to other wheel types
  ],
)

#colbreak()

= Tank Drive Configurations

#nb_pro_con(
  name: "Tank Drive with Omnis",
  image: image("brainstorm-wheel-types/TankDriveOmnis.excalidraw.svg", height: 14em),
  pros: [
    - *Basic Maneuverability* - Excels in basic maneuverability (forward, backward, and turns)
    - *Pivoting* - Wheels can pivot easily, putting less stress on the motors
    - *Availability* - Area 53 has multiple omnis of different sizes in storage
  ],
  cons: [
    - *Low Traction* - Makes it easier to be pushed around by other teams, which could inhibit our ability to score and match load
    - *Strafing* - Omni wheels cannot strafe diagonally, and a tank drive with omnis cannot strafe side-to-side on command
  ],
)

#nb_pro_con(
  name: "Tank Drive with Traction",
  image: image("brainstorm-wheel-types/TankDriveTraction.excalidraw.svg", height: 14em),
  pros: [
    - *Immovability* - Cannot be pushed from the side by other teams, making it easier to match load
    - *Force* - Generates a lot of traction, which makes it easier to push other teams
  ],
  cons: [
    - *Maneuverability* - Cannot strafe side-to-side or diagonally, severely limiting our movement
    - *Inefficient Turns* - Makes it harder for the driver to make quick responses on the field
    - *Slow* - Has the slowest speed out of all the wheel types
    - *Motor Strain* - The low maneuverability of traction wheels puts strain on motors
    - *Availability* - Area 53 does not currently have many 3.25” traction wheels in storage, so if we want to use that size we will have to delay construction
    - *Wheel Durability* - A full traction drive displays wear and tear on the wheel quicker than any other drivetrain.
  ],
)

#colbreak()

#nb_pro_con(
  name: "Tank Drive w/ Omnis & Traction",
  image: image("brainstorm-wheel-types/TankDriveOmnis+Traction.excalidraw.svg", height: 14em),
  pros: [
    - *Motor Strain* - Has a decreased strain on motors compared to full traction wheels
    - *Immovability* - More protected against pushing compared to a full omni configuration
    - *Versatility* - The combination allows for smooth transitions between omnidirectional movement and enhanced traction.
  ],
  cons: [
    - *Turning* - Less ability to turn in place compared to omnis
  ],
)

#nb_pro_con(
  name: "Tank Drive with Mecanums",
  image: image("brainstorm-wheel-types/TankDriveMecanums.excalidraw.svg", height: 14em),
  pros: [
    - *Build Difficulty* - Relatively simple to build
    - *Lateral Movement* - Difficult to move from the side
    - *Strafing* - Able to strafe
    - *Driving Precision* - Can get into more precise positions than a full omni drive
  ],
  cons: [
    - *Driving* - Driving can be clunky, especially because nobody on 53D has driven a mecanum configuration before
    - *Building Precision* - Wheels have to be orientated in a certain matter to allow strafing
    - *Less Traction* - Due to the mecanum rollers, mecanum wheels have less surface area than omnis and traction wheels, causing them to have less traction.
    - *Weight* - Weigh more than omnis
    - *Programming* - Requires more complex programming
    - *Torque* - Requires more torque from the motors
  ],
)
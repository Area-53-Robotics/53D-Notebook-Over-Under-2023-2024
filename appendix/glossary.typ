#import "/template/glossary.typ": *

#nb_create_glossary_entry(
  title: "Area 53",
  category: "management",
  definition: [
  The name of our organization. Consists of 6 teams/squads from A-F.
])

#nb_create_glossary_entry(
  title: "Spin Up",
  category: "competition",
  definition: [
  The 2023-24 VEX Robotics Challenge. It involved shooting frisbee-like discs into elevated baskets, scoring rollers, and expanding during the endgame.
])

#nb_create_glossary_entry(
  title: "RPM",
  category: "build",
  definition: [
  An acronym for "Rotations per Minute." Used to interpret the speed of motors and motorized subsystems.
])

#nb_create_glossary_entry(
  title: "Typst",
  category: "program",
  definition: [
    A programming language similar to Markdown and LaTeX. It is used to write formatting instructions that get automatically rendered into a printable PDF.
])

#nb_create_glossary_entry(
  title: "PROS",
  category: "program",
  definition: [
  An API developed by students at Purdue SIGBots, used to control VEX robots. It functions as an alternative to VEXCode V5.
])

#nb_create_glossary_entry(
  title: "Python",
  category: "program",
  definition: [
  A general purpose, high-level programming language primarily used for data science. We utilize it to create graphs and other visual representations of data collected during our "Test" phases.
])

#nb_create_glossary_entry(
  title: "Bash",
  category: "program",
  definition: [
  A command-line interface shell program used in macOS and Linux. The equivalent of it for Windows is Windows PowerShell.
])

#nb_create_glossary_entry(
  title: "Slip Gear",
  category: "build",
  definition: [
    A slip gear is a gear that has several consecutive teeth shaven off, so that another gear driven by the slip gear will "slip" when it rotates to the section of the slip gear that has no teeth. Slip gears are most frequently utilized in catapults.
  ]
)

#nb_create_glossary_entry(
  title: "Auton",
  category: "program",
  definition: [
    Means one of the following:
    1. The autonomous phase of a VRC match
    2. The code for the autonomous phase of a VRC match
  ],
)

#nb_create_glossary_entry(
  title: "CAD",
  category: "select",
  definition: [
  An acronym for "Computer Aided Design". CAD programs are used at the industry level to plan out and test designs digitally. 53D uses Onshape as our CAD program.
])

#nb_create_glossary_entry(
  title: "Onshape",
  category: "select",
  definition: [
  A cloud-based CAD program with a readily available educational license. 53D uses it to plan out designs digitally before the "Build" phase.
])

#nb_create_glossary_entry(
  title: "Git",
  category: "program",
  definition: [
    A version control system that tracks the changes made to the source code of a project. It allows the user to create checkpoints called "commits" and develop multiple branches of the project simultaneously.
  ],
)

#nb_create_glossary_entry(
  title: "GitHub",
  category: "program",
  definition: [
    A commonly-used platform to store and manage git repositories.
  ],
)

#nb_create_glossary_entry(
  title: "Visual Studio Code (VSCode)",
  category: "program",
  definition: [
    A code editor developed by Microsoft with an embedded Git interface.
  ],
)

#nb_create_glossary_entry(
  title: "LVGL",
  category: "program",
  definition: [
    An acronym for "Light and Versatile Graphics Library". It is used to create embedded GUIs into microprosessors such as the VEX brain.
  ],
)

#nb_create_glossary_entry(
  title: "Repository",
  category: "program",
  definition: [
    A centralized digital storage that developers use to make and manage changes to an application's source code.
  ],
)

#nb_create_glossary_entry(
  title: "PID",
  category: "program",
  definition: [
    A controller for subsystems that creates efficient and accurate movements. It has three terms that are added together to calculate output:
    - #underline[*P*]roportional term
    - #underline[*I*]ntegral term
    - #underline[*D*]erivative term
  ],
)

#nb_create_glossary_entry(
  title: "Boxing",
  category: "build",
  definition: [
    A building technique that involves placing one C-channel into another and connecting them using long screws with spacers. This increases the stability of the subsystem it is used on.
  ],
)

#nb_create_glossary_entry(
  title: "Telemetry",
  category: "program",
  definition: [
    The collection of data from sensors on the robot.
  ],
)

#nb_create_glossary_entry(
  title: "AWP",
  category: "competition",
  definition: [
    An acronym for Autonomous Win Point.
  ],
)

#nb_create_glossary_entry(
  title: "C++",
  category: "program",
  definition: [
    An object-oriented programming language used in VEXCode V5 and PROS.
  ],
)

#nb_create_glossary_entry(
  title: "Meta",
  category: "competition",
  definition: [
    What is generally agreed upon by the VRC community to be the best (or one of the best strategies) to approach the game challenge.
  ],
)

// Old Glossary Entries
/*
#nb_create_glossary_entry(
  title: "Singleton Pattern",
  definition: [
  A software design pattern where a class is only instantiated once.
])

#nb_create_glossary_entry(
  title: "Mutual Exclusion",
  definition: [
    A software design pattern where a shared resource can only be accessed by a
    single thread of execution at a time. It is often used to prevent race
    conditions.
  ],
)

#nb_create_glossary_entry(
  title: "Skid Steer",
  definition: [
    A style of vehicle where the wheels have a fixed alignment. This is typically
    seen on heavy equipment like front loaders.
  ],
)

#nb_create_glossary_entry(title: "Parallelism", definition: [
  The process of running code in parallel across multiple cores.
])

#nb_create_glossary_entry(
  title: "Asynchronous",
  definition: [
    When code is run out of order to achieve the illusion of running at the same
    time (parallelism).
  ],
)


#nb_create_glossary_entry(
  title: "API",
  definition: [
    Acronym for application programming interface. It is a translation layer between
    two pieces of software.
  ],
)

#nb_create_glossary_entry(
  title: "Arcade Drive",
  definition: [
    A driver control method where one joystick controls forward and backwards, and
    the other controls turning.
  ],
)


#nb_create_glossary_entry(
  title: "Framework",
  definition: [
    A collection of code that serves as a base for other code to be written on top
    of.
  ],
)

#nb_create_glossary_entry(title: "Library", definition: [
  A collection of code that provides common utility.
])

#nb_create_glossary_entry(title: "PID", definition: [
  Control theory used to move a system to a target smoothly.
])

#nb_create_glossary_entry(
  title: "Pure Pursuit",
  definition: [
    A path following algorithm that causes the robot to move to a series of points.
  ],
)

#nb_create_glossary_entry(title: "Odometry", definition: [
  A method of tracking the position of the robot in cartesian coordinates
  developed by team 5225, the Pilons.
])

#nb_create_glossary_entry(
  title: "Absolute Movement",
  definition: [
    Movement that is in relation to a fixed point, rather than relative to itself.
  ],
)

#nb_create_glossary_entry(
  title: "Tank Drive",
  definition: [
    A driver control method where the left joystick controls the left wheels of the
    bot, and the right joystick controls the right side of the bot.
  ],
)
*/
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "understand",
  start_date: datetime(year: 2023, month: 7, day: 15),
  attendance: "Ajibola, Ishika, Eric, Emma",
  designed: "Ajibola",
  witnessed: "Eric",
)

#tablex(
  columns: 2,
  rows: 6,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Gear Ratios
  ],
  [#image("./understand/DT stem - Gear ratio.svg")],
  [
    == What are gear ratios?
    Gear ratios provide mechanical advantage. Depending on whether the driven gear has more or fewer teeth than the driving gear, the gear ratio can result in either an increase (mechanical advantage for torque) or a decrease (mechanical advantage for speed) in rotational speed or force.

    == How do they relate to the drivetrain?

    Gear ratios are crucial for optimizing the performance of motorized systems. They are used to achieve the desired balance between speed and torque, allowing robots to move efficiently.
  ],
  cellx(colspan: 2)[
    = Structural Dynamics
  ],
  [#image("./understand/Structural dynamics.svg")],
  [
    == What are structural dynamics?

    Determining the natural frequencies of a structure is crucial in understanding how it will respond to dynamic loads. These frequencies represent the inherent vibration characteristics of the structure.

    == How do they relate to to the drivetrain?

    Structural dynamics helps in analyzing and understanding the vibrations induced in the components of the drivetrain during operation. Vibrations can be critical, affecting the performance and lifespan of various elements, such as gears, bearings, and axles.
  ],
  [
    = Newton's Laws of Motion
    == What are Newton's Laws of Motion?

    + *First Law* (Law of Inertia): An object at rest remains at rest, and an object in motion continues in motion with a constant velocity unless acted upon by a net external force.

    + *Second Law* ($#sym.Sigma F = m a$): The acceleration of an object is directly related to the net force acting upon it and inversely related to its mass.

    #nb_admonition(type: "equation")[
      If:
      - $#sym.Sigma F$ is the net force acting on an object
      - $m$ is the mass of the object
      - $a$ is the acceleration of the object

      $ #sym.Sigma F = m a $
    ]

    3. *Third Law* (Action and Reaction): For every action, there is an equal and opposite reaction.

    #nb_admonition(type: "equation")[
      If:
      - $F_"in"$ is the force that the first object exerts on the second object
      - $F_"out"$ is the force that the second object exerts back on the first object

      $ F_"in" = F_"out" $
    ]
  ],
  box(height: 40%)[
    #image("./understand/Newton's First Law.excalidraw.svg")
    #image("./understand/Newton's Second Law.excalidraw.svg")
    #image("./understand/Newton's Third Law.excalidraw.svg")
  ],
  cellx(colspan: 2)[
    == How do they relate to the drivetrain?

    Newton's laws of motion directly influence the behavior of a drivetrain in the following ways:

    - *Initiating Motion*: The first law explains the initial state of rest or motion.
    - *Acceleration and Forces*: The second law governs how the forces applied by the drivetrain's motors result in acceleration or deceleration, influencing the robot's speed and direction.
    - *Interaction with the Ground*: The third law is evident in the interaction between the wheels of the drivetrain and the surface, which is essential for the robot's mobility.
  ]
)
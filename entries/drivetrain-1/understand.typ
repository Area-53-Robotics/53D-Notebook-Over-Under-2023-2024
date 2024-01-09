#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "understand",
  start_date: datetime(year: 2023, month: 7, day: 15),
  attendance: "Ajibola, Ishika, Eric, Emma"
)

#tablex(
  columns: 2,
  rows: 6,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Gear Ratio
  ],
  [Placeholder],
  [
    == What are gear ratios?
    Gear ratios provide mechanical advantage. Depending on whether the driven gear has more or fewer teeth than the driving gear, the gear ratio can result in either an increase (mechanical advantage for torque) or a decrease (mechanical advantage for speed) in rotational speed or force.

    == How do gear ratios relate to the drive train?

    Gear ratios are crucial for optimizing the performance of motorized systems. They are used to achieve the desired balance between speed and torque, allowing robots to move efficiently.
  ],
  cellx(colspan: 2)[
    = Structural Dynamics
  ],
  [Placeholder],
  [
    == What are structural dynamics?

    Determining the natural frequencies of a structure is crucial in understanding how it will respond to dynamic loads. These frequencies represent the inherent vibration characteristics of the structure.

    == How do structural dynamics relate to drive train?

    Structural dynamics helps in analyzing and understanding the vibrations induced in the components of the drive train during operation. Vibrations can be critical, affecting the performance and lifespan of various elements, such as gears, bearings, and structural members.
  ],
  cellx(colspan: 2)[
    = Newton's Laws of Motion
  ],
  [
    == What are Newton's Laws of Motion?

    + *First Law* (Law of Inertia): An object at rest remains at rest, and an object in motion continues in motion with a constant velocity unless acted upon by a net external force.

    + *Second Law* (F = ma): The acceleration of an object is directly proportional to the net force acting upon it and inversely proportional to its mass.

    + *Third Law* (Action and Reaction): For every action, there is an equal and opposite reaction.

    == How do the laws of motion relate to the drive train?

    Newton's laws of motion directly influence the behavior of a drive train in the following ways:

    *Initiating Motion*: The first law explains the initial state of rest or motion.

    *Acceleration and Forces*: The second law governs how the forces applied by the drive train's motors result in acceleration or deceleration, influencing the robot's speed and direction.

    *Interaction with the Ground*: The third law is evident in the interaction between the wheels of the drive train and the surface, which is essential for the robot's mobility.
  ],
  [Placeholder],
)
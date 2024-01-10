#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "understand",
  start_date: datetime(year: 2023, month: 9, day: 22),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
)

#tablex(
  columns: 2,
  rows: 6,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Mechanical Leverage
  ],
  [#image("./understand/mechanical-leverage.png")],
  [
    == What is mechanical leverage?

    Mechanical leverage refers to the mechanical advantage gained by using a lever or a similar simple machine. It involves the use of a lever to amplify force or motion. The concept is based on the principle of torque, which is the rotational force around an axis. Leverage allows a smaller force applied at one point to create a larger force at another point, or to achieve a greater displacement. 

    == How does it relate to the wings?

    The fulcrum of the wings is the pivot point, where the wings freely move from. When you are closer to the pivot point on the wing, you generally need to apply more force to achieve the same amount of torque (rotational force). This is because torque is the product of force and the distance from the point of rotation (fulcrum). The equation for torque is:

    #nb_admonition(type: "equation")[
      If:
      - #sym.tau is the torque (rotational force) that is exerted
      - $r$ is the distance from the fulcrum 
      - $F$ is the force that is applied

      #text(size: 15pt)[
        $ #sym.tau = r F $
      ]
    ]
  ],
  cellx(colspan: 2)[
    = Torque
  ],
  [#image("./understand/torque.png")],
  [
    == What is torque?

    Torque is a measure of the rotational force applied to an object around an axis. It is a vector quantity, meaning it has both magnitude and direction.

    == How does it relate to the wings?

    Torque is responsible for the rotation of an object around an axis. Simply, the longer the wings, the greater the torque necessary to exert the same amount of force. 

  ],
  cellx(colspan: 2)[
    = Equilibrium
  ],
  [
    == What is Equilibrium?

    Equilibrium, in the context of physics and mechanics, refers to a state in which an object or a system experiences a balance of forces and torques.

    == How does it relate to the wings?

    For the wings to remain open, the torques acting on it must be balanced. When you stop applying force, the wings reaches rotational equilibrium, where the torque due to gravity is counteracted by the torque applied when you extend them.
  ],
  [#image("./understand/equilibrium.png")],
)
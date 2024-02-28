#import "/template/template.typ": *

#show: create_entry.with(
  title: "Elevation #1",
  type: "understand",
  start_date: datetime(year: 2024, month: 1, day: 18),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Ajibola",
)

= Gravitational Potential Energy
#gridx(
  columns: 2,
  gutter: 5pt,
  align: left,

  [
    == What is gravitational potential energy?
    Gravitational potential energy is the energy an object possesses due to its position in a gravitational field. It represents the potential for an object to do work as a result of its position relative to other objects within the gravitational field.

    #nb_admonition(type: "equation")[
      If:
      - "PE"#sub[grav] is the gravitational potential energy (in J)
      - $m$ is the mass of the object (in m)
      - $g$ is the acceleration due to gravity (9.8 m/s#super[2])
      - $h$ is the height above the reference point

      #text(size: 15pt)[
        $ "PE"#sub[grav] = m g h $
      ]
    ]
  ],
  cellx(align: horizon)[#image("./understand/Gravitational potential energy.excalidraw.svg")],
)

== How does it relate to elevation?
Elevation involves lifting an robot against the force of gravity. As an object is raised to a higher elevation, it gains gravitational potential energy. The amount of potential energy gained is directly proportional to the height above the reference point and the mass of the robot.

#colbreak()

= Work
#gridx(
  columns: 2,
  gutter: 5pt,
  align: left,

  cellx(align: horizon)[#image("./understand/Work.excalidraw.svg")],
  [
    == What is work?
    In physics, work is defined as the transfer of energy that occurs when a force is applied to an object, causing it to move in the direction of the force.

    #nb_admonition(type: "equation")[
      If:
      - $W$ is the work done on the object (in J)
      - $F$ is the force applied to the object (in N)
      - $d$ is the distance over which the force is applied in the direction of the force
      - $#sym.theta$ is the angle between the force applied and the direction the object moves in

      #text(size: 15pt)[
        $ W = F d cos(#sym.theta) $
      ]
    ]
  ],
)

== How does it relate to elevation?
When the robot is elevated, work is done against the force of gravity. The work done is equal to the change in gravitational potential energy of the robot.

#colbreak()

= Fluid Mechanics
#gridx(
  columns: 2,
  gutter: 5pt,
  align: left,

  [
    == What is Boyle's Law?
    It describes the relationship between the pressure and volume of a gas at constant temperature. Boyle's Law states that the pressure of a gas is inversely proportional to its volume when the temperature remains constant.
  ],
  [#image("./understand/Boyle law.excalidraw.svg")],
  cellx(colspan: 2)[
    #nb_admonition(type: "equation")[
      If:
      - $P_1$ is the initial pressure of the gas (in atm)
      - $V_1$ is the initial volume of the gas (in L)
      - $P_2$ is the final pressure of the gas (in atm)
      - $V_2$ is the final volume of the gas (in L)

      #text(size: 15pt)[
        $ P_1 V_1 = P_2 V_2 $
      ]
    ]

    == How does it relate to elevation?
    In pneumatic elevation systems, compressed air is often used to actuate cylinders or lift mechanisms. When air is compressed, its volume decreases, leading to an increase in pressure according to Boyle's Law. This principle is utilized when air is pumped into a pneumatic system to build pressure, which can then be used to elevate or lift objects.
  ],
  cellx(colspan: 2)[
    == What is Bernoulli's Equation?
    Bernoulli' equation states that the total mechanical energy per unit mass of a fluid remains constant along a streamline, neglecting losses due to friction or turbulence.

    #nb_admonition(type: "equation")[
      // Verify that the units are accurate
      If:
      - $P$ is the pressure of the fluid (in atm)
      - $#sym.rho$ is the density of the fluid (in kg/m#super[2])
      - $v$ is the velocity of the fluid (in m/s)
      - $g$ is the acceleration due to gravity, (9.8 m/s#super[2])
      - $h$ is the elevation (height) above a reference point (in m)

      #text(size: 15pt)[
        $ P + 1/2 #sym.rho v^2 + #sym.rho g h = "constant" $
      ]
    ]

    #image("./understand/Bernoulli equation.excalidraw.svg")

    == How does it relate to elevation?
    Bernoulli's equation is usually associated with fluid but can be used with pneuamtic systems. its underlying principles of energy conservation and pressure-velocity relationships can still provide valuable insights for analyzing and optimizing pneumatic system performance.
  ],
)
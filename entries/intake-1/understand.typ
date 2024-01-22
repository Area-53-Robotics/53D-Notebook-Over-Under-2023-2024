#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "understand",
  start_date: datetime(year: 2023, month: 10, day: 14),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Eric",
)

#gridx(
  columns: 2,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Impulse
  ],
  [
    #image("./understand/Impulse 1.excalidraw.svg")
    #image("./understand/Impulse 2.excalidraw.svg")
  ],
  [
    == What is Impulse?
    Impulse describes the change in momentum of an object.

    #nb_admonition(type: "equation")[
      If:
      - $J$ is the impulse (change in momentum) of an object
      - $F$ is the amount of force applied to an object
      - $#sym.Delta t$ is the time over which the force is applied

      $ J = F #sym.Delta t $
    ]

    == How does it relate to the intake?

    The impulse experienced by an object is equal to the change in its momentum. When an intake mechanism interacts with an object, it applies a force over a certain duration. The resulting impulse causes a change in the object's momentum.
  ],
)

#colbreak()

#gridx(
  columns: 2,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Elasticity and Hooke's Law
  ],
  [
    #image("./understand/Elasticity.excalidraw.svg")
    #image("./understand/Hooke's law.excalidraw.svg")
  ],
  [
    == What is elasticity and Hooke's law?

    - *Elasticity* is the property of a material that allows it to return to its original shape and size after deformation when the applied force is removed. Materials that exhibit high elasticity can undergo substantial deformation and then recover completely
    - *Hooke's Law* describes the linear relationship between the force applied to a spring or elastic material and the resulting deformation.

    #nb_admonition(type: "equation")[
      If:
      - $F$ is the force needed to extend or compress an elastic material
      - $k$ is a constant factor characteristic of the elastic material
      - $#sym.Delta x$ is the distance that that the elastic material is displaced

      $ F = -k #sym.Delta x $
    ]
    == How do they relate to to the intake?

    Elasticity is crucial for allowing the mechanism to deform when interacting with objects and then recover its original shape, especially if they use rubber bands or flex wheels.
  ],
)

#colbreak()

#gridx(
  columns: 2,
  auto-lines: false,
  gutter: 5pt,
  align: left,

  cellx(colspan: 2)[
    = Tension
  ],
  [
    == What is tension?

    Tension refers to the force that is transmitted through a string, rope, cable, or any flexible connector when it is pulled tight by forces acting from opposite ends. Tension is a pulling force, and it is always directed along the length of the flexible connector.
  ],
  [
    #image("./understand/Tension.excalidraw.svg")
  ],
  cellx(colspan: 2)[
    == How does it relate to the intake?

    Tension in flexible connectors contributes to the control and stability of the intake mechanism. 
  ]
)
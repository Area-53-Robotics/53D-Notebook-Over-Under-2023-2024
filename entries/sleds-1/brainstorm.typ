#import "/template/template.typ": *

#show: create_entry.with(
  title: "Sleds #1",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 1, day: 17),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Ajibola",
)

We brainstormed ideas for the sleds based on what we have used in previous seasons and what we have seen other teams use.

#nb_pro_con(
  name: "Triangle Sleds",
  image: image("./brainstorm/Circular sleds.excalidraw.svg"),
  image-width: 50%,
  pros: [
    - *Stability:* Triangular sleds may offer increased stability due to their three-point contact
    - *Optimization:* Due to the triangular shape, it is easy to cut and change
    - *Airtime:* When they contact the middle barrier, the triangle becomes tangent to the middle bar, guaranteeing airtime 
  ],
  cons: [
    - *Safety:* The shape has sharp edges that are prone to poking something
  ],
  notes: [
    - Suggested by Makhi
  ],
)

#nb_pro_con(
  name: "Circular Sleds",
  image: image("./brainstorm/Gusset sleds.excalidraw.svg"),
  image-width: 50%,
  pros: [
    - *Friction:* Depending on the design, a circular shape might reduce friction as the sled moves, contributing to smoother and more efficient sliding
  ],
  cons: [
    - *Optimization:* Due to the circular shape, the shape for these sleds need to be cut extra precise
    - *Steepness Limitations:* This type of sleds cannot be steep at all
  ],
  notes: [
    - Suggested by Jin Hao
  ],
)

#colbreak()

#nb_pro_con(
  name: "Gusset Sleds",
  image: image("./brainstorm/Circular sleds.excalidraw.svg"),
  image-width: 50%,
  pros: [
    - *Strength:* The materials are made out of gussets and not lexan, making them much stronger
    - *Durability:* Gussets can contribute to improved durability by reinforcing key stress points on the sled, reducing the risk of damage or failure during use
  ],
  cons: [
    - *Stiffness:* Although they are strong, they cannot bend and are stiff when contacting the middle barrier
  ],
  notes: [
    - A lot of teams have complained about how unreliable this type of sleds is
    - Suggested by Ajibola
  ],
)
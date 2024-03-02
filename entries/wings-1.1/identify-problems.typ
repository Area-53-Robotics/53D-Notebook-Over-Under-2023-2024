#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1.1 - Problems",
  type: "identify",
  start_date: datetime(year: 2024, month: 2, day: 7),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Rory",
  witnessed: "Jin",
)

#nb_todo(
  date: datetime(year: 2024, month: 1, day: 1),
  (
    (true, ""),
  )
)

At Gateway to the West, we spoke with team 338A about their front wing design and how we could implement it on our robot. The pros that we saw with their design was how compact and light the wings were. They used a half cut C-channel as their base, which we never thought of using. We also saw the importance of bracing our wings for better support.

= Design Comparison

#gridx(
  columns: 2,

  image("./identify-problems/338A-1.png", height: 14em),
  [338A uses a regular 2 C-channel as their pivot. There is a screw joint going through the C-channel and two half cuts bolted together for support. We believe this is to reduce friction as the boxed half cuts will make it difficult for the wings to open up.],
  
  [Another difference between their wing design and our wing design is the position of the pneumatics. When 338A's robot's wings are fully extended, the angle of their wings and the pneumatics is more parallel than ours. We observed that the more parallel the wings and pneumatics are, the easier it is for them to open. On the contrary, the more perpendicular they are, the more torque they generate and the stronger the wings are. We observed that a 135 degree angle seems to be the sweet spot.],
  image("./identify-problems/338A-2.jpg", height: 14em),

  image("./identify-problems/338A-3.jpg", height: 14em),
  [This picture demonstrates the screw-joint. There is a long screw coming from the chassis and the wing. There is a collar as well that acts as a triangle brace for the wing. We plan to use this feature in our design as well.],
)

= Design Evaluation

#tablex(
  columns: 2,

  cellx(fill: red)[Old Wing Design],
  cellx(fill: green)[New Wing Design],
  
  image("./identify-problems/Identify problem old wing design.excalidraw.svg"),
  image("./identify-problems/Identify problem new wing design.excalidraw.svg"),

  [
    Our current wing design involves using a 45 degree gusset that is attached to the side of the chassis. There is a screw joint going through a 45 degree gusset that connects the wing to the robot. 

    When the wing is fully extended, the piston creates a 110 degree angle with the wing. The more perpdenicular it is, the more torque is produce from the piston. A drawback is that it's harder to push open. 
  ],
  [
    With our new wing design, there will be a C-channel attached to the screw joint. The physical wing will be attached to the C-channel to reduce friction. Alongside the screw joint is a triangle brace to help secure the wing.

    When the wing is fully extended, the piston will create a 145 degree angle with the wing. We found that weaker wings help with pushing triballs.
  ]
)
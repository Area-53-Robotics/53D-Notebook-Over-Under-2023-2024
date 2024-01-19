#import "/template/template.typ": *

#show: create_entry.with(
  title: "Outtake #2",
  type: "understand",
  start_date: datetime(year: 2023, month: 11, day: 11),
  attendance: "Ajibola, Jin, Ishika, Eric, Rory, Makhi"
)

#nb_admonition(type: "note")[
  We were unable to research the scientific concepts that apply to an outtake before building our first outtake mechanism due to time constraints.
]

#gridx(
  columns: 1,
  rows: 3,
  row-gutter: 10pt,

  gridx(
    columns: 2,
    gutter: 5pt,

    cellx(colspan: 2)[
      = Projectile Motion
    ],
    [#image("./understand/Projectile motion.excalidraw.svg")],
    [
      == What is projectile motion?
      Projectile motion refers to the motion of an object that is thrown or projected into the air and is subject only to the force of gravity and air resistance. In this type of motion, the object follows a curved path, known as a trajectory, under the influence of gravity while being propelled forward.

      == How does it relate to the outtake?
      An outtake mechanism might be designed to release or throw objects to specific locations. Understanding projectile motion is crucial for optimizing the accuracy, range, and overall performance of such outtake systems.
    ],
    cellx(colspan: 2)[
      #nb_admonition(type: "equation")[
        If:
        - $#sym.Delta x$ is the projectile's  change in movement (displacement) horizontally (in m)
        - $#sym.Delta y$ is the projectile's change in movement (displacement) vertically (in m)
        - $v_0_x$ is the horizontal component of the projectile's initial velocity (in m/s)
        - $v_0_y$ is the vertical component of the projectile's initial velocity (in m/s)
        - $t$ is the time it takes for the projectile to reach the vertex of its arc (in s)
        - $g$ is the gravitational constant 9.8 m/s#super[2]

        #gridx(
          columns: (1fr, 1fr),
          rows: 2,
          align: center + horizon,

          text(size: 15pt)[#underline[*Horizontal*]], text(size: 15pt)[#underline[*Vertical*]],

          text(size: 15pt)[
            $ #sym.Delta x = v_0_x t $
            $ v_x = v_0_x $
          ],

          text(size: 15pt)[
            $ #sym.Delta y = v_0_y t - 1/2 g t #super[2] $
            $ v_y = v_0_y t - g t $
          ]
        )
      ]
    ]
  ),

  gridx(
    columns: 2,
    gutter: 5pt,

    cellx(colspan: 2)[
      = Energy Transfer: Potential to Kinetic energy
    ],
    [
      == What is energy transfer?
      Energy transfer from potential to kinetic energy is a common process observed in various physical systems. Potential energy is the stored energy an object possesses due to its position or state, while kinetic energy is the energy associated with its motion. The transition from potential to kinetic energy typically occurs when an object is released from a position of potential energy.

      == How does it relate to to the outtake?
      Many outtake mechanisms involve the conversion of potential energy to kinetic energy. For example, an object lifted to a certain height or compressed within a spring possesses potential energy. The release of this object allows for the conversion of potential energy into kinetic energy as the object moves.
    ],
    [#image("./understand/Potential to Kinetic energy.excalidraw.svg")],
    cellx(colspan: 2)[
      #nb_admonition(type: "equation")[
        If:
        - $K$ is kinetic energy: the energy possessed by an object in motion
        - $P$ is potential energy: the energy an object has because of its position relative to another object
        - $m$ is the mass of the object (in kg)
        - $v$ is the velocity of the object (in m/s)
        - $g$ is the gravitational constant 9.8 m/s#super[2]
        - $h$ is the height of the object (in m)

        #text(size: 15pt)[
          $ K = 1/2 m v #super[2] $
          $ P = m g h $
        ]
      ]
    ]
  ),

  gridx(
    columns: 2,
    gutter: 5pt,

    cellx(colspan: 2)[
      = Conservation of Momentum
    ],
    
    box(height: 15em)[
      #image("./understand/Conservation of momentum 1.excalidraw.svg")
      #image("./understand/Conservation of momentum 2.excalidraw.svg")
    ],

    [
      == What is conservation of momentum?
      The conservation of momentum is a fundamental principle in physics that states that the total linear momentum of an isolated system remains constant if no external forces act on it. In simpler terms, the total momentum of a system of objects before an event (such as a collision) is equal to the total momentum after the event.

      == How do they relate to the drivetrain?
      When objects are launched or released, they experience a change in momentum. The conservation of momentum can be applied to analyze the interaction between the outtake mechanism and the launched objects. 

      In some outtake mechanisms, the released objects may collide with other surfaces or obstacles. The conservation of momentum becomes crucial in understanding and predicting the outcomes of such collisions.
    ],
  ),
)
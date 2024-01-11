#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 10, day: 14),
  attendance: "Ajibola, Ishika, Eric, Makhi"
)

#nb_pro_con(
  name: "Linear Flex Wheel",
  image: image("./brainstorm/Linear flex wheel intake.excalidraw.svg"),
  pros: [
    - *Consistent* - Linear flywheel intakes often provide a consistent and controlled method for intaking game elements. The rotation of the flywheels helps maintain a steady intake speed.
    - *Speed* - Linear flywheel intakes can achieve high speeds, enabling rapid intake and efficient cycling during matches.
    - *Directional Control* - he linear arrangement allows for directional control, making it easier to align and intake game elements from specific orientations.
  ],
  cons: [
    - *Motor Consumption* - Achieving high speeds with flywheels may require a significant amount of motor power, potentially limiting the number of available motors for other robot functions.
    - *Interia* -  Linear flywheel intakes may be susceptible to backlash and inertia issues. Rapid changes in direction or sudden stops can affect the precision and responsiveness of the intake.
    - *Range* - Depending on the design, a linear flywheel intake may have a limited range of motion.
  ],
  notes: [
    - We would need to find a way to squeeze the triballs while intaking
  ],
)

#colbreak()

#nb_pro_con(
  name: "Rubber Band",
  image: image("./brainstorm/Rubber Band Intake.excalidraw.svg"),
  pros: [
    - *Simplicity* - Sprocket and rubber band intakes are often simpler to design and build compared to more complex mechanisms.
    - *Lightweight* - Sprocket and rubber band intakes can be lightweight, contributing to overall robot weight optimization.
    - *Low Friction and Minimal Wear* - he use of rubber bands can contribute to low friction, reducing wear and tear on the mechanism over time. This can lead to improved durability and consistent performance.
  ],
  cons: [
    - *Limited control* - Sprocket and rubber band intakes may provide less precise control over the intake process compared to more sophisticated mechanisms.
    - *Dependence on Rubber Band Tension* - Rubber bands may have a tendency to tangle or snag, especially when dealing with irregularly shaped game elements. This can lead to disruptions in the intake process.
  ],
  notes: [
    - Most familiar intake build to most of the team
  ],
)

#colbreak()

#nb_pro_con(
  name: "Flywheel Intake",
  image: image("./brainstorm/Flywheel intake.excalidraw.svg"),
  pros: [
    - *Simple and Modular Construction* - he construction of a flex wheel intake is often simple and modular. Teams can easily adjust the configuration and layout to suit their specific needs and game requirements.
    - *Ease of Prototyping and Iteration* - Teams can quickly prototype and iterate different configurations of flex wheel intakes, facilitating efficient testing and optimization of the mechanism.


  ],
  cons: [
    - *Limited Precision* - Achieving precise control over the intake process, especially in terms of compression and directional control, may be more challenging with flex wheel mechanisms compared to more complex designs.
    - *Potential for Tangling or Snagging* - Flex wheel intakes may have the potential to tangle or snag, especially when dealing with the abnormal shape of the triballs.

  ],
  notes: [
    - Weakest of the three
    - Can run out of air of the pneumatic 
  ],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Autonomous - Movement",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 2, day: 12),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)

// There are multiple methods of programming an autonomous, ranging from DIY implementations to libraries made by other teams. We brainstormed and researched a few of them to ensure that we have multiple options available to us.

#nb_pro_con(
  name: "Relative Movements",
  image: image("./brainstorm-movement/relative-movements.excalidraw.svg"),
  pros: [
    - *Low Difficulty* - Easy to understand and write code for
    - *Implementation Time* - Because we have been using relative movements until this point, we already have the code necessary to implement it
  ],
  cons: [
    - *Low Consistency* - Relative movements are prone to multiple sources of error such as wheel slippage and interference from opposing alliances that make them perform different in different rounds
    - *Limited Possibilities* - Relative movements restrict us to two forms of movement: driving forward and turning, which heavily restricts the types of movements the robot can make during auton
    - *Testing Time* - Each relative movement in an auton has to be tested one at a time, so making long autons can become time consuming and inconsistent
  ],
  notes: [
    - We have been using this method of autonomous movement up until now due to its low implementation time
  ],
)

#colbreak()

#nb_pro_con(
  name: "PID",
  image: image("./brainstorm-movement/PID.excalidraw.svg"),
  pros: [
    - *Heavily Documented* - PID is widely used by other teams and for applications outside of VRC, so there will be a lot of documentation and assistance available if we need it
    - *Implementation Time* - While it takes more time to implement PID than relative movements, PID can be implemented relatively quickly, especially when done with a library
  ],
  cons: [
    - *Tuning* - PID has to be tuned to account for the weight, friction, and other factors of our robot, which can be very time consuming. Also if any major changes are made to the robot that affect any of these factors, the PID has to be re-tuned
  ],
  notes: [
    PID is a controller for subsystems that creates efficient and accurate movements. It has three terms (#underline[*P*]roportional, #underline[*I*]ntegral and #underline[*D*]erivative) that are added together to calculate output, slowing down the drivetrain as it approaches the end point:
  ],
)

#nb_pro_con(
  name: "Pure Pursuit",
  image: image("./brainstorm-movement/pure-pursuit.excalidraw.svg"),
  pros: [
    - *Smooth Movement* - Pure Pursuit gives the smoothest movement and turns out of any autonomous implementation
  ],
  cons: [
    - *Implementation Time* - It can take a long time to generate the paths and algorithm for Pure Pursuit
    - *Distance Limitations* - Pure Pursuit is meant to be implemented for long paths, so it does not work well with chains of short movements
  ],
  notes: [
    Pure Pursuit utilizes a complex algorithm to make a robot follow long, pre-generated paths. The algorithm works by drawing an imaginary circle around the robot (the radius of which is called the lookahead distance, which is set by the programmer), and having the robot move toward the closest intersection between the circle and the path.
  ],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1.1 - Improvements",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 13),
  end_date: datetime(year: 2024, month: 2, day: 13),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/13

We are excited to introduce our modular mechanism as we have not seen anyone do this in Maryland. Because we barely use our kicker during matches, replacing it with an elevation mechanism makes the most effective use of our motors. Instead of trying to add a hang mechanism along our kicker, we can replace our kicker all together. This helps reduce the weight of our mechanism. 


#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to build the kicker): Ishika & Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
    - Create the new flex wheel kicker arm: Makhi
    - Rubber band and tune the banding of the rubber bands: Makhi
    - Initial Testing: Everyone
    - Programming: Ishika and Ajibola

    == Materials
    - 2x13x1 C-channel 
    - A pair of 2” flex wheels 
    - The rest of the materials are found in the toolbox 
    - Lexan
      - This is for the sleds of the drivetrain 

    == Assembly: Kicker
    - Attached the 2x13x1 C-channel to the gear box
      - Since we want to hit the kicker at a certain angle to maxmize the grouping, we are going for a lower angle kicker 
      - We need a shorter arm to achieve this result
    - Attached the pair of flex wheels together with a screw joint and a collar
      - Attached with a standoff and connected to the kicker arm
    - Boxed the area where it makes contact with our stopper.

    == Assembly: Back Sleds
    - Attached a half cut to the back of the drivetrain
      - Since the hinges of the wings are in the way, we will cut the sleds to be under the hinge
    - Took apart the back wheels to add supports to the back sleds
      - This took a majority of this meeting's time. 
    - Cut off remaining excess lexan in our back sleds
  ],

  [
    #figure(
      image("./build-2/2.13-1.jpg", height: 15em),
      caption: [The individual kicker arm]
    )
    #figure(
      image("./build-2/2.13-2.jpg", height: 15em),
      caption: [The new kicker arm and back sleds on our robot before we shortened the half cut C-channel]
    )
    #figure(
      image("./build-2/2.13-3.jpg", height: 15em),
      caption: [The gear box of the kicker. The green motor of the kicker is connected to the outer silver gear]
    )
    #figure(
      image("./build-2/2.13-4.jpg", height: 15em),
      caption: [Our back sleds]
    )
  ]
)
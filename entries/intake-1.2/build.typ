#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1.2",
  type: "build",
  start_date: datetime(year: 2024, month: 2, day: 2),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Jin",
)

= 2024/02/02
[The team observed a rise of popularity of the flex wheel intake. We noticed that rubberbands twisted a lot when we intake a triball which accelerated the speed the rubber bands wear down. This worsened the grip that the rubberbands have and increased the frequency that they needed to be replaced. We believed that switching to a flex wheel intake, we allow us to have a better time cycling and intaking. ]

== Delegation
- inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
- Manufacture (Cutting pieces to size, cleaning sharp edges, slip gears): Eric and Ajibola
- Replace the intake to flex wheel - Makhi
- Recut sleds for the intake - Eric
- Attach the sensor - Ajibola
- Oversight & Quality Control: Ajibola, Jin
- Initial testing: Everyone
- Programming: Ishika and Ajibola


#grid(
  columns: 2,

  [
    == Materials
    - 6 2” flex wheels
    - High strength stand off
    - 12 teeth sprockets 
    - Lexan
      - Since we are using a high strength axle, the need to make new sleds 
    - The rest were found in the tool box

    == Assembly
    - Replace the bearing block from a low strength bearing to a high strength bearing
    - Attach a flexwheel and inch spacer
      - Repeat this spacing until all the flex wheels has been mounted
    - Attach the sleds of the intake
      - Since we're now using high strength, our intake is more compact, requiring a different sled design
  ],

  [
    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )

    #figure(
      image("/assets/duck.jpg", height: 30%),
      caption: [Caption here]
    )
  ]
)
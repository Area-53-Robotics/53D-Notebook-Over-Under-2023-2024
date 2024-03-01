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
The team observed a rise of popularity of the flex wheel intake. We noticed that rubberbands twisted a lot when we intake a triball which accelerated the speed the rubber bands wear down. This worsened the grip that the rubberbands have and increased the frequency that they needed to be replaced. We believed that switching to a flex wheel intake, we allow us to have a better time cycling and intaking.

#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to improve on the wings): Ishika and Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric and Ajibola
    - Replace the intake rubber bands & sprockets with flex wheel: Makhi
    - Re-cut sleds for the intake: Eric
    - Oversight & Quality Control: Ajibola, Jin
    - Initial Testing: Everyone
    - Programming: Ishika and Ajibola

    == Materials
    - 6 2” flex wheels
    - High strength stand off
    - 12 teeth sprockets 
    - Lexan
      - Since we are using a high strength axle, we need to make new sleds 
    - The rest were found in the tool box

    == Assembly
    - Replaced the low strength beraing block with a high strength bearing block
    - Attached a flex wheel and 1 in spacer
      - Repeated this spacing until all the flex wheels were mounted
    - Attached the sleds of the intake
      - Since we're now using high strength, our intake is more compact, requiring a different sled design
  ],

  [
    #figure(
      image("./build/2.2-1.png", height: 30%),
      caption: [Front view of the new flex wheel intake]
    )

    #figure(
      image("./build/2.2-2.png", height: 30%),
      caption: [The new sleds design. What is different with this sled is the ends are slightly bigger than the flex wheels. Since the flex wheels are also round, they help slide the intake across the goal.]
    )
  ]
)
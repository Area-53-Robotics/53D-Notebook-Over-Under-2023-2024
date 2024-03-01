#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1 - Platform",
  type: "build",
  start_date: datetime(year: 2024, month: 1, day: 18),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Makhi",
  witnessed: "Eric",
)

= 2024/01/18
Our previous platform was bulky and inconsistent. It was built with a 5 hole C-channel and lexan sleds. The problem was that the triballs had a hard time staying on the platform, and the orientation of the triballs was inconsistent, ruining the grouping. Instead of using a 5C-channel, we used lexan sleds for the platform.

#grid(
  columns: 2,

  [
    == Delegation
    - Inventory (collecting materials from the manifest to build the kicker platform): Ishika & Rory
    - Manufacturing (cutting pieces to size, cleaning sharp edges, and slipping gears): Eric & Ajibola
    - Cut and sand down the lexan sleds: Eric
    - Attach the sleds onto the kicker: Jin
    - Brace the kicker down: Makhi & Jin
    - Raise the length of the kicker: Makhi & Jin
    - Oversight & Quality Control: Ajibola & Jin

    == Materials
    - Because we want to use lexan sleds to create the platform, we had Eric cut and sand down lexan pieces
    - We collected a rail to create our new kicker rubber stop
    - The rest of the materials are found in the tool box

    == Assembly
    + We took some time examining the base of the triballs to determine the length that we need
      - The length is slightly longer than the triball. This allows the triball to slide into its position
    + We drilled a couple of holes on the side of the lexan to attach them to the kicker
    + Lowered the C-channel with the rubber stopper to make room to attach the sleds
    + Attached stand offs and rubberbanded the kicker to fix it to the platform
      - Since the triball is placed further back, we needed a new area to hit
      - Instead of using traditional rubber bands, we used tubing.
      - Tubing is more eleastic and less prone to snapping.
  ],
  [
    #figure(
      image("./build/1.18-1.jpg", height: 35%),
      caption: [The kicker platform before it was sanded down]
    )

    #figure(
      image("./build/1.18-2.jpg", height: 35%),
      caption: [The full robot with the new platform. Instead of rubberbands, we used tubing to brace the kicker down.]
    )
  ]
)
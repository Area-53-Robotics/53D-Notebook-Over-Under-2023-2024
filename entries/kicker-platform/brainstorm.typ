#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kicker #1 - Platform",
  type: "brainstorm",
  start_date: datetime(year: 2024, month: 1, day: 14),
  attendance: "Ajibola, Jin, Ishika, Makhi, Eric, Rory",
  designed: "Jin",
  witnessed: "Ajibola",
)

We brainstormed a few ideas for kicker platforms based on robots that we have seen at other tournaments, especially at Valley Mall.

#nb_pro_con(
  name: "Tray Platform",
  image: [
    #image("./brainstorm/bird eye view of tray.excalidraw.svg")
    #image("./brainstorm/Tray platform.excalidraw.svg")
  ],
  pros: [
    - *Control:* The specific design of the tray allow for easy placement of the triballs
    - *Versatility:* The tray can be easily changed and molded to fit any shape
  ],
  cons: [
    - *Complexity:* Molding the tray requires heat to shape it
    - *Sensitive:* The tray's shape is very sensitive to changes 
  ],
  notes: [
    - The tray will be molded with a VEX Robotics trophy
    - Suggested by Makhi 
  ],
)

#colbreak()

#nb_pro_con(
  name: "Tower Platform",
  image: [
    #box(height: 11em)[#image("./brainstorm/bird eye view of tower plateform.excalidraw.svg")]
    #box(height: 11em)[#image("./brainstorm/Kicker tower platform.excalidraw.svg")]
  ],
  pros: [
    - *Stability:* The tray will help support the kicker's towers and improve the robot's overall structural integrity
    - *Compact:* It is the smallest of all three options, thus the most compact
  ],
  cons: [
    - *Consistency:* Due to the kicker's small size, it requires more precision to placed the triballs
  ],
  notes: [
    - Because of how precise we need to placed the triballs, this requires more practice to perfect
    - Suggested by Jin Hao
  ],
)

// #colbreak()

#nb_pro_con(
  name: "Lexan Wings Platform",
  image: [
    #box(height: 11em)[#image("./brainstorm/Bird eye view of ishikas.excalidraw.svg")]
    #box(height: 11em)[#image("./brainstorm/Ishikas.excalidraw.svg")]
  ],
  pros: [
    - *Weight:* The platform is made mostly out of lexan which is lightweight
    - *Customization:* Lexan is very easy to cut, allowing for ease alternation to its shape
  ],
  cons: [
    - *Durability:* Lexan is not as durable compared to aluminum and steel and can wear down overtime
  ],
  notes: [
    - The most easily to make given our time constraints
    - Suggested by Ishika
  ],
)
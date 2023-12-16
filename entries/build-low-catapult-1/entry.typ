#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Catapult #1 - Low Catapult",
  type: "build",
  start_date: datetime(year: 2023, month: 9, day: 30),
  end_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory",
  [
    #nb_todo(date: datetime(year: 2023, month: 8, day: 5), schedule: "")[
      + Build the chassis of one side of the drivetrain (Everyone)
    ]

    #grid(
      columns: (1fr, 1fr),
      rows: auto,
      gutter: 50pt,
      
      [
        #nb_heading([2023/9/30], level: 1)
        - Gathered c-channel
          - A pair of 6 holes C-channel
          - 7 holes C-channel
          - 8 holes C-channel serving as the holder for the catapult
        - Created and slipped gears. Attached with a screw joint 
          - We attached two slip [Teeth] gears to help with consistency
          - The gear ratio is [TBD]
        - Gathered 0.5” stand-offs to box the catapult
        - Gathered several long stand-offs and collars and created the catapult arm
      ],
      [#image("./9.30.png", height: 40%)],
    
      [#image("./10.06.png", height: 40%)],
      [
        #nb_heading([2023/10/6], level: 1)
        - Replaced inner stand-offs with spacers for better boxing
        - Attached crossbar on the front of the bot
          - Connect a 5 long 5 C-channel onto the crossbar
          - Attach the catapult onto it
        - Created a stopper for the catapult
        - Problem: Lack of tension on the front of catapult
        - Solution: Double twisting the rubber bands allowed for more secure contact
      ],

      [
        #nb_heading([2023/10/7], level: 1)
        - Added the motor cartridges to the intake
        - Attached triangle braces to help brace the catapult 
        - Problem: Similar to the problem last meeting, a lack of tension on the rubberband connecting to the catapult arm.
        - Solution: Add a stand-off perpendicular to the arm. This will serve as our new stopper and add rubber bands. 

        #nb_admonition(type: "note")[We are building the wings simultaneously with the catapult.]
      ],
      [#image("./10.07.png", height: 45%)],
    )
  ]
)

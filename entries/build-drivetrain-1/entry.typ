#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 8, day: 5),
  end_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ishika, Eric",
  [
    #nb_todo(date: datetime(year: 2023, month: 8, day: 5), schedule: "")[
      + Build the chassis of one side of the drivetrain (Everyone)
    ]

    #grid(
      columns: (1fr, 1fr),
      rows: 7,
      gutter: 50pt,
      
      [
        #nb_heading([2023/8/5], level: 1)
        - Gathered and cut 25 holes C-channel
        - Examined spacing of wheel to gear distance
        - Examined spacing of wheels and gear
      ],
      [#image("./8.5 build.png", width: auto)],
    
      [#image("./8.11 build drive.png", width: auto)],
      [
        #nb_heading([2023/8/11], level: 1)
        - Gathered 35 holes long 3C-channel
        - Gathered 30 hole long 2C-channel
          - Construct them together with ½ spacer
        - Constructed the bearing blocks
          - 3C: Bearing block alternating every 7 holes on the middle
          - 2C: Bearing block alternating every 5 holes on the bottom
      ],

      [
        #nb_heading([2023/8/18], level: 1)
        - Updated the framework of the drivetrain and rotated all the screws from facing inwards to outwards
        - Connected four wheels to their designated gear
        - Adjusted the spacing for the bearing blocks.

        #nb_admonition(type:"note")[We also discussed some ideas regarding the forearm for the elevation bar task. We did not come to much of a conclusion regarding the forearm.]
      ],
      [#image("./8.18.png", width: auto)],

      [
        #image("./8.25.png", width: 65%)
        #image("./8.25 2.png", width: 75%)
      ],    
      [
        #nb_heading([2023/8/25], level: 1)

        - Changed the length of the c channel going between the sides of the drivetrain 
        - Started to space the axles properly

        #nb_admonition(type: "note")[The newer members had a coding lesson with some of the seniors about classes, and header files.]
      ],

      [
        #nb_heading([2023/8/26], level: 1)

        - Worked on fixing the spacing of the two sides of the drivetrain.
        - Flipped the direction of the screws on the gears.

        #nb_admonition(type: "note")[Organization was a significant problem that we faced today, so we took time to organize our parts by size.]
      ],    
      [
        #image("./8.26.png", width: 100%)
      ],

      [
        #image("./9.8 1.png", width: 100%)

      ],    
      [
        #nb_heading([2023/9/8], level: 1)
        - Attached back cross-bar
        - Attached brain
        - Created front supports for the drive chassis
      ],

      [
        #nb_heading([2023/9/15], level: 1)
        - Attached back cross-bar
        - Attached brain
        - Created front supports for the drive chassis
      ],    
      [
        #image("./9.15.jpg", height: 25%)
      ],
    )
  ]
)

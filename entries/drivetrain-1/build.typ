#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 8, day: 5),
  end_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ishika, Eric, Rory",
)

#nb_todo(date: datetime(year: 2023, month: 8, day: 5), schedule: "")[
  + Build the chassis of one side of the drivetrain (Everyone)
]

#grid(
  columns: (1fr, 1fr),
  rows: 7,
  gutter: 50pt,
  
  [
    = 2023/8/5
    - Gathered and cut 25 holes C-channel
    - Examined spacing of wheel to gear distance
    - Examined spacing of wheels and gear
  ],
  [#image("./build/8.5 build.png", width: auto)],

  [#image("./build/8.11 build drive.png", width: auto)],
  [
    = 2023/8/11
    - Gathered 35 holes long 3C-channel
    - Gathered 30 hole long 2C-channel
      - Construct them together with ½ spacer
    - Constructed the bearing blocks
      - 3C: Bearing block alternating every 7 holes on the middle
      - 2C: Bearing block alternating every 5 holes on the bottom
  ],

  [
    = 2023/8/18
    - Updated the framework of the drivetrain and rotated all the screws from facing inwards to outwards
    - Connected four wheels to their designated gear
    - Adjusted the spacing for the bearing blocks.

    #nb_admonition(type:"note")[We also discussed some ideas regarding the forearm for the elevation bar task. We did not come to much of a conclusion regarding the forearm.]
  ],
  [#image("./build/8.18.png", width: auto)],

  [
    #image("./build/8.25.png", width: 65%)
    #image("./build/8.25 2.png", width: 75%)
  ],    
  [
    = 2023/8/25

    - Changed the length of the c channel going between the sides of the drivetrain 
    - Started to space the axles properly

    #nb_admonition(type: "note")[The newer members had a coding lesson with some of the seniors about classes, and header files.]
  ],

  [
    = 2023/8/26

    - Worked on fixing the spacing of the two sides of the drivetrain.
    - Flipped the direction of the screws on the gears.

    #nb_admonition(type: "note")[Organization was a significant problem that we faced today, so we took time to organize our parts by size.]
  ],    
  [
    #image("./build/8.26.png", width: 100%)
  ],

  [
    #image("./build/9.8 1.png", width: 100%)

  ],    
  [
    = 2023/9/8
    - Attached back cross-bar
    - Attached brain
    - Created front supports for the drive chassis
  ],

  [
    = 2023/9/15
    - Attached back cross-bar
    - Attached brain
    - Created front supports for the drive chassis
  ],    
  [
    #image("./build/9.15.jpg", height: 25%)
  ],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 8, day: 5),
  end_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ajibola, Ishika, Eric, Rory",
)

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  [
    #gridx(
      columns: 2,
      rows: auto,

      [
        = 2023/8/5
        Today was the first day of assembly. The drivetrain has already been fully planned out through CAD. Since it is the first day and we had three new members, we wanted to take it quite slow so we could prepare our new members for this process early on. Today, we planned on building the left side of the drivetrain, starting with the gear spacing found on sheet 5 of the Drivetrain CAD.
      ],
      cellx(align: horizon)[#image("./build/8.5 build.png", height: auto)],
      cellx(colspan: 2)[
        == Build Steps
        - Gathered and cut 25 holes C-channel
          - *Reason:* We want to make this drive-train as short as possible. Having a longer drivetrain means less agile in tight spaces.
        - Examined spacing of wheel to gear distance
        - Examined spacing of wheels and gears
      ],
    )
  ],

  [
    #gridx(
      columns: (1fr, 1fr),
      rows: auto,
      
      cellx(colspan: 2)[
        = 2023/8/11
        #nb_todo(date: datetime(year: 2023, month: 8, day: 11))[
          + Create the left drivetrain chassis (Eric and Rory)
          + Attach the bearing blocks (Eric and Rory)
          + Attach the gears and wheels (Ajibola and Ishika)
        ]
      ],
      cellx(align: horizon)[#image("./build/8.11 build drive.png", height: 80%)],
      [
        Now that the new freshmen have an better idea of how to build a drivetrain, we wanted to start building the chassis for the left side. Building the chassis first is better because it help create the box structure for the wheels and gears.

        == Build Steps
        - Gathered 2 35 hole long 3C-channel
          - *Reason:* Due to the awkward spacing from the new gear ratio, creating it on 3C-channel offered more space.
        - Gathered 2 30 hole long 2C-channel
          - Construct them together with 1/2 spacers
        - Constructed the bearing blocks
          - 3C: Bearing block alternating every 7 holes on the middle
          - 2C: Bearing block alternating every 5 holes on the bottom
      ],
    )
  ],

  [
    #gridx(
      columns: 2,
      rows: auto,

      cellx(colspan: 2)[
        = 2023/8/18
        #nb_todo(date: datetime(year: 2023, month: 8, day: 18))[
          + Finish attaching the gears on the drivetrain (Eric and Rory)
          + Finish attaching the wheels on the drivetrain (Ajibola and Ishika)
        ]
      ],
      [
        Unfortunately, due to time constraints, we couldn't finish creating the the left side. We planned to follow the drive configuration on sheet 4 of the Drivetrain CAD to get the exact spacing that we needed. This will ensure that the left side aligns precisely with the design specifications, maintaining consistency and accuracy in the overall structure. Overall, we wanted to spend this meeting finishing what we previously left off on last meeting.

        == Build Steps
        - Reconstructed the framework of the drivetrain and rotated all the screws from facing inwards to outwards
        - Connected four wheels to their designated gear
        - Adjusted the spacing for the bearing blocks.
      ],
      [#image("./build/8.18.png", width: auto)],
      cellx(colspan: 2)[
        #nb_admonition(type:"note")[We scrapped the plan to use 3-C because it was poorly planned out and went against the initial CAD design.]
      ],
    )
  ],
  
  [
    #gridx(
      columns: 2,
      rows: (auto, 25em, auto),

      cellx(colspan: 2)[
        = 2023/8/25
        #nb_todo(date: datetime(year: 2023, month: 8, day: 25))[
            + Attach the motors (Rory)
            + Troubleshoot any friction problems (Ajibola)
            + Troubleshoot any instances of bending (Eric)
        ]
      ],

      box(height: 15em)[
        #image("./build/8.25.png")
        #image("./build/8.25 2.png")
      ],
      [
        Now that the drivetrain assembly is complete, our focus shifted to attaching the motors and troubleshooting potential issues during this meeting. Notably, we identified a challenge from uneven friction on either side of the drivetrain. This imbalance poses risks such as erratic movement and difficulties in maintaining a straight trajectory. Additionally, the observation that incorrect spacing for any of the axles can lead to the bending of the c-channel.

        == Build Steps
        - Changed the length of the c-channel going between the sides of the drivetrain
          - *Reason:* We need space between the gears so we can attach c-channels across the inner chassis for bracing in the future.
        - Started to space the axles properly
      ],

      cellx(colspan: 2)[
        Fortunately, we didn't ran into any major issues with our drivetrain which means this side of the drivetrain was a success. However, there was a small spacing error that we found towards the end of the meeting

        #nb_admonition(type: "note")[Ishika was not assigned any building tasks so she could attend a programming lesson with some of the seniors about classes and header files.]
      ]
    )
  ],

  [
    #gridx(
      columns: 2,
      rows: auto,

      cellx(colspan: 2)[
        = 2023/8/26
        #nb_todo(date: datetime(year: 2023, month: 8, day: 26))[
            + Fix the spacing problems with the drivetrain (Eric and Rory)
            + Start building the chassis of the right side drivetrain chassis (Ajibola and Ishika)
        ]
      ],

      [
        As we near the completion of the left side drivetrain assembly, our primary concern began to center around the potential problems associated with improper spacing. Despite the concern, the team remains optimistic, considering this challenge as manageable with careful oversight. In an effort to maintain momentum, we are eager to begin working on the right side of the drivetrain. Anticipating increased efficiency as our newer members become more adept with the building process, we are optimistic about the accelerated progress and the continued refinement of our robotic system.

      ],
      [
        #figure(
          image("./build/8.26.png", width: 100%),
          caption: "The left side of the drivetrain flipped upside down"
        )
      ],
      cellx(colspan: 2)[
        == Build Steps
        - Worked on fixing the spacing of the two sides of the drivetrain.
          - #text(red)[Problem:] One of the joint spacings was wrong
          - #text(green)[Solution:]
            - We took apart one side of the drivetrain to examine the issue
            - We found that one of the spacers was 1/8 too long
        - Flipped the direction of the screws on the gears.
        
        Organization was a significant problem that we faced today, so we took time to organize our parts by size.
      ]
    )
  ],

  [
    #gridx(
      columns: 2,
      rows: auto,
      
      cellx(colspan: 2)[
        = 2023/9/8
        #nb_todo(date: datetime(year: 2023, month: 9, day: 8))[
            + Attach the right side chassis together (Rory)
            + Attach the gears and wheels together (Eric)
            + Create the bracing (Ajibola and Ishika)
        ]
      ],
      [
        #image("./build/9.8 1.png")
      ],    
      [
        Our goal is to complete the drivetrain either today or by tomorrow. The anticipation of finishing the assembly is driven by the understanding that the sooner we complete it, the quicker we can move on to the crucial phase of testing. Testing the drivetrain is pivotal for assessing its functionality, identifying potential issues, and making necessary adjustments to optimize performance.
      ],
      cellx(colspan: 2)[
        == Build Steps
        - Gather the necessary length c-channel for the right side of the drivetrain
        - Assemble the chassis with correct gear spacing according to sheet 4 of the drivetrain CAD
        - Add the bearing blocks
        - Add a crossbar to connect the two sides of the drivetrain
        - Attach bottom c-channels on the bottom of the chassis
          - *Reason:* This helps with bracing because it prevents the two sides of the drivetrain from bending

        #nb_admonition(type: "note")[The club is lacking omni wheels and we had to work with our limited resources. As a result, one of the wheels is missing a roller.]
      ],
    )
  ],
  
  [
    #gridx(
      columns: 2,
      rows: auto,
      
      cellx(colspan: 2)[
        = 2023/9/15
        #nb_todo(date: datetime(year: 2023, month: 9, day: 15))[
          + Attach both sides of the drivetrain to eachother (Eric)
          + Mount the brain and radio (Rory)
          + Program a versatile driver control system for the drivetrain. (Ajibola and Ishika)
          + Test the speed output of the drivetrain (Everyone)
        ]
      ],

      [
        Now that both sides of the drivetrain are completed, we need to do some testing. However, we needed to attach the radio and brain first. While  doing this, we used the opportunity to teach the new members about how electronics in VEX Robotics work. The finished product is the result of sheet 2 of the Drivetrain CAD.

        == Build Steps
        - Attached back cross-bar
        - Attached brain
        - Created front supports for the drive chassis
        - Replaced the back bracing with stand-offs
          - *Reason:* We want the back of the robot to be fairly light. We think that this will help with creating sleds in the future because we can attach them to these stand-offs. 
      ],    
      [
        #image("./build/9.15.jpg")
      ],
    )
  ],
)
#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 8, day: 5),
  end_date: datetime(year: 2023, month: 8, day: 26),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
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
        #nb_todo(
          date: datetime(year: 2023, month: 8, day: 11),
          monthly-schedule: "On",
          yearly-schedule: "On",
          (
            (true, "Create the left drivetrain chassis (Eric and Rory)"),
            (true, "Attach the bearing blocks (Eric and Rory)"),
            (true, "Attach the gears and wheels (Ajibola and Ishika)"),
          )
        )
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
        #nb_todo(
          date: datetime(year: 2023, month: 8, day: 18),
          monthly-schedule: "On",
          yearly-schedule: "On",
          (
            (true, "Finish attaching the gears on the drivetrain (Eric and Rory)"),
            (true, "Finish attaching the wheels on the drivetrain (Ajibola and Ishika)"),
          )
        )
      ],
      [
        Unfortunately, due to time constraints, we could not finish creating the the left side. We planned to follow the drive configuration on sheet 4 of the Drivetrain CAD to get the exact spacing that we needed. This will ensure that the left side aligns precisely with the design specifications, maintaining consistency and accuracy in the overall structure. Overall, we wanted to spend this meeting finishing what we previously left off on last meeting.

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
        #nb_todo(
          date: datetime(year: 2023, month: 8, day: 25),
          monthly-schedule: "On",
          yearly-schedule: "On",
          (
            (true, "Attach the motors (Rory)"),
            (true, "Troubleshoot any friction problems (Ajibola)"),
            (true, "Troubleshoot any instances of bending (Eric)"),
          )
        )
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
        Fortunately, we did not run into any major issues with our drivetrain which means this side of the drivetrain was a success. However, there was a small spacing error that we found towards the end of the meeting.

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
        #nb_todo(
          date: datetime(year: 2023, month: 8, day: 26),
          monthly-schedule: "Behind",
          yearly-schedule: "On",
          (
            (true, "Fix the spacing problems with the drivetrain (Eric and Rory)"),
            (true, "Start building the chassis of the right side drivetrain chassis (Ajibola and Ishika)"),
          )
        )
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
)
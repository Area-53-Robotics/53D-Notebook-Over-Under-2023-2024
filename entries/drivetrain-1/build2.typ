#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #1",
  type: "build",
  start_date: datetime(year: 2023, month: 9, day: 8),
  end_date: datetime(year: 2023, month: 9, day: 15),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ishika",
  witnessed: "Ajibola",
)

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,
  
  [
    #gridx(
      columns: 2,
      rows: auto,
      
      cellx(colspan: 2)[
        = 2023/9/8
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
        #nb_todo(
          date: datetime(year: 2023, month: 9, day: 15),
          monthly-schedule: "Behind",
          yearly-schedule: "On",
          (
            (true, "Attach both sides of the drivetrain to eachother (Eric)"),
            (true, "Mount the brain and radio (Rory)"),
            (true, "Program a versatile driver control system for the drivetrain. (Ajibola and Ishika)"),
            (true, "Test the speed output of the drivetrain (Everyone)"),
            (false, "Identify the design constraints and goals for the outtake. (Everyone)"),
          )
        )
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
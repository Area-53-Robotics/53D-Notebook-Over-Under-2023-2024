#import "/template/template.typ": *

#show: create_entry.with(
  title: "Intake #1",
  type: "build",
  start_date: datetime(year: 2023, month: 10, day: 27),
  end_date: datetime(year: 2023, month: 10, day: 28),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Rory",
  witnessed: "Eric",
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
        = 2023/10/27
        #nb_todo(
          date: datetime(year: 2023, month: 10, day: 27),
          monthly-schedule: "On",
          yearly-schedule: "On",
          (
            (true, "Create the support where the intake will rest and pivot on (Makhi)"),
            (true, "Attach the axle and flex wheels (Eric & Rory)"),
            (true, "Attach the rubber bands onto the sprocket (Ajibola & Ishika)"),
            (false, "Program the intake to be usable for driver control (Ajibola & Ishika)"),
          )
        )
      ],
      [
        Today we planned on constructing the flex wheel axle. Additionally, attention was directed towards the construction of the support structure, an essential element that provides stability.

        == Build Steps
        - Attached two 3” stand-oofs on the inner side of the chassis. 
          - Attached spacers and collars to level it higher
        - Added plates that serve as the intake base
        - Added the bearing
          - Attached the axle and sprockets
        - #text(red)[Problem:] The rubber bands did not have enough tension to stay taut
        - #text(green)[Solution:] Add flex wheels on the inside, providing more grip onto the triballs
      ],
      [#image("./build/10-27.png")],
    )
  ],
  
  [
    #gridx(
      columns: 2,
      rows: auto,

      cellx(colspan: 2)[
        = 2023/10/28
        #nb_todo(
          date: datetime(year: 2023, month: 10, day: 6),
          monthly-schedule: "On",
          yearly-schedule: "On",
          (
            (true, "Re-brace the intake (Makhi, Eric, and Rory)"),
            (false, "Program the intake to be usable for driver control (Ajibola & Ishika)"),
            (false, "Test the intake (Everyone)"),
          )
        )
      ],
      [#image("./build/10-28.png")],
      [
        With the intake near completion, we began adding final supports while preparing to test the intake. With the Dulaney tournament upcoming, we had to build quickly today.

        == Build Steps
        - Replace the sprockets to a bigger one
          - *Reason:* We noticed that the sprockets on the inside were really small. This made the rubberbands really compact to each other. 
        - Added spacers on the inside for boxing 
        - Attached pillow bearings on the middle of the bot 
          - Attached the intake to the middle pillow bearings

        - #text(red)[Problem:] Lack of tension on the front of catapult
        - #text(green)[Solution:] Double twisting the rubber bands allowed for more secure contact
      ],
    )
  ],
)
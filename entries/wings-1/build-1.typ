#import "/template/template.typ": *

#show: create_entry.with(
  title: "Wings #1",
  type: "build",
  start_date: datetime(year: 2023, month: 9, day: 30),
  end_date: datetime(year: 2023, month: 10, day: 6),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)

#nb_todo(
  date: datetime(year: 2023, month: 9, day: 30),
  (
    (true, "Attach the c-channel to a hinge on the drivetrain (Ajibola, Ishika, & Makhi)"),
    (true, "Attach the pneumatic piston (Eric & Rory)"),
  )
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
        = 2023/9/30
        Using the CAD model of the wings we designed last meeting, we got to work constructing them. The CAD made it easy for the newer builders to construct the wings quickly. These wings were built alongside with the catapult as members were assigned roles for different subsystems. 

        == Build Steps
        - Placed motor clip on the right side chassis
        - Attached canister perpendicular to the chassis
          - *Reason:* we found that attaching it perpendicular allow for more optimal spacing 
        - Gathered 2 single-action pistons
        - Attached the end of the piston to a spacer tower
        - Angled the piston to 30 degrees
          - *Reason:* This will help with mechanical advantage. The more further away from the pivot point, the easier it it is to push
        - Rubber band the piston to a standoff on the side the chassis for tension
          - *Reason:* The wings had a hard time remaining closed since the wing bounce off the side of the drivetrain. 
      ],
      [#image("./build-1/9-30.jpg")],
    )
  ],
  
  [
    #gridx(
      columns: 2,
      rows: auto,

      cellx(colspan: 2)[
        = 2023/10/6
        #nb_todo(
          date: datetime(year: 2023, month: 10, day: 6),
          (
            (true, "Complete the construction of the right wing (Makhi, Eric, and Rory)"),
            (true, "Box both of the wings (Makhi, Eric, and Rory)"),
            (false, "Program the wings (Ajibola and Ishika)"),
            (false, "Test the wings (Everyone)"),
          )
        )
      ],
      [#image("./build-1/10-6.jpg")],
      [
        With the majority of the wings construction finished, we wanted to add boxing to the wings to ensure that everything would work well. Boxing is a construction technique that increases the stability of the joint or mechanism. We referenced our CAD of the wings for a better understanding of how the boxing of the wings should look like. It is important to properly box our wings because they are only supported one one end.

        == Build Steps
        - Gathered and cut a 20 hole long 2 c-channel
          - They will serve as the base for the right wing
        - Cut a 3” x 10” long lexan sheet
          - Attached them onto the c-channel base of both wings
        - Attached the piston to the c-channel bases
        - Boxed the wings together for better support 
        - #text(red)[Problem:] The wings are a bit inconsistent and not as responsive as we want. 
        - #text(green)[Possible Solutions:]
          - Screen the wings for any sources of friction
          - Attempt to move the pneumatic piston further away from the pivot
      ],
    )
    #nb_admonition(type: "note")[
      The wings were still a bit inconsistent regardless of the solutions we tried. We will need to evaluate how much of a problem this will be in our Test phase, and appropriately spend more time troubleshooting them in the future or rebuilding them.
    ]
  ],
)
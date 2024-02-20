#import "/template/entries.typ": *

#show: create_appendix_entry.with(
  title: "Pre-Match Checklist",
  updated: datetime(year: 2024, month: 2, day: 18)
)

#set list(
  marker: image("/template/tabler-icons/square.svg", height: 1em),
  tight: false
)

#gridx(
  columns: 2,
  inset: (right: 20pt),

  [
    = Ports (Devices Menu)
    - Left Motors
    - Right Motors
    - Intake Motor
    - Kicker/Elevation Motor
    - Inertial Sensor
    - Optical Sensor
  ],
  [
    = Electronics
    - Radio
    - Charged Battery
    - Backup Battery
    - Pressure Gun/Filled Air Tank
  ]
)

= Materials
- Auton Alignment Tool

= Drive Team
#gridx(
  columns: 3,
  [
    == Makhi
    - Controller
    - Goggles
  ],
  [
    == Ajibola
    - Gloves
    - Goggles
  ],
  [
    == Jin
    - Gloves
    - Goggles
  ],
)

= Autonomous
- Verify correct autonomous selection
- Position autonomous robot

= Drivetrain
- Clear wires from drivetrain vicinity
- Check for dead motors
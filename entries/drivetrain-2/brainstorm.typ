#import "/template/template.typ": *

#show: create_entry.with(
  title: "Drivetrain #2 - RPM",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 12, day: 27),
  attendance: "Ajibola, Jin, Ishika, Makhi, Rory, Eric",
  designed: "Jin",
  witnessed: "Ajibola",
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 27),
  monthly-schedule: "Off",
  yearly-schedule: "Behind",
  (
    (true, "Brainstorm possible configurations for the drivetrain. (Everyone)"),
    (true, "Select the best drivetrain configuration using a decision matrix. (Everyone)"),
  )
)

After the Capital Beltway Challenge tournament, we realized that it would be best if we started rebuilding our robot ASAP to get ready for the competition heavy January and February months. We will begin this process with the rebuilding of the drivetrain. The aspects, design goals, and design constraints of the drivetrain remain the same from when we identified them in our #past_nb_entry_reference(date: datetime(year: 2023, month: 7, day: 15), type: "identify"). However, for our second robot iteration, we decided to keep the tank drive configuration and hybrid wheel configuration, and instead debate what RPM to use and how to adjust the gear ratios based on that.

#nb_pro_con(
  name: "600 RPM",
  image: image("./brainstorm/2.75 600 RPM.excalidraw.svg"),
  pros: [
    - *Speed* - Incredibly fast
    - *Center of Gravity* - Tends to have a lower center of gravity and, in turn, greater stability 
  ],
  cons: [
    - *Length* - The 1:1 gear ratio will result in a longer drivetrain
    - *Motors* - The motor will overheat faster due to more stress
  ],
  notes: [
    - The speed of the drivetrain is considered too fast for VRC standards
  ],
)

#nb_pro_con(
  name: "450 RPM",
  image: image("./brainstorm/2.75 450 RPM.excalidraw.svg"),
  pros: [
    - *Compact* - With the use of smaller gears to achieve the gear ratio, it is very compact and small
    - *Torque* - Sacrifices RPM for more torque and less skidding 
  ],
  cons: [
    - *Speed* - It has less speed than the 600 RPM drivetrain
  ],
  notes: [
    - The motors are very close together, but we may be able to fit a battery inbetween them to save space
  ],
)

#colbreak()

#nb_pro_con(
  name: "360 RPM",
  image: image("./brainstorm/3.25 360 RPM.excalidraw.svg"),
  pros: [
    - *Middle Barrier Climbing* - Since the wheels are bigger than 2.75 wheels, it will have an easier time getting over the middle barrier
  ],
  cons: [
    - *Center of Gravity* - Having bigger wheels will result in having a higher center of gravity and lower stability
  ],
  notes: [
    - Has the same output speed in  in/s as the 450 RPM drivetrain
    - Signifcally less compact than 450 RPM
  ],
)
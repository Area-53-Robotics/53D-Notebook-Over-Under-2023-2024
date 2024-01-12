#import "/template/template.typ": *

#show: create_entry.with(
  title: "Area 53 Scrimmage",
  type: "competition",
  start_date: datetime(year: 2023, month: 10, day: 21),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory"
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 1),
  (
    (true, ""),
  )
)

= Competition Goals

= Matches
#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("53F", "53C"), score: 55),
  blue_alliance: (teams: ("53D", "53E"), score: 46),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    53E shoots from our match load zone into our offensive zone, and we score the shot triballs
  ],
  auton_notes: [
    - Nobody had a working auton
  ],
  match_notes: [
    - The broken reverse function triggered mid round, making us incapable of driving correctly for the rest of the round
    - We went over the barrier without communicating with 53E, double zoning might have hand an impact
    - Our strategy failed because 53E was not able to shoot over the barrier allowing F to get scores
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("53D", "Sub1"), score: 99),
  blue_alliance: (teams: ("Sub2", "Sub3"), score: 1),
  won: true,
  auton: "Tie",
  awp: true,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "",
  )
)
#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("53D", "Sub1"), score: 99),
  blue_alliance: (teams: ("Sub2", "Sub3"), score: 1),
  won: true,
  auton: "Tie",
  awp: true,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: "",
    satisfactory: "",
    underperformed: "",
  )
)

= Scrimmage Reflection
== Drivetrain
Our drivetrain performed admirably throughout the scrimmage, showcasing its agility and maneuverability on the field. The robot navigated swiftly, allowing us to strategically position ourselves.

== Low Catapult
Our Catapult struggled to shoot over to the other side. This is bad because we can't fire triballs to the other side for our alliance partner. We noticed that it didn't have enough torque to sent the triballs to where we want them to be.

== Wings
Didn't work as intended. They aren't as responsive as we liked them to be and struggled to extend.

== Rubberband Intake
It successfully executed the ejection or placement of triballs as intended. This reliability in the outtake process played a crucial role in our team's ability to execute strategic moves and contribute points to the overall score.
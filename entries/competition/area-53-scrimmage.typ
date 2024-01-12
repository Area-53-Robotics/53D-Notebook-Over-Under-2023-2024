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
  match: "Q3",
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
  match: "Q4",
  red_alliance: (teams: ("53B", "3700AHC"), score: 47),
  blue_alliance: (teams: ("53D", "53E"), score: 84),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [We used the same strategy from the previous match. We allowed 53E to shoot triballs while we scored the shot triballs. It worked decently well],
  auton_notes: [Nobody had a working auton],
  match_notes: [
  - 53E did a good job at rapid firing triballs
  - 53B attempted to block 53E but failed to get under the barrier
  - We played defense against AHC, not allowing them from scoring much triballs
  - Wings didn't deploy
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)
#nb_tournament_match(
  match: "Q5",
  red_alliance: (teams: ("53D", "53C"), score: 47),
  blue_alliance: (teams: ("53B", "3700AHC"), score: 56),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    Our strategy was to have us on the non-goal side pushing triballs onto the goal side. 53C will delieve the triballs to our goal.
],
  auton_notes: [Nobody had a working auton],
  match_notes: [
- Both of our bots could not shoot
- In the last 45 - 15 seconds one of our wires got stuck in the drivetrain, disabling us

  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Catapult",
    underperformed: "Wings, Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q6",
  red_alliance: (teams: ("53A", "53F"), score: 33),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 32),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    Our strategy was to have us in the non offensive zone pushing triballs over and AHC scoring
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
    - During the match we took advantage of the many times the other team was double zoned to de score a lot of their triballs
    - Our teammate wasn’t moving most of the round and we still almost won by descoring 

  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Semi-Finals",
  red_alliance: (teams: ("53E", "53B"), score: 38),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 58),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [
    We wanted to do the same strategy as last round. We will be in the non offensive zone, pushing triballs to our alliance
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
  - 53E's battery fell out mid match 
  - Makhi did more pinning than would normally be allowed

  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Finals",
  red_alliance: (teams: ("53F", "53A"), score: 35),
  blue_alliance: (teams: ("53D", "3700AHC"), score: 29),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    We did the same strategy as last round. Push triballs to our alliance partner as having them score for us
  ],
  auton_notes: [
    Nobody had a working auton
  ],
  match_notes: [
  - Our battery died midway through the match
  - 3700 AHC struggled to scored as 53F played defense heavily on them

  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Drivetrain, Catapult",
    underperformed: "Wings",
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
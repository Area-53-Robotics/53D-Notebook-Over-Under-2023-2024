#import "/template/template.typ": *

#show: create_entry.with(
  title: "Dulaney Royal Rumble",
  type: "competition",
  start_date: datetime(year: 2023, month: 11, day: 4),
  attendance: "Ajibola, Ishika, Makhi, Rory"
)

= Competition Goals

= Matches
#nb_tournament_match(
  match: "Q8",
  red_alliance: (teams: ("53B", "53C"), score: 84),
  blue_alliance: (teams: ("53D", "768A"), score: 27),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [
    Teammate pushes triballs into our offensive zone, and then we push into goal],
  auton_notes: [
  - No one had an auton 
  ],
  match_notes: [
  - VEXnet issues, we weren't able to move
  - Our teammate just had a drivetrain, while we just had a drivetrain & intake

  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Catapult",
    underperformed: "Wings, Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q12",
  red_alliance: (teams: ("53D", "98719C"), score: 83),
  blue_alliance: (teams: ("1727Y ", "23098A"), score: 41),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [we push triballs onto our offensive zone so that our teammates can score],
  auton_notes: [- our teammate had a simple right-side auton that pushed a triball into the goal],
  match_notes: [
    - Our cata and wings were disabled for this match, leaving us with an intake, while our teammates had a claw bot
- During the match, the rex team had a cata that wasn't able to shoot over the barrier, so they kept shooting triballs into our offensive zone. We took advantage of this to push more triballs into our goal, and score more points
- Near the end of the match, our opponents double-zoned, so we took advantage of that and our low cata design to descore most of their triballs

  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "",
    underperformed: "Catapult, Wings",
  )
)

#nb_tournament_match(
  match: "Q21",
  red_alliance: (teams: ("1727B ", "18391A"), score: 94),
  blue_alliance: (teams: ("53D ", "1893C"), score: 75),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [Our teammate had a good cataplut and intake, so our strategy was for our teammate to shoot onto the offensive side and for us to score
],
  auton_notes: [Nobody had an auton 
],
  match_notes: [
    - Our opponents had a really good flywheel, so they were able to score a lot of points really quickly
- We managed to mitigate most of this advantage by descoring most of their triballs near in the last 30 seconds of the match while red double-zoned
- for some reason they didn't stop double zoning, so we took advantage and descored more
- They won because of elevation, otherwise we would have won by 1 point
  ],
  subsystems: (
    overperformed: "Drivetrain, intake",
    satisfactory: "Catapult",
    underperformed: "Wings",
  )
)

#nb_tournament_match(
  match: "Q30",
  red_alliance: (teams: ("53A ", "99009A "), score: 43),
  blue_alliance: (teams: ("53D ", "1727D"), score: 26),
  won: false,
  auton: "Red",
  awp: true,
  strategy: [We stay on offensive side and push triballs in that they push over the barrier
],
  auton_notes: [- 53A's teammates won them the AWP & Bonus
],
  match_notes: [
    - Our teammates cata was not working, and only our wings & intake were working
- There was one time in the last 45 seconds that we were able to descore, but we only descored ~3 triballs out of 7
- We lost because 53A cycled faster than we could work with our teammate to score

  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: "Wings, Intake",
    underperformed: "Catapult",
  )
)

#nb_tournament_match(
  match: "Q39",
  red_alliance: (teams: ("53D ", "23098B"), score: 66),
  blue_alliance: (teams: ("7135D ", "1893X"), score: 43),
  won: true,
  auton: "Tie",
  awp: false,
  strategy: [We stay on defense to descore & push triballs over the barrier, while they stay on offensive side and score those triballs
],
  auton_notes: [- Nobody had an working auton],
  match_notes: [
    - Our ally was a tank tread pushbot
- In the last 25 seconds of the match, the other team double zoned, and we took the opportunity to descore ~10 triballs
- This was a game changing move, and it won us the game
- The opponents vertical flywheel was chaotic, shooting triballs all over their offensive zone. However, a lot of them ended up in the loading stations, so they didn't count for scoring
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult, Wings",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q47",
  red_alliance: (teams: ("5588H", "19391C"), score: 63),
  blue_alliance: (teams: ("53D  ", "21146S "), score: 97),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [Our strategy was to have us in the offensive zone while our teammate used their cata to shoot triballs into our side
],
  auton_notes: [- Nobody got AWP
- We got the auton bonus thanks to our teammate pushing a triball over the barrier
],
  match_notes: [
- Our wings were not working for this match, and our intake got folded inwards instead of outwards, so we were just a push bot
- The other teams' bots were too big to descore, so we took advantage of that to double zone when we needed to
- The opponents managed to get elevation, but we won because we had more triballs in the goal, and it was enough to outweigh their elevation
- Even while reduced to a pushbot, we pushed multiple triballs at a time into the goal thanks to how fast our teammate was scoring


  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: "Catapult",
    underperformed: "Intake, Wings",
  )
)

#nb_tournament_match(
  match: "Round 16
6-1",
  red_alliance: (teams: ("23382A", "19391B"), score: 99),
  blue_alliance: (teams: ("53D", "98719C"), score: 31),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [We start on defensive side while our teammates start on offensive side so they can do their auton, then we switch sides so we can utilize any opportunities to descore
],
  auton_notes: [- Nobody had an working auton],
  match_notes: [
 - We had wings and an intake, and our teammate had slow rectangle prongs that kinda looked like dragonfly wings
- The other team never double zoned, foiling our plan
- The cata bot consistently shot triballs over the barrier and the good intake bot continuously put them in their goal
- That allowed them to cycle way faster than our team, since we were both basically push bots, winning them the match
  ],
  subsystems: (
    overperformed: "Drivetrain, Intake",
    satisfactory: "Catapult, Wings",
    underperformed: "",
  )
)

= Subsystem Reflection
~== Drivetrain
=== Yellow
- The robot's drive-train exhibited a commendable level of performance, allowing for effective maneuverability on the field. Despite its overall decent functionality, the team encountered some challenges that impacted the drive-train's reliability during the competition. During the start of the match, the motors had a tendency to break, affecting the responsiveness of the drivetrain.

== Catapult
=== Red
- The robot's catapult faced notable challenges and performed below expectations, encountering several issues that impacted its functionality. The specific problems faced by the catapult, such as misfires, misalignments, or power inconsistencies, contributed to its overall subpar performance. Specifically, the catapult couldn't consistency shoot triballs over the middle bar

== Intake
=== Yellow
- The robot's intake system faced significant challenges and struggled to meet expectations, encountering various issues that hindered its performance. Sometimes, the intake would fall backwards during a match, ultimately making it unusable. 

== Wings
=== Red
- Didn't work. The wings had a difficult time getting extended. 

= Individual reflection
== Ajibola 
- I'm overall a little disappointed with the results of the tournament, but it was a good testing insight. The performance of our catapult and intake systems fell short of our expectations. The catapult, in particular, struggled with misfires and power inconsistencies, hindering our ability to score effectively. The intake system encountered problems with capturing triballs and occasional jamming
== Ishika
- I'm really glad for this as it was a good opportunity to learn. After watching some other teams' auton, it sparked my curiosity. I hope to be able to create an auton before the next tournament. I noticed just how crucial winning AWP can be. 
== Makhi
- I'm really impressed with 1727B's climbing mechanism. They used a pneumatic lock that allowed them to cling onto the bar and climb. I have never seen that before and I am inspired to create something similar to that on our bot. I also learned just how important climbing is because we would have won if they never climbed. 
== Eric
- The drive-train demonstrated commendable performance, providing the agility and precision needed for maneuvering on the competition field. However, challenges emerged with the catapult. I really like our capacity of descoring but I noticed that some teams had much higher catapults that offered longer trajectories. 
== Rory
- The wings didn't seem to work like how I would want them to. I think the weight of the wings makes it too heavy for them to be pushed out. I want to make it lighter so the pneumatics can push them out easier.  

#import "/template/template.typ": *

#show: create_entry.with(
  title: "Hereford Stampede Competition",
  type: "competition",
  start_date: datetime(year: 2023, month: 12, day: 2),
  attendance: "Ajibola, Ishika, Makhi, Eric, Rory"
)

= Competition Goals
- Qualify for the elimination matches

= Matches
#nb_tournament_match(
  match: "Q1",
  red_alliance: (teams: ("9290A ", "9080H"), score: 124),
  blue_alliance: (teams: ("53D ", "1727K"), score: 45),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [Our ally match loads and shoots while we push them into our goal, if they get blocked, we'll double sone and use either our wedge or catapult to move triballs into our offensive zone because neither of their opponents can descore],
  auton_notes: [- We lost because our bot was touching the triball at the end of the auton, not making it count
],
  match_notes: [
    - Our drivetrain stopped working because a screw got caught in the right drive
- Our alliance partners bot didn't work because they ran the wrong code

  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Catapult, Wings",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q19",
  red_alliance: (teams: ("934Z ", "53D"), score: 21),
  blue_alliance: (teams: ("1893P ", "53C"), score: 107),
  won: false,
  auton: "Blue",
  awp: false,
  strategy: [They're gonna match load and shoot onto our offensive zone, while we push. Our ally partner can elevate to A tier, which matches C's ability to elevate to A tier
],
  auton_notes: [- We lost auton because our bot was still touching the triball at the end of auton
],
  match_notes: [
    - The 1893P have no shooting mech, all they can do is push
- Our teammates battery dc/ed for most of the match
- Our drivetrain stopped working mid-match again, we think that this time it was because of the gears slipping
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: "Wings, Catapult",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q28",
  red_alliance: (teams: ("53E ", "960Z"), score: 59),
  blue_alliance: (teams: ("53D", "9080C"), score: 122),
  won: true,
  auton: "Red",
  awp: false,
  strategy: [We match load because our drivetrain wasn't working, while our teammate does elevation and pushing the triballs into the goal
],
  auton_notes: [- We lost auton because our bot was still touching the triball at the end of auton
],
  match_notes: [
    - 53E's teammate wasn't doing much because they're a clawbot, so we were able to outcycle them
    - Our teammate managed an A tier elevation
  ],
  subsystems: (
    overperformed: "Catapult, Intake",
    satisfactory: "Wings, Drivetrain",
    underperformed: "",
  )
)

#nb_tournament_match(
  match: "Q41",
  red_alliance: (teams: ("53D ", "9290B"), score: 142),
  blue_alliance: (teams: ("1893J ", "1893X"), score: 79),
  won: true,
  auton: "Blue",
  awp: false,
  strategy: [our alliance partner has a very consistent puncher, so they shoot and we score into the goal
],
  auton_notes: [- We lost auton, our triball didn't go completely under the net
],
  match_notes: [
    - 1893J tried to block our teammates shots, but they were too slow doing it while we kept scoring into the goal
    - Our drivetrain and wings were working consistently this round, allowing us to consistently and quickly push triballs into the goal.
- The other teams bot 1893X got elevation

  ],
  subsystems: (
    overperformed: "Catapult, Intake",
    satisfactory: "Wings",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q49",
  red_alliance: (teams: ("53D ", "5588B"), score: 79),
  blue_alliance: (teams: ("929N ", "9290D"), score: 102),
  won: false,
  auton: "Red",
  awp: false,
  strategy: [We match load while our team tried to push as much triballs under the net with their wings 
],
  auton_notes: [
    - We managed to win auton this time. The robot managed to not touch the auton after auton
  ],
  match_notes: [
    - 929N had a very consistent launching mechanism  
- 9290D pushed us around while we tried to match. Regardless, we did managed to shoot majority of the triballs
- Our teammate got jammed and did not elevate. Instead, the other alliance managed to make an A level elevation  

  ],
  subsystems: (
    overperformed: "Catapult, Intake",
    satisfactory: "Wings",
    underperformed: "Drivetrain",
  )
)

#nb_tournament_match(
  match: "Q59",
  red_alliance: (teams: ("7135B ", "82856A"), score: 77),
  blue_alliance: (teams: ("53D ", "7135E"), score: 39),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [We match loads while our team tried to push as much triballs since they were a push bot. 
],
  auton_notes: [- No one won auton. Our robot touched the triball, not counting it. 
],
  match_notes: [
   - 7135E did their best to collect the triballs while pushing 7135B
- Our team mate wasn't doing much because they could only push triballs one at a time
- the triballs started to pile up at the right side elevation bar 

  ],
  subsystems: (
    overperformed: "Intake, Catapult",
    satisfactory: "Wings",
    underperformed: "Drivetrain",
  )
)


= Subsystem Reflection
== Drivetrain
=== Red
- Gave us the most trouble this tournament. Zipties got caught in the drivetrain in the first match. Gear slippage made one side of the drivetrain nearly unusable in the second match. After that it was workable, but what Makhi did is a temporary fix.
- Our plan to fix these problems is a complete rebuild of the drivetrain after our Dec. 16 Tournament.

== Intake
=== Green
- Worked consistently, we even managed to intake into the cata a few times.
- In the future, we might want to make the catapult longer to grab triballs easier, and maybe even reach the inside of the match load zone for AWP.

== Catapult
=== Yellow 
- Worked consistently, but the cycling was a bit slow compared to other teams. Maybe if we increase the banding, and add PID to the catapult, we might be able to get the cycle time a bit faster.
- Also important to note that Makhi used the manual catapult, control instead of the automatic catapult control most of the tournament 
- Only got the auto catapult code working post our last qual, so getting the auto catapult code consistent might also make it faster.
- Auto catapult control wasn't working at the beginning of the tournament (even though it worked the night before), so we had to use manual control during the tournament.
== Wings
=== Green
- They worked every round . We managed to push quite a few triballs at a time with them.
- We are planning to add guards to each wing to make them more sturdy.


= Individual Reflections
== Ajibola
- I learned about better notebooking techniques, specifically that reflecting on each individual subsystem is more important than reflection on each individual match. Also explaining the methods behind the testing phase in the design process.
- We need to spend more time before tournaments practicing match loading and auton. Better time management might help with this.

== Ishika 
- The de-scoring thing cannot be our main point because in bigger matches it will be harder to do this with more resourceful teams. A lot of our functions stopped working after being hit so we need to work on keeping them safe. 
- Everything surrounds the functions of the robot and keeping the robot safe.
- We should work on making sure everything is set to work before the next tournament. We do not want to be fixing major problems at the next tournament.

== Makhi 
- Our driving was great with the use of descoring however our subsystems need work and testing
- We ran into a problem with our catapult. It was really slow compared to other teams and also very inconsistent. We should definitely do more testing before the next tournament 

== Rory
- Bots got stuck in the banding of our bot twice and the wings broke twice. A motor also fell out from the catapult, but the main problem was the drivetrain not working correctly

== Eric
- While our driving exhibited excellence, particularly in effective descoring maneuvers, our subsystems revealed areas that require improvement and thorough testing. The catapult, in particular, posed a challenge as it operated at a slower pace compared to other teams and exhibited inconsistency. It's evident that additional testing is imperative before the next tournament to address these issues and ensure optimal performance.
- I suggest we should rebuild the drive-train that isn’t focus on descoring
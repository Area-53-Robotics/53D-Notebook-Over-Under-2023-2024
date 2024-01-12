#import "/template/template.typ": *

#show: create_entry.with(
  title: "Over Under Season Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 7, day: 14),
  attendance: "Ajibola, Ishika, Eric, Emma",
)

#nb_todo(
  date: datetime(year: 2023, month: 7, day: 14),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Plan out the Over Under season by creating a Gantt chart. (Everyone)"),
    (true, "Plan out the July meetings by creating a Gantt chart. (Everyone)"),
    (true, "Brainstorm match strategies to build our bot around (Everyone)"),
    (true, "Select a match strategy to use for the first robot iteration (Everyone)"),
  )
)

Before continuing with the engineering design process, we decided to take the time to make a general plan for what the timeline of the robot's construction would look like. We did not do this at the beginning of the Spin Up season last year, making us very disorganized when we got into the heavy competition season in December-January. We especially wanted to dedicate a significant amount of time to a few tasks:
- Initial Drivetrain: The drivetrain is the robot's core, and we want to try to get it right the first time.
- Autonomous Programming: Due to our disorganization last season, we could not reach our goals for autonomous. We wanted an autonomous that could obtain the autonomous win point without assistance from our alliance partner, but we could not complete it due to time constraints. We hope to get the best autonomous possible by dedicating more time this year.
- Robot Tuning before States: Last season, we built our robot until the last two weeks before the States Competition. This did not leave enough time for testing, leading to preventable problems during the competition. This season, we want to have a period before States where we do not construct any new subsystems and instead focus on tuning the robot.

Another thing we had to keep in mind was that all of Area 53 are planning to attend two signature events this year, which we have to plan our schedule around:
- Sugar Rush VRC Signature Event: 15-Dec-2023 - 16-Dec-2023
- Gateway to the West VRC Signature Event: 2-Feb-2024 - 3-Feb-2024

Because we are attending the Signature Events, Area 53 does not plan to send any teams to the U.S. Open. This means that the Over Under season will end for 53D after the States Competition if we do not qualify for Worlds. The States Competition is on March 1st, so our bot must be completed before then. Here is the completed gantt chart:

#image("/assets/management/Over Under Gantt Chart.png")

/*
#nb_admonition(type: "note")[
  We plan to adjust this gantt chart as the season goes on depending on new deadlines that come up, such as tournaments.
]
*/
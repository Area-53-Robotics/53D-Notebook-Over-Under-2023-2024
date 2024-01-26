#import "/template/template.typ": *

#show: create_entry.with(
  title: "January Gantt Chart",
  type: "management",
  start_date: datetime(year: 2024, month: 1, day: 4),
  attendance: "",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 1, day: 4),
  monthly-schedule: "On",
  yearly-schedule: "Behind",
  (
    (true, "Plan out the January meetings by creating a Gantt chart (Everyone)"),
    (true, "Construct the wheel joints (Ishika, Jin, and Rory)"),
    (true, "Construct the motor axle joints (Ajibola and Makhi)"),
    (true, "Construct the left side of the drivetrain (Ishika, Jin, and Rory)"),
    (true, "Construct the right side of the drivetrain (Ajibola and Makhi)"),
    (true, "Attach the two sides of the drivetrain together to complete it (Makhi)"),
  )
)

= December Management Evaluation

#nb_gantt_chart_key()

#align(center)[#image("./gantt-charts/december-post-gantt-chart.png")]
We are very proud of our time management this month. We managed to get ahead on many of the tasks in building the low catapult (Outtake \#2) due to finishing the Select task early. The programming of the catapult took longer than expected, but because we were ahead, it did not offset our other tasks.

The extra unplanned meetings on 2023/12/17 and 2023/12/28 helped us get significantly ahead on constructing the next iteration of our robot.

= January Gantt Chart
This month we signed up for the Baltimore Robotics Competition and Cardinal Classic so that we can perform our skills runs. Getting our skills runs in is crucial towards qualifying for the Maryland state competition, since many of the spots remaining for the competition will be given out using the skills leaderboard. We do not think that we will have our elevation mechanism working before the Baltimore competition, but we think that we can get it working and tested before Cardinal Classic.

#align(center)[#image("./gantt-charts/january-pre-gantt-chart.png")]
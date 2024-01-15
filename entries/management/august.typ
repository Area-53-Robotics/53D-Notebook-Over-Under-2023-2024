#import "/template/template.typ": *

#show: create_entry.with(
  title: "August Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 8, day: 5),
  attendance: "Ajibola, Ishika, Eric, Makhi",
)

#nb_todo(
  date: datetime(year: 2023, month: 8, day: 5),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Evaluate our time usage during the July meetings (Everyone)"),
    (true, "Plan out the August meetings by creating a Gantt chart (Everyone)"),
    (true, "Build the gear configurations for the left side of the drivetrain (Eric and Makhi)"),
    (true, "Build the wheel configurations for the left side of the drivetrain (Ajibola and Ishika)"),
  )
)

#nb_admonition(type: "note")[
  Today Area 53 had a reshuffling of team members. Emma and Von left our team, and Makhi joined.
]

= July Management Evaluation
Before making a gantt chart for this month, we created an edited version of our July gantt chart to evaluate our time management and make sure we were on track.

#nb_gantt_chart_key()

#image("./gantt-charts/july-post-gantt-chart.png")

We determined that we fell behind when brainstorming and selecting specific drivetrain components. We think this time trade-off was worth it however, because it helped us build the best quality drivetrain possible.

= August Gantt Chart
When planning the August meetings, we knew that the drivetrain would take a long time to complete, so we dedicated a lot of time to building it.

#image("./gantt-charts/august-pre-gantt-chart.png")
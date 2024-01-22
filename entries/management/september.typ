#import "/template/template.typ": *

#show: create_entry.with(
  title: "September Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 9, day: 8),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Eric",
  witnessed: "Rory",
)

#nb_todo(
  date: datetime(year: 2023, month: 9, day: 8),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Evaluate our time usage during the August meetings (Everyone)"),
    (true, "Plan out the September meetings by creating a Gantt chart. (Everyone)"),
    (true, "Attach the right side chassis together (Rory)"),
    (true, "Attach the gears and wheels together (Eric)"),
    (true, "Create the bracing for the drivetrain (Ajibola and Ishika)"),
  )
)

= August Management Evaluation
#nb_gantt_chart_key()
#image("./gantt-charts/august-post-gantt-chart.png")
We were mostly on track with our planned schedule during August, except for being unable to program the drievtrain. We will have to push that task to this month.

= September Gantt Chart
As this is the first meeting of the month, we planned out the meetings for the upcoming month with a gantt chart. An important date that we have to keep in mind is that on 2023/10/21, Area 53 will be hosting a scrimmage for us to practice playing in a competitive environment. Due to the upcoming time constraint, we are planning to have two design cycles in parallel during the upcoming month: the wings and the outtake.

#image("./gantt-charts/september-pre-gantt-chart.png")
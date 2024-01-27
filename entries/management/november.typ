#import "/template/template.typ": *

#show: create_entry.with(
  title: "November Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 11, day: 3),
  attendance: "Ajibola, Ishika, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)


#nb_todo(
  date: datetime(year: 2023, month: 11, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Plan out the November meetings by creating a Gantt chart (Everyone)"),
    (true, "Program the intake to be usable during driver control. (Ajibola and Ishika)"),
    (true, "Test the intake (Everyone)"),
  )
)

= October Management Evaluation

#nb_gantt_chart_key()

#align(center)[#image("./gantt-charts/october-post-gantt-chart.png", height: 13em)]
We were almost perfectly on schedule, with the only exception being that we spent longer building the catapult then planned. However, this did not slow down any of our other tasks, so our time management last month was successful.

= November Gantt Chart
This month we are going to be very short on time due to the Dulaney Royal Rumble competition on 2023/11/03 and Thanksgiving break, which will start after our meeting on 2023/11/18. As such, we only plan to dedicate multiple meetings to improving our  catapult.

#align(center)[#image("./gantt-charts/november-pre-gantt-chart.png", height: 9.5em)]
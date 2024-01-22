#import "/template/template.typ": *

#show: create_entry.with(
  title: "October Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Ajibola",
  witnessed: "Ishika",
)


#nb_todo(
  date: datetime(year: 2023, month: 10, day: 7),
  (
    (true, "Evaluate our time usage during the September meetings (Everyone)"),
    (true, "Plan out the October meetings by creating a Gantt chart (Everyone)"),
    (true, "Program the catapult to be usable during driver control. (Ajibola and Ishika)"),
    (true, "Test the catapult (Everyone)"),
  )
)

= September Management Evaluation
#image("./gantt-charts/september-post-gantt-chart.png")
We were able to save time last month by getting ahead on the construction of the wings and catapult.

= October Gantt Chart
With the Area 53 Scrimmage upcoming on on 2023/10/21, we need to finish the creation of the catapult and wings ASAP. We plan to speed up the engineering design process for these subsystems to ensure we are ready for the scrimmage.

#image("./gantt-charts/october-pre-gantt-chart.png")
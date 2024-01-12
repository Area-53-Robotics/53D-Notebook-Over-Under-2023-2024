#import "/template/template.typ": *

#show: create_entry.with(
  title: "October Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 10, day: 7),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)


#nb_todo(
  date: datetime(year: 2023, month: 10, day: 7),
  (
    (true, "Plan out the October meetings by creating a Gantt chart (Everyone)"),
  )
)

With the Area 53 Scrimmage upcoming on on 2023/10/21, we need to finish the creation of the catapult and wings ASAP. We plan to speed up the engineering design process to ensure we are ready for the scrimmage.

#image("./gantt-charts/october-gantt-chart.png")
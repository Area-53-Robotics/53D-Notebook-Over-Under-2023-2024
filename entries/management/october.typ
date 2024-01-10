#import "/template/template.typ": *

#show: create_entry.with(
  title: "September Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 9, day: 30),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)


#nb_todo(
  date: datetime(year: 2023, month: 9, day: 30),
  (
    (true, "Plan out the September meetings by creating a Gantt chart (Everyone)"),
    (true, "Attach the c-channel to a hinge on the drivetrain (Ajibola, Ishika, & Makhi)"),
    (true, "Attach the pneumatic piston (Eric & Rory)"),
  )
)


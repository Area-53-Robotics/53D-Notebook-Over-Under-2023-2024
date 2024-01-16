#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #2",
  type: "program",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi"
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 1),
  (
    (true, "Plan out the December meetings by creating a Gantt chart (Everyone)"),
    (true, "Program an automatic catapult movement mode (Ajibola and Ishika)"),
    (true, "Test the catapult for triball scoring and manipulation capabilities (Ajibola, Ishika, and Makhi)"),
    (true, "Test the wings for rate of air loss (Eric and Rory)"),
    (true, "Create a basic autonomous routine for the Hereford tournament (Ajibola)"),
  )
)

= ---
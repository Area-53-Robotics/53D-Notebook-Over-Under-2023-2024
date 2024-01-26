#import "/template/template.typ": *

#show: create_entry.with(
  title: "December Gantt Chart",
  type: "management",
  start_date: datetime(year: 2023, month: 12, day: 1),
  attendance: "",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 12, day: 1),
  monthly-schedule: "Ahead",
  yearly-schedule: "Behind",
  (
    (true, "Plan out the December meetings by creating a Gantt chart (Everyone)"),
    (true, "Program an automatic catapult movement mode (Ajibola and Ishika)"),
    (true, "Test the catapult for triball scoring and manipulation capabilities (Ajibola, Ishika, and Makhi)"),
    (true, "Test the wings for rate of air loss (Eric and Rory)"),
    (true, "Create a basic autonomous routine for the Hereford tournament (Ajibola)"),
  )
)

= November Management Evaluation

#nb_gantt_chart_key()

#align(center)[#image("./gantt-charts/november-post-gantt-chart.png")]

Our time management was lacking this month, due to us building wedges and improving the wings, both of which we did not plan to do at the beginning of the month. We are now behind on completing the catapult and preparing to build an elevation mechanism. However, the wedges and wings improvements will be a significant help in the tournaments upcoming in December, so our time was not wasted.

= December Gantt Chart
This month we have two tournaments that we have to work around: Hereford Zone Stampede (2023/12/02) and Capital Beltway Challenge (2023/12/16). We plan to finish the catapult before Hereford and then evaluate its performance at Hereford. If its performance is satisfactory, than we will build an elevation mechanism in the time leading up to Capital Beltway. If we believe that imprvements are needed to the catapult, than we will instead take that time to build the next iteration of the outtake.

#align(center)[#image("./gantt-charts/december-pre-gantt-chart.png")]
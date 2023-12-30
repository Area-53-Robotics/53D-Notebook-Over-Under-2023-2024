#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "@preview/showybox:2.0.1": showybox

#let nb_admonition(type: "", title: none, body) = {
  let info = type_metadata.at(type)

  if title == none {
    title = info.name
  }

  box(
    grid(
      columns: (3em, 1fr),
      align(center + horizon)[#box(baseline: 30%, image.decode(info.icon, height: 2em))],
      showybox(
        frame:(
          border-color: info.color,
          body-color: info.color.lighten(80%),
          thickness: (left: 4pt/*, right: 4pt, top: 4pt, bottom: 4pt*/),
          radius: 1.5pt,
        )
      )[
        #text(
          size: 15pt,
          fill: {if info.color != yellow {
            info.color
          } else {
            let title-color = info.color.darken(20%)
            title-color
          }}
        )[
          *#title*
        ]
        \
        #body
      ]
    )
  )
}

#let nb_todo(date: none, monthly-schedule: none, yearly-schedule: none, attendance: none, body) = {
  if monthly-schedule != none {
    if ((monthly-schedule != "On") and (monthly-schedule != "Behind") and (monthly-schedule != "Ahead")) {
      panic("Invalid monthly schedule status")
    }
  }

  if yearly-schedule != none {
    if yearly-schedule != "On" and "Behind" and "Ahead" {
      panic("Invalid yearly schedule status")
    }
  }

  nb_admonition(type: "management", title: [To-Do: (#date.display("[year]/[month]/[day]"))])[
    #body
    #if monthly-schedule != none or yearly-schedule != none or attendance != none [
      #line(length: 100%)
    ]

    #if monthly-schedule != none [
      - Monthly Schedule Status: #monthly-schedule Schedule
    ]

    #if yearly-schedule != none [
      - Yearly Schedule Status: #yearly-schedule Schedule
    ]

    #if attendance != none [
      - Attendance: #attendance
    ]
  ]
}
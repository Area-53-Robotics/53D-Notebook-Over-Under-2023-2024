#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "@preview/showybox:2.0.1": showybox
#import "@preview/tablex:0.0.8": *

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
    if ((monthly-schedule != "On") and (monthly-schedule != "Behind") and (monthly-schedule != "Ahead") and (monthly-schedule != "Off")) {
      panic("Invalid monthly schedule status")
    }
  }

  if yearly-schedule != none {
    if ((yearly-schedule != "On") and (yearly-schedule != "Behind") and (yearly-schedule != "Ahead") and (monthly-schedule != "Off")) {
      panic("Invalid yearly schedule status")
    }
  }

  nb_admonition(type: "management", title: [To-Do: (#date.display("[year]/[month]/[day]"))])[
    #gridx(
      columns: 2,
      align: left + horizon,
      inset: (rest: 0pt),

      map-cols: (col, cells) => cells.map(c =>
        if col == 0 {
          (..c, inset: (rest: 0pt))
        } else if col == 1 {
          (..c, inset: (left: 3pt, rest: 0pt))
        } else {
          c
        }
      ),

      ..for (completed, task) in body {
        (
          {
            if completed == true {
              image("/template/tabler-icons/square-check-filled.svg", height: 1em)
            } else {
              image("/template/tabler-icons/square.svg", height: 1em)
            }
          },
          task
        )
      }
    )

    #if monthly-schedule != none or yearly-schedule != none or attendance != none [
      #line(length: 100%)
    ]

    #if monthly-schedule != none [
      - *Monthly Schedule Status:* #monthly-schedule Schedule
    ]

    #if yearly-schedule != none [
      #v(-3pt)
      #if yearly-schedule == "Ahead" [
        - *Yearly Schedule Status:* #yearly-schedule of Schedule
      ] else [
        - *Yearly Schedule Status:* #yearly-schedule Schedule
      ]
    ]

    #if attendance != none [
      #v(-3pt)
      - *Attendance:* #attendance
    ]
  ]
}

#let nb_matrix_criteria(body) = [
  #nb_admonition(type: "select", title: "Decision Matrix")[
    *Ranking Criteria:*
    #body

    *Number Ranking Key:*
    #set text(size: 13pt)
    #tablex(
      rows: 2,
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,

      map-cols: (col, cells) => cells.map(c =>
        if col == 0 {
          (..c, fill: green.lighten(10%))
        } else if col == 1 {
          (..c, fill: yellow.lighten(10%))
        } else if col == 2 {
          (..c, fill: red.lighten(10%))
        } else if col == 3 {
          (..c, fill: red.darken(10%))
        } else if col == 4 {
          (..c, fill: red.darken(40%))
        } else {
          c
        }
      ),

      [4], [3], [2], [1], [0],
      [Excellent], [Fair], [Poor], [Very Poor], [Incapable],
    )
  ]
]
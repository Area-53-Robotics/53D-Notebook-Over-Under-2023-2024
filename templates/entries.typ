#import "colors.typ": *
#import "icons.typ": *
#import "heading.typ": *

#let create_entry(title: "", type: "", start_date: none, end_date: none, body) = {
  if start_date == none {
    panic("No valid start date specified")
  }

  if end_date == none {
    end_date = start_date
  }

  set page(
    header: [
      #grid(
        columns: (35pt, 1fr, 62pt),

        align(left)[
          #circle_icon(type: type)
        ],

        align(left)[
          #nb_heading(level: 0)[
            #if type == "identify" [
              Identify:
            ] else if type == "brainstorm" [
              Brainstorm:
            ] else if type == "select" [ 
              Select:
            ] else if type == "build" [
              Build:
            ] else if type == "program" [
              Program:
            ] else if type == "test" [
              Test:
            ] else if type == "competition" [
              Competition:
            ] else if type == "management" [
              Management:
            ] else [
              panic("Invalid EDJ Step")
            ] #title
          ]
          #align(center)[#line(length: 100%, stroke: 1.5pt)]
        ],

        align(right)[
          #rect(
            height: 35pt,
            width: 60pt,
            radius: 15pt,
            fill: {
              if type == "identify" {
                red
              } else if type == "brainstorm" {
                blue
              } else if type == "select" { 
                yellow
              } else if type == "build" {
                green
              } else if type == "program" {
                blue
              } else if type == "test" {
                purple
              } else if type == "competition" {
                amber
              } else if type == "management" {
                gray
              } else {
                panic("Invalid EDJ Step")
              }
            }
          )[#align(center + horizon)[
            // #nb_heading(level: 0)[2023/11/13]
            #start_date
          ]]
        ]
      )
    ],

    footer: [
      #align(center)[#line(length: 100%, stroke: 1.5pt)]

      #grid(
        columns: (1fr, 1fr),
        align(left)[
          Designed By:
          \
          Witnessed By:
        ],
        align(right)[
          #locate(loc => [
            #counter(page).at(loc)
          ])
        ]

        /*
        #align(center)[#line(length: 100%, stroke: 1.5pt)]

        #grid(
          columns: (1.5fr, 1fr, 10pt),

          align(left)[
            Designed By: ...............................
            \
            Witnessed By: ..............................
          ],

          align(left)[
            Date: ...............................
            \
            Date: ...............................
          ],

          align(right + bottom)[
            #locate(loc => [
              #counter(page).at(loc)
            ])
          ]
        )
        */
      )
    ]
  )
}
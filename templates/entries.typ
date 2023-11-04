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
        columns: (35pt, 1fr),

        align(left)[
          #circle_icon(type: type)
        ],

        [
          #grid(
            columns: (1fr, 1fr),

            align(left)[
              #nb_heading(level: 0)[
                #if type == "identify" [
                  Identify
                ] else if type == "brainstorm" [
                  Brainstorm
                ] else if type == "select" [ 
                  Select
                ] else if type == "build" [
                  Build
                ] else if type == "program" [
                  Program
                ] else if type == "test" [
                  Test
                ] else if type == "competition" [
                  Competition
                ] else if type == "management" [
                  Management
                ] else [
                  panic("Invalid EDJ Step")
                ]
              ]: 
            ],

            align(right)[
              #set text(size: 15pt, weight: "bold")
              #start_date
            ]
          )
          #align(center)[#line(length: 100%, stroke: 1.5pt)]
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
      )
    ]
  )
}
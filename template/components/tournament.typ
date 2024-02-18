#import "@preview/showybox:2.0.1": *
#import "@preview/tablex:0.0.8": *

#let nb_tournament_match(
  match: "",
  red_alliance: (teams: ("", ""), score: 0),
  blue_alliance: (teams: ("", ""), score: 0),
  won: false,
  auton: "Tie",
  awp: false,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: none,
  )
) = {
  assert((auton == "Red") or (auton == "Blue") or (auton == "Tie"), message: "Invalid auton winner")

  
  show: showybox.with(
    frame:(
      border-color: {
        if won == true {
          green
        } else {
          red
        }
      },
      body-color: none,
      thickness: (left: 4pt/*, right: 4pt, top: 4pt, bottom: 4pt*/),
      radius: 1.5pt,
    )
  )

  show "53D": it => underline[*#it*]

  grid(
    columns: (20%, auto),
    rows: 1,
    column-gutter: 5pt,

    align(horizon)[
      #set text(size: 13pt)
      #grid(
        columns: 1,
        rows: 3,

        rect(
          radius: (top: 5pt),
          width: 100%,
          fill: gray,
          stroke: black + 1pt
        )[
          #align(center)[
            *#match* \
            #if won == true [
              Win
            ] else [
              Loss
            ]
          ]
        ],

        rect(
          width: 100%,
          fill: red.lighten(20%),
          stroke: black + 1pt
        )[
          #grid(
            columns: (50%, 50%),
            rows: 1,

            [
              #red_alliance.teams.first() \
              #red_alliance.teams.last()
            ],

            align(center)[
              #text(size: 19pt)[
                #red_alliance.score
              ]
            ]
          )
        ],

        rect(
          radius: (bottom: 5pt),
          width: 100%,
          fill: blue.lighten(20%),
          stroke: black + 1pt
        )[
          #grid(
            columns: (50%, 50%),
            rows: 1,

            [
              #blue_alliance.teams.first() \
              #blue_alliance.teams.last()
            ],

            align(center)[
              #text(size: 19pt)[
                #blue_alliance.score
              ]
            ]
          )
        ],
      )
    ],

    align(horizon)[
      #show red_alliance.teams.first(): it => text(red)[#it]
      #show red_alliance.teams.last(): it => text(red)[#it]
      #show blue_alliance.teams.first(): it => text(blue)[#it]
      #show blue_alliance.teams.last(): it => text(blue)[#it]

      #grid(
        columns: 1,
        rows: 4,
        row-gutter: 5pt,

        rect(
          radius: 5pt,
          width: 100%
        )[
          *Strategy:* \
          #strategy
        ],

        rect(
          radius: 5pt,
          width: 100%,
          inset: 0pt
        )[
          #grid(
            columns: (25%, 17%, 58%),
            rows: 1,

            rect(
              stroke: (right: 1pt)
            )[
              #align(center)[

                #text(size: 13pt)[*Auton Bonus:*]
                #if auton == "Red" {
                  text(size: 16pt, fill: red)[Red]
                } else if auton == "Blue" {
                  text(size: 16pt, fill: blue)[Blue]
                } else {
                  text(size: 16pt, fill: gray)[Tie]
                }
              ]
            ],

            rect(
              stroke: (right: 1pt)
            )[
              #align(center)[
                #grid(
                  columns: 2,
                  rows: 1,
                  column-gutter: 2pt,

                  text(size: 13pt)[*AWP:*],
                  [
                    #if awp == false {
                      image("/template/tabler-icons/square.svg", height: 2em)
                    } else {
                      image("/template/tabler-icons/square-check-filled.svg", height: 2em)
                    }
                  ]
                )
              ]
            ],

            rect(
              stroke: (left: 1pt),
              width: 100%
            )[
              #text(size: 13pt)[*Auton Notes:*] \
              #auton_notes
            ]
          )
        ],

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Match Notes:*] \
          #match_notes
        ],

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Subsystem Performance:*] \
          - Overperformed: #subsystems.overperformed \
          - Satisfactory: #subsystems.satisfactory \
          - Underperformed: #subsystems.underperformed
          #if (subsystems.disabled != none) [
            - Disabled: #subsystems.disabled
          ]
        ],

      )
    ],
  )
}
#import "./colors.typ" : *
#import "./globals.typ": *
#import "./widgets.typ": *

#let create_entry(title: "", type: "", start_date: none, end_date: none, attendance: "", body) = {
  if start_date == none {
    panic("No valid start date specified")
  }
  if end_date == none {
    end_date = start_date
  }
  entries.update(x => {
    x.push((
      title: title,
      type: type,
      start_date: start_date,
      end_date: end_date,
      attendance: attendance,
      body: body,
    ))
    x
  })
}

#let print_entries() = {
  locate(loc => {
    for entry in entries.final(loc) {
      [
        #let info = entry_type_metadata.at(entry.type)
        #let type = entry.type

        #set page(
          header: [
            #nb_heading(color: info.color, level: 0, beginning: [
              #nb_label(label: type, size: 2.5em)
            ], [
              #entry.title #h(1fr)
            ])
          ],

          footer: [
            #tablex(
              columns: (1fr, 1fr, 1fr, 1fr, 2fr, 35pt),
              rows: 4,
              align: left + horizon,
              width: 1fr,

              hlinex(start: 0, end: 4, stroke: black + 1pt, y: 0),
              hlinex(start: 0, end: 4, stroke: black + 1pt, y: 1),
              hlinex(start: 0, end: 5, stroke: black + 1pt, y: 2),
              hlinex(start: 0, end: 5, stroke: black + 1pt, y: 3),
              hlinex(start: 0, end: 5, stroke: black + 1pt, y: 4),
              vlinex(start: 0, end: 3, stroke: 0pt, x: 6),

              colspanx(4)[#align(center)[#entry.title]], (), (), (),
              colspanx(2, rowspanx(3)[
                #align(center + horizon)[
                  #box(
                    fill: info.color.lighten(40%),
                    outset: 5pt,
                    radius: 1.5pt,
                    height: 0.5in,
                    width: 2in,
                    stroke: (paint: info.color, thickness: 1pt, dash: "dashed")
                  )[]
                ]
              ]),
              (),
              colspanx(4)[Designed By:], (), (), (), (), (),
              colspanx(4)[Witnessed By:], (), (), (), (), (),
              align(center)[#entry.start_date.display("[year]/[month]/[day]")], colspanx(4)[Attendance: #entry.attendance], (), (), (), (
                align(center + horizon)[
                  #box(
                    fill: info.color,
                    outset: 5pt,
                    radius: 1.5pt,
                    height: auto,
                    width: 20pt,
                  )[#counter(page).display()]
                ]),
            )
            
          ],

          margin: (left: 4em, bottom: 11em, right: 4em),

          background: [
            #locate(
              loc => {
                if calc.rem(loc.page(), 2) == 1 {
                  align(left + horizon)[
                    #rect(
                      fill: info.color,
                      height: 800pt,
                      width: 30pt,
                      radius: (top-right: 15pt, bottom-right: 15pt)
                    )
                  ]
                } else {
                  align(right + horizon)[
                    #rect(
                      fill: info.color,
                      height: 800pt,
                      width: 30pt,
                      radius: (top-left: 15pt, bottom-left: 15pt)
                    )
                  ]
                }
              },
            )


          ]
        )

        #entry.body <nb_entry>
        #counter(footnote).update(0)
      ]
      }
  })
}
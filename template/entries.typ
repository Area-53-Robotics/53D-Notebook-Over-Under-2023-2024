#import "./colors.typ" : *
#import "./globals.typ": *
#import "./components/components.typ": *

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
    // make a second array for locations for toc linking?
    for entry in entries.final(loc) {
      [
        #let info = type_metadata.at(entry.type)
        #let type = entry.type

        #set page(
          header: [
            #nb_title(color: info.color, beginning: [
              #nb_label(label: type, size: 2.5em)
            ], [
              #entry.title #h(1fr)
            ])
          ],

          footer: [
            #locate(
              loc => {
                  entry_page_counter.step()

                if /* calc.odd(loc.page()) */ true {
                  tablex(
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

                    colspanx(4)[
                      #align(center)[
                        #link((page: frontmatter_page_counter.final(loc).at(0) + 2, x: 0pt, y: 0pt))[
                          #text(fill: black)[
                            _ #entry.title _
                          ]
                        ]
                      ]
                    ],
                    (), (), (),

                    cellx(colspan: 2, rowspan: 3)[
                      #align(center + horizon)[
                        #nb_label_box(type: entry.type)
                      ]
                    ],
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
                } else {
                  tablex(
                    columns: (35pt, 2fr, 1fr, 1fr, 1fr, 1fr),
                    rows: 4,
                    align: left + horizon,
                    width: 1fr,

                    hlinex(start: 2, end: 7, stroke: black + 1pt, y: 0),
                    hlinex(start: 2, end: 7, stroke: black + 1pt, y: 1),
                    hlinex(start: 2, end: 7, stroke: black + 1pt, y: 2),
                    hlinex(start: 2, end: 7, stroke: black + 1pt, y: 3),
                    hlinex(start: 1, end: 7, stroke: black + 1pt, y: 4),
                    vlinex(start: 0, end: 3, stroke: 0pt, x: 0),

                    cellx(colspan: 2, rowspan: 3)[
                      #align(center + horizon)[
                        #nb_label_box(type: entry.type)
                      ]
                    ],
                    (),
                    colspanx(4)[
                      #align(center)[
                        #link((page: frontmatter_page_counter.final(loc).at(0) + 2, x: 0pt, y: 0pt))[
                          #text(fill: black)[
                            _ #entry.title _
                          ]
                        ]
                      ]
                    ], (), (), (),

                    (), (), colspanx(4)[Designed By:], (), (), (),

                    (), (), colspanx(4)[Witnessed By:], (), (), (),
                    
                    (
                      align(center + horizon)[
                        #box(
                          fill: info.color,
                          outset: 5pt,
                          radius: 1.5pt,
                          height: auto,
                          width: 20pt,
                        )[#counter(page).display()]
                      ]
                    ), colspanx(4)[Attendance: #entry.attendance], (), (), (), align(center)[#entry.start_date.display("[year]/[month]/[day]")]
                  )
                }
              }
            )
          ],

          margin: (left: 5em, bottom: 11em, right: 5em),

          background: nb_side_margin_color(color: info.color)
        )

        #entry.body <nb_entry>
        #counter(footnote).update(0)
      ]
    }
    
    counter(page).update(_ => 0)
  })
}

#let create_appendix_entry(title: "", body) = {
  appendix_entries.update(x => {
    x.push((
      title: title,
      body: body,
    ))
    x
  })
}

#let print_appendix_entries() = {
  locate(loc => {
    // make a second array for locations for toc linking?
    for entry in appendix_entries.final(loc) {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: nb_side_margin_color(color: gray),
          header: [
            #nb_title[#entry.title]
          ],
          footer: nb_appendix_footer()
        )

        #entry.body <nb_appendix_entry>
        #counter(footnote).update(0)
      ]
    }
  })
}
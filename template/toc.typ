#import "./entries.typ": *
#import "./components/components.typ": *
#import "./globals.typ": *

#let nb_toc() = {
  page(
    margin: (left: 5em, right: 5em, /*bottom: 4em*/),
    background: nb_side_margin_color(color: gray),
    header: nb_title[Table of Contents],
    footer: nb_frontmatter_footer(),
  )[

      #locate(
        loc => {
          box[

            = Entries

            #let toc-length = {
              if entries.final(loc).len() < 36 {
                entries.final(loc).len()
              } else {
                36
              }
            }

            #let headings = query(selector(<nb_entry>), loc)

            #for (index, entry) in entries.final(loc).enumerate().slice(0, toc-length) {
              let page_number = counter(page).at(headings.at(index).location()).at(0)
              let start_date = entry.start_date.display("[year]/[month]/[day]")
              let end_date = if (not entry.start_date == entry.end_date) { entry.end_date.display("[year]/[month]/[day]") } else { none }

              let info = type_metadata.at(entry.type)

              let frontmatter_count = frontmatter_page_counter.final(loc).at(0)

              [
                #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
                #h(5pt)
                #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                  #align(center + horizon)[
                    #link((page: {frontmatter_count + page_number + 2 - page-number-offset}, x: 0pt, y: 0pt))[
                      #text(fill: black)[
                        _#h(2pt) #start_date #sym.dash.em #info.name: #entry.title #h(2pt)_
                      ]
                    ]
                  ]
                ]#h(5pt)
                #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                #page_number \
              ]
            }
          ]
        }
      )
  ]

  page(
    margin: (left: 5em, right: 5em, /*bottom: 4em*/),
    background: nb_side_margin_color(color: gray),
    header: nb_title[Table of Contents],
    footer: nb_frontmatter_footer(),
  )[

      #locate(
        loc => {
          if entries.final(loc).len() > 36 {
            box[

              #let headings = query(selector(<nb_entry>), loc)

              #for (index, entry) in entries.final(loc).enumerate().slice(36, 72) {
                let page_number = counter(page).at(headings.at(index).location()).at(0)
                let start_date = entry.start_date.display("[year]/[month]/[day]")
                let end_date = if (not entry.start_date == entry.end_date) { entry.end_date.display("[year]/[month]/[day]") } else { none }

                let info = type_metadata.at(entry.type)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)

                let temp = frontmatter_count + page_number + 3 - page-number-offset

                if temp < 1 {
                  panic(str(info.name) + str(entry.title) + str(temp))
                  temp = temp * -1
                }

                [
                  #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
                  #h(5pt)
                  #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {temp}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _#h(2pt) #start_date #sym.dash.em #info.name: #entry.title #h(2pt)_
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  #page_number \
                ]
              }
            ]
            parbreak()
          }

/*
          box[

            = Program

              #let program_headings = query(selector(<nb_program_entry>), loc)
              #for (index, entry) in program_entries.final(loc).enumerate() {
                let page_number = counter(page).at(program_headings.at(index).location()).at(0)
                // let page_number = program_page_counter.at(program_headings.at(index).location()).at(0)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)
                let entry_count = entry_page_counter.final(loc).at(0)

                [
                  #box(radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {frontmatter_count + entry_count + page_number + 3}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _ #entry.title _
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  P-#page_number \
                ]
              }

            #counter(page).update(_ => 0)
          ]
          parbreak()

          box[

            = Appendix

              #let appendix_headings = query(selector(<nb_appendix_entry>), loc)
              #for (index, entry) in appendix_entries.final(loc).enumerate() {
                let page_number = counter(page).at(appendix_headings.at(index).location()).at(0)
                // let page_number = appendix_page_counter.at(appendix_headings.at(index).location()).at(0)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)
                let entry_count = entry_page_counter.final(loc).at(0)
                let program_count = program_page_counter.final(loc).at(0)

                [
                  #box(radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {frontmatter_count + entry_count + program_count + page_number + 4}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _ #entry.title _
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  A-#page_number \
                ]
              }
          ]
*/
            counter(page).update(_ => page-number-offset)

        }
      )
  ]

  // Extra page
  
  page(
    margin: (left: 5em, right: 5em, /*bottom: 4em*/),
    background: nb_side_margin_color(color: gray),
    header: nb_title[Table of Contents],
    footer: nb_frontmatter_footer(),
  )[

      #locate(
        loc => {
          if entries.final(loc).len() > 72 {
            box[

              #let headings = query(selector(<nb_entry>), loc)

              #for (index, entry) in entries.final(loc).enumerate().slice(72) {
                let page_number = counter(page).at(headings.at(index).location()).at(0)
                let start_date = entry.start_date.display("[year]/[month]/[day]")
                let end_date = if (not entry.start_date == entry.end_date) { entry.end_date.display("[year]/[month]/[day]") } else { none }

                let info = type_metadata.at(entry.type)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)

                let temp = frontmatter_count + page_number + 3 - page-number-offset

                if temp < 1 {
                  panic(str(info.name) + str(entry.title) + str(temp))
                  temp = temp * -1
                }

                [
                  #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
                  #h(5pt)
                  #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {temp}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _#h(2pt) #start_date #sym.dash.em #info.name: #entry.title #h(2pt)_
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  #page_number \
                ]
              }
            ]
            parbreak()
          }

          box[

            = Program

              #let program_headings = query(selector(<nb_program_entry>), loc)
              #for (index, entry) in program_entries.final(loc).enumerate() {
                let page_number = counter(page).at(program_headings.at(index).location()).at(0)
                // let page_number = program_page_counter.at(program_headings.at(index).location()).at(0)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)
                let entry_count = entry_page_counter.final(loc).at(0)

                [
                  #box(radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {frontmatter_count + entry_count + page_number + 3}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _ #entry.title _
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  P-#page_number \
                ]
              }

            #counter(page).update(_ => 0)
          ]
          parbreak()

          box[

            = Appendix

              #let appendix_headings = query(selector(<nb_appendix_entry>), loc)
              #for (index, entry) in appendix_entries.final(loc).enumerate() {
                let page_number = counter(page).at(appendix_headings.at(index).location()).at(0)
                // let page_number = appendix_page_counter.at(appendix_headings.at(index).location()).at(0)

                let frontmatter_count = frontmatter_page_counter.final(loc).at(0)
                let entry_count = entry_page_counter.final(loc).at(0)
                let program_count = program_page_counter.final(loc).at(0)

                [
                  #box(radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #link((page: {frontmatter_count + entry_count + program_count + page_number + 4}, x: 0pt, y: 0pt))[
                        #text(fill: black)[
                          _ #entry.title _
                        ]
                      ]
                    ]
                  ]#h(5pt)
                  #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
                  A-#page_number \
                ]
              }
          ]
            counter(page).update(_ => page-number-offset)

        }
      )
  ]
}
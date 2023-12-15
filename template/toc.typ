#import "./entries.typ": *
#import "./widgets.typ": *

#let nb_toc() = {
  page(
    margin: (left: 5em, right: 5em, /*bottom: 4em*/),
    background: nb_side_margin_color(color: gray),
    header: nb_heading([Table of Contents], level: 0),
    footer: nb_frontmatter_footer(),
    [

      #nb_heading([Entries], level: 1)

      #locate(
        loc => {
          // FIXME: its not displaying the page number correctly
          let headings = query(selector(<nb_entry>), loc)

          for (index, entry) in entries.final(loc).enumerate() {
            let page_number = counter(page).at(headings.at(index).location()).at(0)
            let start_date = entry.start_date.display("[year]/[month]/[day]")
            let end_date = if (not entry.start_date == entry.end_date) { entry.end_date.display("[year]/[month]/[day]") } else { none }

            let info = entry_type_metadata.at(entry.type)

            // let appendix_count = appendix_page_counter.final(loc).at(0)
            // let page_count = entries.final(loc)

            [
              #box(baseline: 15%, nb_label(label: entry.type, size: 1em))
              #h(5pt)
              #box(fill: info.color, radius: 1pt, height: 1em, baseline: 15%)[
                #align(center + horizon)[
                  // #link((page: {page_count + appendix_count}, x: 0pt, y: 0pt))[
                    #h(2pt) #start_date #sym.dash.em #entry.title #h(2pt)
                  // ]
                ]
              ]#h(5pt)
              #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted")))
              #page_number \
            ]
          }
          [

            #nb_heading([Appendix], level: 1)

            #let glossary = query(selector(<nb_heading_glossary>), loc)
            Glossary #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted"))) #counter(page).at(glossary.at(0).location()).at(0)
            #counter(page).update(_ => 0)

            #let resources = query(selector(<nb_heading_resources>), loc)
            Resources #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted"))) #counter(page).at(resources.at(0).location()).at(0)
            #counter(page).update(_ => 0)

            #let innovate = query(selector(<nb_heading_innovate>), loc)
            Innovate Award Submission Information Form #box(width: 1fr, line(length: 100%, stroke: (dash: "dotted"))) #counter(page).at(innovate.at(0).location()).at(0)
            #counter(page).update(_ => 0)
          ]
        },
      )

    ],
  )
}

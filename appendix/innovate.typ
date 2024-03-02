#import "/template/entries.typ": *
#import "/template/globals.typ": page-number-offset

#show: create_appendix_entry.with(
  title: "Innovate Award Submission Information Form",
  updated: datetime(year: 2024, month: 1, day: 26)
)

// https://kb.roboticseducation.org/hc/en-us/articles/17319258476439

#text(size: 14pt)[*Full Team Number: 53D*]

= Brief Description
The novel design on our robot is our modular kicker and elevation mechanism. Instead of having both of the mechanisms on our robot like most teams, we can swap the two to maximize the meta of Over Under to its fullest extent. For example, during match play, we play Field Starvation, and take advantage of the opponent's match loads. Since we don't introduce match loads of our own, our kicker is deactivated. However, during Skills, the meta is to introduce and score as many match loads as possible. Our elevation mechanism will be deactivated as the time it takes to hang can be used to score even more tribals, netting us more points.

What's truly innovative is our ability to adapt, switching between the two depending on the current meta. Teams who use an elevation mechanism sacrifice a game effecting option for skills. Since both the Kicker and the Elevation count as “subsystem 3”, we can still hang without sacrificing Skills. An additional feature is the gear ratio. In our gearbox, there are two gears on one axle: a 36T and 12T. The kicker runs on the 36T silver gear and the Elevation Mechanism runs on the 12T silver gear. The ratios are 3:1 and 7:1 respectively. By having the gears on the same axle, this eliminates any inconsistency we get when we switch between them and gain enough torque to get a C-tier hang.

= Dcoumentation Page Numbers
#locate(
  loc => {

    table(
      columns: 2,

      {
        heading(level: 3)[Kicker]
        let valid_entries = entries.final(loc).enumerate()

        valid_entries = valid_entries.filter(
          entry => {
            (entry.last().title.match("Kicker") != none) or ((entry.last().title.match("Outtake #2") != none) and (entry.last().type.match("understand") != none))
          }
        )

        let entry = valid_entries.first()
        let info = type_metadata.at(entry.last().type)
        let headings = query(selector(<nb_entry>), loc)
        for (index, entry) in valid_entries {
          let page_number = counter(page).at(headings.at(index).location()).at(0)
          // let page_number = entry_page_counter.at(headings.at(index).location()).at(0) + 1
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
      },
      {
        heading(level: 3)[Elevation]
        let valid_entries = entries.final(loc).enumerate()

        valid_entries = valid_entries.filter(
          entry => {
            (entry.last().title.match("Elevation") != none)
          }
        )

        let entry = valid_entries.first()
        let info = type_metadata.at(entry.last().type)
        let headings = query(selector(<nb_entry>), loc)
        for (index, entry) in valid_entries {
          let page_number = counter(page).at(headings.at(index).location()).at(0)
          // let page_number = entry_page_counter.at(headings.at(index).location()).at(0) + 1
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
      },
    )

  }
)
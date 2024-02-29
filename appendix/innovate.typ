#import "/template/entries.typ": *
#import "/template/globals.typ": page-number-offset

#show: create_appendix_entry.with(
  title: "Innovate Award Submission Information Form",
  updated: datetime(year: 2024, month: 1, day: 26)
)

// https://kb.roboticseducation.org/hc/en-us/articles/17319258476439

#text(size: 14pt)[*Full Team Number: 53D*]

= Brief Description
The novel aspect of our team's design is the kicker because it differs from the current meta of the season: the flywheel. Instead of using a flywheel like most teams, we opted for the kicker because of how close the grouping is when the triballs are launched. Compared to the flywheel, the kicker gives us more freedom in controlling the trajectory of the triballs because the kicker's arm will always hit the same spot on the triballs. This results in more accuracy, which is much needed for high-skill driving and auton routines.

An innovative aspect of our kicker is its platform. For the platform, instead of using C-channel, the kicker's platform is constructed with Lexan sleds. They are lightweight compared to most other kicker platforms, which doesn't disrupt the weight distribution of our bot, and their unique shape allows the triball to slide into place with minimal risk of falling off.

= Dcoumentation Page Numbers
#locate(
  loc => {

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
            #link((page: {frontmatter_count + page_number + 2 - page-number-offset + page-number-offset}, x: 0pt, y: 0pt))[
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
  }
)
#import "./colors.typ" : *
#import "./globals.typ": *
#import "./widgets.typ": *

#let create_entry(title: "", type: "", start_date: none, end_date: none, body) = {
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
      body: body,
    ))
    x
  })
}

#let print_entries() = {
  locate(loc => {
    for entry in entries.final(loc) {
      [
        #set page(
        header: [
          #let info = entry_type_metadata.at(entry.type)
          #let type = entry.type
          #nb_heading(color: info.color, level: 0, beginning: [
            #entry.start_date.display("[year]/[month]/[day]")
          ], end: [
            #box()[
              #box()[#image.decode(change_icon_color(info.icon, white), height: 1em)]
              #box(baseline: -30%)[
                #if type == "identify" [Identify:]
                #if type == "brainstorm" [Brainstorm:]
                #if type == "select" [Select:]
                #if type == "build" [Build:]
                #if type == "program" [Program:]
                #if type == "test" [Test:]
                #if type == "management" [Management:]
                #if type == "competition" [Competition:]
              ]
            ]
          ], [
            #entry.title #h(1fr)
          ])
        ],

        footer: [
          #let info = entry_type_metadata.at(entry.type)
          #line(length: 100%)
          #align(left)[
            #box(
              fill: info.color.lighten(70%),
              outset: 5pt,
              radius: 1.5pt,
              height: auto,
              width: auto,
            )[
            #grid(columns: (2fr, 1fr, 10pt), rows: 1,
              [
                *Designed By:* #box(line(end: none, length: 62%, stroke: (paint: black, thickness: 1pt, dash: "dashed")))
                \
                *Witnessed By:* #box(line(end: none, length: 60%, stroke: (paint: black, thickness: 1pt, dash: "dashed")))
              ],
              [
                *Date:* #box(line(end: none, length: 70%, stroke: (paint: black, thickness: 1pt, dash: "dashed")))
                \
                *Date:* #box(line(end: none, length: 70%, stroke: (paint: black, thickness: 1pt, dash: "dashed")))
              ],
              [
                #align(bottom + center)[
                  #box(
                    fill: info.color,
                    outset: 5pt,
                    radius: 1.5pt,
                    height: auto,
                    width: auto,
                  )[#h(1fr) #counter(page).display()]
                ]
              ]
            )
            ]
          ]
        ])

        #counter(footnote).update(0)
        #entry.body <nb_entry>

      ]
      }
  })
}
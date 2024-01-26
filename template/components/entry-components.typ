#import "@preview/tablex:0.0.8": *
#import "../icons/icons.typ": *
#import "../globals.typ": frontmatter_page_counter, entry_page_counter, appendix_page_counter, entries, signature-type, page-number-offset
#import "./entry-lists.typ": *

#let nb_pro_con(name: none, image: [], image-width: 40%, pros: [], cons: [], notes: []) = [
  #assert(name != none, message: "No name given")
  #assert(pros != [], message: "No pros recorded")
  #assert(cons != [], message: "No cons recorded")

  #if notes != [] {
    tablex(
      columns: (image-width, 1fr, 1fr),
      rows: 4,
      align: left + top,

      cellx(align: center, fill: gray)[*#name*],
      cellx(fill: green)[*Pros*],
      cellx(fill: red)[*Cons*],
      cellx(align: center + horizon, rowspan: 3)[#image],
      [
        #pros
      ],
      [
        #cons
      ],
      cellx(colspan: 2, fill: gray)[*Notes*],
      cellx(colspan: 2)[
        #notes
      ],
    )
  } else {
    tablex(
      columns: (40%, 1fr, 1fr),
      rows: 2,
      align: left + top,

      cellx(align: center, fill: gray)[*#name*],
      cellx(fill: green)[*Pros*],
      cellx(fill: red)[*Cons*],
      cellx(align: center + horizon)[#image],
      [
        #pros
      ],
      [
        #cons
      ],
    )
  }
]

#let signature_metadata = (
  "Ajibola": (name: "Ajibola Ajani", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Ishika": (name: "Ishika Saha", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Jin": (name: "Jin Cao", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Makhi": (name: "Makhi Epps", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Eric": (name: "Eric Singer", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Rory": (name: "Rory Cullum", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
)

#let nb_signature(name) = {
  if signature-type == 0 [
    #label(name)
  ] else if signature-type == 1 [
    #signature_metadata.at(name).name #label(name)
  ] else if signature-type == 2 [
    #signature_metadata.at(name).signature #label(name)
  ] else {
    panic("Invalid signature-type value")
  }
}

#let nb_cad(
  folder: "",
  sheets: 1,
  add-views: none,
  date: none,
  designed: none,
  witnessed: none,
) = [
  // put a loc on here for index

  #let current-sheet = 1
  #let path = none

  #while current-sheet <= sheets {
    path = "/assets/cad/" + folder + "/sheet" + str(current-sheet) + ".png"

    page(
      paper: "us-letter",
      margin: (left: 5em, bottom: 11em, right: 5em),
      background: image(path),
      header: none,
      footer: {
        locate(
          loc => {
            entry_page_counter.step()
            
            align(
              if calc.odd(loc.page()) {
                right + bottom
              } else {
                left + bottom
              }
            )[
              #box(
                fill: yellow,
                outset: 5pt,
                radius: 1.5pt,
                height: auto,
                width: 20pt,
              )[#align(center + horizon)[#counter(page).display()]]
            ]
            v(1em)
          }
        )
      },
      foreground: {
        align(bottom + left)[
          #move(dx: 6.4em, dy: -2.5em)[
            #gridx(
              columns: (10.75em, 8.35em),
              rows: (1.2em, 1.2em),
              align: left + horizon,

              [#nb_signature(designed)], cellx(align: center + horizon)[#date.display("[year]/[month]/[day]")],
              [#nb_signature(witnessed)], cellx(align: center + horizon)[#date.display("[year]/[month]/[day]")],
            )
          ]
        ]
      }
    )[]

    current-sheet = current-sheet + 1
  }

  #pagebreak()

  #align(horizon)[
    #grid(
      columns: (50%, 50%),
      rows: (50%, 50%),

    ..for view in add-views {
        (image("/assets/cad/" + folder + "/" + str(view) + ".png"),)
      },
    )
  ]
]

#let nb_gantt_chart_key(
  intended_color: color.rgb(207,226,243,255),
  is-vertical: false
) = {
  align(center)[
    #if is-vertical == false {
      tablex(
        columns: 5,
        rows: 2,
        align: center + horizon,

        fill: (col, row) => {
          if row == 1 {
            if col == 0 {intended_color}
            else if col == 1 {color.rgb(204,0,0,255)}
            else if col == 2 {color.rgb(241,194,50,255)}
            else if col == 3 {color.rgb(106,168,79,255)}
            else if col == 4 {color.rgb(20,51,83,255)}
            else {white}
          }
        },

        cellx(colspan: 5)[Key],
        [Intended Schedule],
        [Behind Schedule],
        [On Schedule],
        [Ahead of Schedule],
        [Off Schedule]
      )
    } else {
      tablex(
        columns: 2,
        rows: 3,
        align: center + horizon,

        fill: (col, row) => {
          if col == 1 {
            if row == 1 {intended_color}
            else if row == 2 {color.rgb(204,0,0,255)}
            else if row == 3 {color.rgb(241,194,50,255)}
            else if row == 4 {color.rgb(106,168,79,255)}
            else {white}
          }
        },

        cellx(colspan: 2)[Key],
        [Intended Schedule], [],
        [Behind Schedule], [],
        [On Schedule], [],
        [Ahead of Schedule], [],
      )
    }
  ]
}

// ! You can only have two entry references in an entry without getting the "did not converge" error
#let nb_entry_reference(
  date: none,
  type: none,
  title: none,
  body: [entry on],
) = {
  locate(
    loc => {

      let valid_entries = entries.final(loc).enumerate()

      if date != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.last().start_date.display("[year]/[month]/[day]").match(date.display("[year]/[month]/[day]")) != none
          }
        )
      }

      if type != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.last().type.match(type) != none
          }
        )
      }

      if title != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.last().title.match(title) != none
          }
        )
      }

      assert(valid_entries.len() > 0, message: "No entries meet the given attributes")
      assert(valid_entries.len() <= 1, message: "More than one entry meet the given attributes")

      let entry = valid_entries.first()
      let info = type_metadata.at(entry.last().type)
      let page = counter(page).at(query(selector(<nb_entry>), loc).at(entry.first()).location()).at(0)

      [
        #box(baseline: 15%, nb_icon(label: entry.last().type, size: 1em))
        #h(1pt)
        #highlight(fill: info.color.lighten(30%))[
          #link((page: {frontmatter_page_counter.final(loc).at(0) + page + 2 - page-number-offset}, x: 0pt, y: 0pt))[
            #text(fill: black)[
              _#h(2pt) #entry.last().start_date.display("[year]/[month]/[day]") #sym.dash.em #info.name: #entry.last().title #h(2pt)_
            ]
          ]
        ]
        #body pg. #page #h(-0.2em)
      ]
    }
  )
}

// ! You can only have two entry references in an entry without getting the "did not converge" error
#let past_nb_entry_reference(
  date: none,
  type: none,
  title: none,
  body: [entry on],
) = {
  locate(
    loc => {

      let valid_entries = full-entry-list

      if date != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.start_date.display("[year]/[month]/[day]").match(date.display("[year]/[month]/[day]")) != none
          }
        )
      }

      if type != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.type.match(type) != none
          }
        )
      }

      if title != none {
        valid_entries = valid_entries.filter(
          entry => {
            entry.title.match(title) != none
          }
        )
      }

      assert(valid_entries.len() > 0, message: "No entries meet the given attributes")
      assert(valid_entries.len() <= 1, message: "More than one entry meet the given attributes")

      let entry = valid_entries.first()
      let info = type_metadata.at(entry.type)
      let page = entry.body

      [
        #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
        #h(1pt)
        #highlight(fill: info.color.lighten(30%))[
          #h(2pt) #entry.start_date.display("[year]/[month]/[day]") #sym.dash.em #info.name: #entry.title #h(2pt)
        ]
        #body pg. #page #h(-0.2em)
      ]
    }
  )
}
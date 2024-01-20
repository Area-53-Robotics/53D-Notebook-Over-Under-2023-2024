#import "@preview/showybox:2.0.1": showybox
#import "@preview/tablex:0.0.8": *

#import "../globals.typ": frontmatter_page_counter, entry_page_counter, appendix_page_counter, entries
#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "./admonitions.typ": *


// Felix's Functions

#let nb_highlight(color: red, body) = {
  box(fill: color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #body
  ]
}

#let nb_label(label: "", size: 0.7em) = {
  let data = type_metadata.at(label)
  let raw_icon = data.icon
  
  image.decode(raw_icon, height: size)
}

#let nb_table(columns: (1fr, 1fr), ..elements) = {
  let length = if type(columns) == int {
    columns
  } else {
    columns.len()
  }

  tablex(
    columns: columns,
    auto-lines: false,
    inset: 10pt,
    fill: (_, row) => {
      if calc.odd(row) { surface_3 }
      if calc.even(row) { surface_1 }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
    ..for (index, element) in elements.pos().enumerate() {
      // Make the element bold if its in the top row or on the first column
      if index < length or calc.rem(index, length) == 0 {
        ([ *#element* ],)
      } else {
        ([ #element ],)
      }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
  )
}

// My Functions

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

#let nb_label_box(type: "") = {
  let nb_solid_labels = true;
  let info = type_metadata.at(type)

  if nb_solid_labels == false {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt, dash: "dashed")
    )
  } else {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt,/* dash: "dashed"*/)
    )[
      #set text(16pt)

      #align(center + horizon)[
        #box(baseline: 35%, nb_label(label: type, size: 2em)) #h(7pt) *#info.name*
      ]
    ]
  }
}

#let nb_cad(folder: "", sheets: 1, add-views: none) = [
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

#let nb_constraint(body) = [
  #set text(fill: red)[#underline[#body]]
]

#let glossary_footnote(body) = [
  #footnote[See "#body" glossary entry]
]

#let vex-rule(body) = [
  #text(red.darken(20%))[
    *<#body>*
  ]
]

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
        #box(baseline: 15%, nb_label(label: entry.last().type, size: 1em))
        #h(1pt)
        #highlight(fill: info.color.lighten(30%))[
          #link((page: {frontmatter_page_counter.final(loc).at(0) + page + 2}, x: 0pt, y: 0pt))[
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

#let nb_gantt_chart_key(
  intended_color: color.rgb(207,226,243,255),
  is-vertical: false
) = {
  align(center)[
    #if is-vertical == false {
      tablex(
        columns: 4,
        rows: 2,
        align: center + horizon,

        fill: (col, row) => {
          if row == 1 {
            if col == 0 {intended_color}
            else if col == 1 {color.rgb(204,0,0,255)}
            else if col == 2 {color.rgb(241,194,50,255)}
            else if col == 3 {color.rgb(106,168,79,255)}
            else {white}
          }
        },

        cellx(colspan: 4)[Key],
        [Intended Schedule],
        [Behind Schedule],
        [On Schedule],
        [Ahead of Schedule],
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
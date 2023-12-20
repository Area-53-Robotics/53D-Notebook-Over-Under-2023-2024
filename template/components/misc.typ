// I should have named  this file components.typ, can't change it now.
#import "@preview/showybox:2.0.1": showybox
#import "@preview/tablex:0.0.6": *

#import "../globals.typ": appendix_page_counter
#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "./admonitions.typ": *


// Felix's Functions

// FIXME: frontmatter is using the appendix counter
#let nb_frontmatter_footer() = {
  appendix_page_counter.step()

  align(right + bottom)[
    #box(
      fill: gray,
      outset: 5pt,
      radius: 1.5pt,
      height: auto,
      width: 20pt,
    )[#align(center + horizon)[#appendix_page_counter.display("i")]]
  ]
  v(2em)
}

#let nb_appendix_footer(color: none) = {
  appendix_page_counter.step()

  align(right + bottom)[
    #box(
      fill: gray,
      outset: 5pt,
      radius: 1.5pt,
      height: auto,
      width: 20pt,
    )[#align(center + horizon)[#counter(page).display()]]
  ]
  v(2em)
}

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

#let nb_pro_con(pros: [], cons: []) = [
  #let cell = rect.with(width: 100%, inset: 5pt)
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 4pt,
    cell(fill: green, radius: (top: 1.5pt))[*Pros*],
    cell(fill: red, radius: (top: 1.5pt))[*Cons*],
    cell(fill: green.lighten(80%), radius: (bottom: 1.5pt))[
      #pros
    ],
    cell(fill: red.lighten(80%), radius: (bottom: 1.5pt))[
      #cons
    ],
  )
]

#let nb_decision_matrix(properties: (), choices: ()) = {
  for choice in choices {
    if not (choice.len() - 1) == properties.len() {
      panic("a choice did not have the right amount of properties")
    }
  }

  let totaled_choices = choices.map(
    choice => {
      let total = 0
      for element in choice {
        if type(element) == "integer" or type(element) == "float" { total += element }
      }
      choice + (total,)
    },
  )

  let highest = (index: 0, value: 0)

  for (index, choice) in totaled_choices.enumerate() {
    if choice.at(choice.len() - 1) > highest.value {
      highest.index = index + 1
      highest.value = choice.at(choice.len() - 1)
    }
  }

  set align(center)
  tablex(
    auto-lines: false,
    columns: properties.len() + 2,
    // 1 column for the names, one for the total
    fill: (_, row) => {
      if row == highest.index { green.lighten(50%) }
      if calc.odd(row) and not row == highest.index { surface_3 }
      if calc.even(row) and not row == highest.index { surface_1 }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
    // Blank column to account for names of choices
    [],
    ..for property in properties {
      ([ *#property* ],)
    },
    [*Total*],
    ..for (index, element) in totaled_choices.flatten().enumerate() {
      if calc.rem(index, properties.len() + 2) == 0 {
        ([ *#element* ],)
      } else {
        ([ #element ],)
      }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
  )
}

// My Functions

#let nb_todo(date: none, schedule: "", body) = {
  nb_admonition(type: "management", title: [To-Do: (#date.display("[year]/[month]/[day]"))])[
    #body
    #if schedule != "" [
      #line(length: 100%)
      Monthly Schedule Status: #schedule
    ]
  ]
}

#let nb_label_box(type: "") = {
  let nb_solid_labels = true;
  let info = type_metadata.at(type)

  if nb_solid_labels == false {
    box(
      fill: info.color.lighten(40%),
      outset: 5pt,
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt, dash: "dashed")
    )
  } else {
    box(
      fill: info.color.lighten(40%),
      outset: 5pt,
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt,/* dash: "dashed"*/)
    )[
      #set text(16pt)

      #align(center + horizon)[
        #box(baseline: 35%, nb_label(label: type, size: 2em)) #h(10pt) *#info.name*
      ]
    ]
  }

}

#let nb_side_margin_color(color: "") = {
  let margin-width = 35pt
  locate(
    loc => {
      if calc.rem(loc.page(), 2) == 1 {
        align(left + horizon)[
          #rect(
            fill: color,
            height: 800pt,
            width: margin-width,
            radius: (top-right: 15pt, bottom-right: 15pt)
          )
        ]
      } else {
        align(right + horizon)[
          #rect(
            fill: color,
            height: 800pt,
            width: margin-width,
            radius: (top-left: 15pt, bottom-left: 15pt)
          )
        ]
      }
    }
  )
}


#let nb_cad(path: "") = [
  // put a loc on here for index
  #page(
    paper: "us-letter",
    margin: (left: 5em, bottom: 11em, right: 5em),
    background: image(path),
    header: none,
    footer: [
      #align(right + bottom)[
      #box(
        fill: gray,
        outset: 5pt,
        radius: 1.5pt,
        height: auto,
        width: 20pt,
      )[#align(center + horizon)[#counter(page).display()]]
    ]
    #v(1em)
    ],
  )[]

  #pagebreak()

  #align(center + horizon)[ THIS PAGE IS INTENTIONALLY LEFT BLANK]
]

#let nb_constraint(body) = [
  #set text(fill: red)[#underline()[#body]]
]
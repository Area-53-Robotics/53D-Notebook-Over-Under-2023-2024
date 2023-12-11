#import "./colors.typ": *
#import "./widgets.typ": *
#import "./globals.typ": *

#let nb_create_glossary_entry(title: none, category: "management", definition: none) = {
  if type(title) == none {
    panic("no title")
  }

  if type(definition) == none {
    panic("no definition")
  }

  glossary_entries.update(it => {
    it.push((title: title, category: category, definition: definition))
    it
  })
}

#let nb_print_glossary() = [
  #page(
    margin: (left: 5em, right: 5em),
    background: nb_side_margin_color(color: gray),
    footer: nb_appendix_footer()
  )[
    #nb_heading([Glossary #h(1fr)])<nb_heading_glossary>

    #v(20pt)

    #columns(
      2,
    )[
      #locate(
        loc => {
          let sorted_glossary = glossary_entries.final(loc).sorted(key: ((title, _)) => title)

          for entry in sorted_glossary [
            #rect(
              radius: 5pt
            )[
              #align(left)[#box(baseline: 30%, nb_label(label: entry.category, size: 2em)) #h(5pt) *#text(14pt)[#entry.title]*]
              #line(length: 100%)
              #entry.definition
            ]
          ]
        }
      )
    ]
  ]
]

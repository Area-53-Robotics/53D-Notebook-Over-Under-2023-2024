#import "./colors.typ": *
#import "./components/components.typ": *
#import "./globals.typ": *
#import "./entries.typ": *

#let nb_create_glossary_entry(title: none, category: none, definition: none) = {
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

#show: create_appendix_entry.with(
  title: "Glossary",
  updated: datetime.today()
)

// #v(20pt)

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
          #align(left)[
            #if entry.category != none [#box(baseline: 30%, nb_icon(label: entry.category, size: 2em))]
            #h(5pt)
            *#text(14pt)[#entry.title]*
          ]
          #line(length: 100%)
          #entry.definition
        ]
      ]
    }
  )
]
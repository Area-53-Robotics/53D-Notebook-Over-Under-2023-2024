#import "template/template.typ": *
#include "/entries/entries.typ"
#include "/appendix/appendix_entries.typ"
#include "/program/program_entries.typ"
#include "/appendix/glossary.typ"

#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 2, total: 2),
  cover: "/assets/logos/logo.png",
  year: "2023 - 2024",
  season: "Over Under",
  about: [
    #include "about.typ"
  ],
  intro: [
    #include "introduction.typ"
  ],
)

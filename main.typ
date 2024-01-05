#import "template/template.typ": *
#include "/entries/entries.typ"
#include "/appendix/appendix_entries.typ"
#include "/appendix/glossary.typ"

#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  cover: "/assets/logos/logo.png",
  season: "Over Under 2023 - 2024",
  about: [
    #include "about.typ"
  ],
  intro: [
    #include "introduction.typ"
  ],
)

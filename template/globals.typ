#import "./colors.typ": *
// Global State

#let appendix_page_counter = counter("appendix_page_counter")

#let entries = state("entries", ())

#let glossary_entries = state("glossary_entries", ())

// Useful constants
#let entry_type_metadata = (
  "identify": (icon: "./icons/seal-question.svg", color: red),
  "brainstorm": (icon: "./icons/lightbulb-alt.svg", color: orange),
  "select": (icon: "./icons/bullseye-arrow.svg", color: yellow),
  "build": (icon: "./icons/shapes.svg", color: green),
  "program": (icon: "./icons/file-code.svg", color: blue),
  "test": (icon: "./icons/chart-simple.svg", color: purple),
  "management": (icon: "./icons/folder.svg", color: gray),
  "competition": (icon: "./icons/award-alt.svg", color: amber),
)
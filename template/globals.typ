#import "./colors.typ": *
// Global State

#let appendix_page_counter = counter("appendix_page_counter")

#let entries = state("entries", ())

#let glossary_entries = state("glossary_entries", ())

// Useful constants
#let entry_type_metadata = (
  "identify": (icon: "./icons/seal-question-red.svg", color: red),
  "brainstorm": (icon: "./icons/lightbulb-alt-orange.svg", color: orange),
  "select": (icon: "./icons/bullseye-arrow-yellow.svg", color: yellow),
  "build": (icon: "./icons/shapes-green.svg", color: green),
  "program": (icon: "./icons/file-code-blue.svg", color: blue),
  "test": (icon: "./icons/chart-simple-purple.svg", color: purple),
  "management": (icon: "./icons/folder-blue-gray.svg", color: blue-gray),
  "competition": (icon: "./icons/award-alt-amber.svg", color: amber),
)
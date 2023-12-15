#import "./colors.typ": *
// Global State

#let appendix_page_counter = counter("appendix_page_counter")

#let entries = state("entries", ())

#let glossary_entries = state("glossary_entries", ())

#let nb_solid_labels = true;
// Useful constants
#let entry_type_metadata = (
  "identify": (icon: "./icons/seal-question-red.svg", color: red, name: "Identify"),
  "brainstorm": (icon: "./icons/lightbulb-alt-orange.svg", color: orange, name: "Brainstorm"),
  "select": (icon: "./icons/bullseye-arrow-yellow.svg", color: yellow, name: "Select"),
  "build": (icon: "./icons/shapes-green.svg", color: green, name: "Build"),
  "program": (icon: "./icons/file-code-blue.svg", color: blue,  name: "Program"),
  "test": (icon: "./icons/chart-simple-purple.svg", color: purple, name: "Test"),
  "management": (icon: "./icons/folder-blue-gray.svg", color: blue-gray,  name: "Management"),
  "competition": (icon: "./icons/award-alt-amber.svg", color: amber,  name: "Competition"),
)
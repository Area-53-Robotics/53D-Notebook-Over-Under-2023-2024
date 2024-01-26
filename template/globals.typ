#import "./colors.typ": *
// Global State

#let frontmatter_page_counter = counter("frontmatter_page_counter")
#let entry_page_counter = counter("entry_page_counter")
#let appendix_page_counter = counter("appendix_page_counter")
#let program_page_counter = counter("program_page_counter")

// #let frontmatter_entries = state("frontmatter_entries", ())
#let entries = state("entries", ())
#let appendix_entries = state("appendix_entries", ())
#let program_entries = state("program_entries", ())

#let glossary_entries = state("glossary_entries", ())

#let appendix_entry_counter = counter("appendix_entry_counter")

#let page-number-offset = 133

/*
  0 = Metadata
  1 = Text
  2 = Signature
*/
#let signature-type = 0;
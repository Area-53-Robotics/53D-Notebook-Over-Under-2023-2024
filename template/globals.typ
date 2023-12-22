#import "./colors.typ": *
// Global State

#let appendix_page_counter = counter("frontmatter_page_counter")

#let entries = state("entries", ())

#let glossary_entries = state("glossary_entries", ())
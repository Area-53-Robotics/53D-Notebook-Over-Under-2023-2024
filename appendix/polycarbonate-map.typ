#import "/template/entries.typ": *

#show: create_appendix_entry.with(
  title: "Polycarbonate Map",
  updated: datetime(year: 2024, month: 3, day: 2)
)

// Below is a diagram of our polycarbonate usage:

#align(center + horizon, box(fill: blue.desaturate(80%), stroke: black + 1pt, image("/assets/appendix/polycarbonate-map.svg")))
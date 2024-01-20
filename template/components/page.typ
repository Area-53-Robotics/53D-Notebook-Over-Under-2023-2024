#import "../globals.typ": frontmatter_page_counter, appendix_page_counter, program_page_counter

// FIXME: frontmatter is using the appendix counter
#let nb_frontmatter_footer() = {
  locate(
    loc => {
      frontmatter_page_counter.step()
      align(
        if calc.odd(loc.page()) == true {
          right + bottom
        } else {
          left + bottom
        }
      )[
        #box(
          fill: gray,
          outset: 5pt,
          radius: 1.5pt,
          height: auto,
          width: 20pt,
        )[#align(center + horizon)[#frontmatter_page_counter.display("i")]]
      ]
      v(2em)
    }
  )
}

#let nb_appendix_footer(color: gray, updated: none) = {
  locate(
    loc => {
      appendix_page_counter.step()
      align(left)[
        Updated #updated.display("[year]/[month]/[day]")
      ]
      align(
        if calc.odd(loc.page()) == true {
          right
        } else {
          left
        }
      )[
        #box(
          fill: color,
          outset: 5pt,
          radius: 1.5pt,
          height: auto,
          width: 20pt,
        )[#align(center + horizon)[A-#counter(page).display()]]
        ]
      // v(2em)
    }
  )
}

#let nb_program_footer(color: blue) = {
  locate(
    loc => {
      program_page_counter.step()
      align(
        if calc.odd(loc.page()) == true {
          right + bottom
        } else {
          left + bottom
        }
      )[
        #box(
          fill: color,
          outset: 5pt,
          radius: 1.5pt,
          height: auto,
          width: 20pt,
        )[#align(center + horizon)[P-#counter(page).display()]]
      ]
      v(2em)
    }
  )
}

#let nb_side_margin_color(color: "") = {
  let margin-width = 35pt
  locate(
    loc => {
      if calc.odd(loc.page()) {
        align(left + horizon)[
          #rect(
            fill: color,
            height: 800pt,
            width: margin-width,
            radius: (top-right: 15pt, bottom-right: 15pt)
          )
        ]
      } else {
        align(right + horizon)[
          #rect(
            fill: color,
            height: 800pt,
            width: margin-width,
            radius: (top-left: 15pt, bottom-left: 15pt)
          )
        ]
      }
    }
  )
}
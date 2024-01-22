#import "../globals.typ": frontmatter_page_counter, appendix_page_counter, program_page_counter
#import "../icons/icons.typ": *

#let nb_icon_box(type: "") = {
  let nb_solid_labels = true;
  let info = type_metadata.at(type)

  if nb_solid_labels == false {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt, dash: "dashed")
    )
  } else {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt,/* dash: "dashed"*/)
    )[
      #set text(16pt)

      #align(center + horizon)[
        #box(baseline: 35%, nb_icon(label: type, size: 2em)) #h(7pt) *#info.name*
      ]
    ]
  }
}

#let signature_metadata = (
  "Ajibola": (name: "Ajibola Ajani", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Ishika": (name: "Ishika Saha", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Jin": (name: "Jin Cao", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Makhi": (name: "Makhi Epps", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Eric": (name: "Eric Singer", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
  "Rory": (name: "Rory Cullum", signature: box(image("/assets/signatures/ajibola.png"), height: 1em)),
)

#let nb_signature(name) = {
  /*
    0 = Metadata
    1 = Text
    2 = Signature
  */
  let signature-type = 0;

  if signature-type == 0 [
    #label(name)
  ] else if signature-type == 1 [
    #signature_metadata.at(name).name #label(name)
  ] else if signature-type == 2 [
    #signature_metadata.at(name).signature #label(name)
  ] else {
    panic("Invalid signature-type value")
  }
}

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
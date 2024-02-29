#let nb-innovate-form(
  notebook-style: true,
  team-number: "53D",
  brief-description: none,
  documentation: none
) = if notebook-style == true [
  #text(size: 14pt)[*Full Team Number: #team-number*]

  = Brief Description
  #brief-description

  = Dcoumentation Page Numbers
  #documentation
] else {
  page(
    background: "/assets/innovate-form.png"
  )[]
}

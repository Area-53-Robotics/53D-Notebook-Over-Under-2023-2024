#import "../colors.typ": *

#let nb_question_mark = read("./seal-question-red.svg")
#let nb_light_bulb = read("./lightbulb-alt-orange.svg")
#let nb_target = read("./bullseye-arrow-yellow.svg")
#let nb_shapes = read("./shapes-green.svg")
#let nb_file = read("./file-code-blue.svg")
#let nb_chart = read("./chart-simple-purple.svg")
#let nb_book = read("./book-open-pink.svg")
#let nb_folder = read("./folder-blue-gray.svg")
#let nb_award = read("./award-alt-amber.svg")

#let nb_info = read("./circle-information-deep-orange.svg")
#let nb_superscript = read("./superscript-teal.svg")
// #let nb_warning = read("./warning.svg")
// #let nb_web = read("./web.svg")
// #let nb_quotes = read("./quotes.svg")
// #let nb_function = read("./function.svg")

// Images are stored undecoded so they can be changed later
#let type_metadata = (
  "identify": (icon: nb_question_mark, color: red, name: "Identify"),
  "understand": (icon: nb_book, color: pink300, name: "Understand"),
  "brainstorm": (icon: nb_light_bulb, color: orange, name: "Brainstorm"),
  "select": (icon: nb_target, color: yellow, name: "Select"),
  "build": (icon: nb_shapes, color: green, name: "Build"),
  "program": (icon: nb_file, color: blue, name: "Program"),
  "test": (icon: nb_chart, color: purple, name: "Test"),
  "management": (icon: nb_folder, color: blue-gray, name: "Management"),
  "competition": (icon: nb_award, color: amber, name: "Competition"),
  "note": (icon: nb_info, color: deep-orange, name: "Note"),
  // "warning": (icon: nb_warning, color: red, name: "Warning"),
  // "example": (icon: nb_web, color: purple, name: "Example"),
  // "quote": (icon: nb_quotes, color: gray, name: "Quote"),
  "equation": (icon: nb_superscript, color: teal, name: "Equation"),
)

// Returns the raw image data, not image content
// You'll still need to run image.decode on the result
#let nb_change_icon_color(raw_icon: "", fill: red) = {
  return raw_icon.replace("<path", "<path style=\"fill: " + fill.to-hex() + "\"")
}

#let nb_change_icon_stroke(raw_icon: "", stroke: red) = {
  return raw_icon.replace("stroke=\"currentColor\"", "stroke=\"" + stroke.to-hex() + "\"")
}

#let nb_icon(label: "", size: 0.7em) = {
  let data = type_metadata.at(label)
  let raw_icon = data.icon
  
  image.decode(raw_icon, height: size)
}
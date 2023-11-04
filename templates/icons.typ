#import "colors.typ": *

#let circle_icon(type: "", radius: 15pt) = [
  #circle(
    radius: radius,
    fill: {
      if type == "identify" {
        red
      } else if type == "brainstorm" {
        blue
      } else if type == "select" { 
        yellow
      } else if type == "build" {
        green
      } else if type == "program" {
        blue
      } else if type == "test" {
        purple
      } else if type == "competition" {
        amber
      } else if type == "management" {
        gray
      } else {
        panic("Invalid EDJ Step")
      }
    },
    inset: 0pt,
    outset: 0pt
    )[
      #if type == "identify" {
        image("icons\question.svg")
      } else if type == "brainstorm" {
        image("icons\lightbulb-alt.svg")
      } else if type == "select" { 
        image("icons\bullseye-arrow.svg")
      } else if type == "build" {
        image("icons\hammer.svg")
      } else if type == "program" {
        image("icons\code.svg")
      } else if type == "test" {
        image("icons\chart-simple.svg")
      } else if type == "competition" {
        image("icons\trophy.svg")
      } else if type == "management" {
        image("icons\folder.svg")
      } else {
        panic("Invalid EDJ Step")
      }
    ]
]
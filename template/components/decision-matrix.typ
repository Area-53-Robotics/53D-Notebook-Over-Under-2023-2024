#import "@preview/tablex:0.0.8": *
#import "../colors.typ": *

#let nb_decision_matrix(criteria: (), choices: (), body: []) = [
  #set text(size: 13pt)

  #align(center)[#box[
    #for choice in choices {
      if not (choice.len() - 1) == criteria.len() {
        panic("a choice did not have the right amount of criteria")
      }
    }
    
    #let totaled_choices = choices.map(
      choice => {
        let total = 0
        for element in choice {
          if type(element) == "integer" or type(element) == "float" { total += element }
        }
        choice + (total,)
      },
    )

    #let highest = (index: (), value: 0)

    #for (index, choice) in totaled_choices.enumerate() {
      if choice.at(choice.len() - 1) > highest.value {
        highest.index.push(index + 1)
        highest.index = highest.index.slice(highest.index.len() - 1)
        highest.value = choice.at(choice.len() - 1)
      } else if choice.at(choice.len() - 1) == highest.value {
        highest.index.push(index + 1)
        highest.value = choice.at(choice.len() - 1)
      }
    }

    = Unweighted Decision Matrix
    #tablex(

      auto-lines: true,
      align: center + horizon,
      columns: choices.len() + 1,
      rows: criteria.len() + 2,

      map-cells: cell => {
        let fill-color = []
        if cell.x > 0 and cell.y > 0 and cell.y < criteria.len() + 1 {
          let value = int(cell.content.text)

          let fill-color = if value == 4 {
            green.lighten(10%)
          } else if value == 3 {
            yellow.lighten(10%)
          } else if value == 2 {
            red.lighten(10%)
          } else if value == 1 {
            red.darken(10%)
          } else {
            red.darken(40%)
          }
          (..cell, fill: fill-color.desaturate(20%))
        } else if cell.x > 0 and cell.y == criteria.len() + 1 {
          let value = int(cell.content.text)
            fill-color = if value == highest.value {
            green.lighten(10%)
          } else if highest.value - value < 4 {
            yellow.lighten(10%)
          } else if highest.value - value < 8 {
            red.lighten(10%)
          } else if highest.value - value < 12 {
            red.darken(10%)
          } else {
            red.darken(40%)
          }
          (..cell, fill: fill-color.desaturate(20%))
        }
        else {cell}
      },

      map-cols: (col_index, cells) => {
        cells.map(c => {
          if highest.index.contains(col_index) {
          (..c, content: strong(delta: 400)[#c.content])
          } else {c}
        })
      },

      vlinex(start: 1, end: criteria.len() + 2, stroke: black),
      hlinex(start: 1, end: choices.len() + 1, stroke: black),

      [],
      ..for choice in totaled_choices {
        (choice.at(0),)
      },
      ..for criterion in criteria.enumerate() {
        (
          criterion.last().first(),
          ..for choice in totaled_choices {
            (choice.at(criterion.first() + 1),)
          }
        )
      },
      cellx(fill: gray.lighten(10%))[Score],
      ..for choice in totaled_choices {
        (choice.last(),)
      },
    )
  ]]

  #text(size: 11pt)[#body]

  #align(center)[#box[
    #let weighted_choices = choices.map(
      choice => {
        choice = choice.enumerate().map(
          binding => {
            if type(binding.last()) == "integer" or type(binding.last()) == "float" {
              binding.insert(1, {binding.remove(1) * criteria.at(binding.first() - 1).last()})
            }
            binding
          }
        )

        let choice-values = ()

        for binding in choice {
          choice-values.push(binding.last())
        }

        choice = choice-values

        choice
      },
    )

    #let totaled_weighted_choices = weighted_choices.map(
      choice => {
        let total = 0
        for element in choice {
          if type(element) == "integer" or type(element) == "float" { total += element }
        }
        choice + (total,)
      },
    )

    #let highest = (index: (), value: 0)

    #for (index, choice) in totaled_weighted_choices.enumerate() {
      if choice.at(choice.len() - 1) > highest.value {
        highest.index.push(index + 1)
        highest.index = highest.index.slice(highest.index.len() - 1)
        highest.value = choice.at(choice.len() - 1)
      } else if choice.at(choice.len() - 1) == highest.value {
        highest.index.push(index + 1)
        highest.value = choice.at(choice.len() - 1)
      }
    }

    = Weighted Decision Matrix
    #tablex(

      auto-lines: true,
      align: center + horizon,
      columns: choices.len() + 2,
      rows: criteria.len() + 2,

      map-cells: cell => {
        let fill-color = []
        if cell.x == 1 and cell.y == 0 {
          fill-color = purple.lighten(20%).desaturate(30%)
          (..cell, fill: fill-color.desaturate(20%))
        } else if cell.x == 1 and cell.y > 0 {
          fill-color = purple.lighten(70%)
          (..cell, fill: fill-color.desaturate(20%))
        } else if cell.x > 1 and cell.y > 0 and cell.y < criteria.len() + 1 {
          let value = int(cell.content.text)
          fill-color = if value == (criteria.at(cell.y - 1).last() * 4) {
            green.lighten(10%)
          } else if value == (criteria.at(cell.y - 1).last() * 3) {
            yellow.lighten(10%)
          } else if value == (criteria.at(cell.y - 1).last() * 2) {
            red.lighten(10%)
          } else if value == (criteria.at(cell.y - 1).last() * 1) {
            red.darken(10%)
          } else {
            red.darken(40%)
          }
          (..cell, fill: fill-color.desaturate(20%))
        } else if cell.x > 1 and cell.y == criteria.len() + 1 {
          let value = int(cell.content.text)
          let fill-color = if value == highest.value {
            green.lighten(10%)
          } else if highest.value - value < 6 {
            yellow.lighten(10%)
          } else if highest.value - value < 12 {
            red.lighten(10%)
          } else if highest.value - value < 18 {
            red.darken(10%)
          } else {
            red.darken(40%)
          }
          (..cell, fill: fill-color.desaturate(20%))
        }
        else {cell}
      },

      map-cols: (col_index, cells) => {
        cells.map(c => {
          if highest.index.contains(col_index - 1) {
          (..c, content: strong(delta: 400)[#c.content])
          } else {c}
        })
      },

      vlinex(start: 1, end: criteria.len() + 2, stroke: black),
      hlinex(start: 1, end: choices.len() + 2, stroke: black),

      [],
      [Weight],
      ..for choice in totaled_weighted_choices {
        (choice.first(),)
      },
      ..for criterion in criteria.enumerate() {
        (
          criterion.last().first(),
          str(criterion.last().last()) + "x",
          ..for choice in totaled_weighted_choices {
            (choice.at(criterion.first() + 1),)
          }
        )
      },
      cellx(fill: gray.lighten(10%))[Score],
      [#sym.dash.em],
      ..for choice in totaled_weighted_choices {
        (choice.last(),)
      },
    )
  ]]
]
#import "@preview/tablex:0.0.7": *
#import "../colors.typ": *

#let new_decision_matrix(body: [], properties: (), choices: ()) = {
  for choice in choices {
    if not (choice.len() - 1) == properties.len() {
      panic("a choice did not have the right amount of properties")
    }
  }
  
  let totaled_choices = choices.map(
    choice => {
      let total = 0
      for element in choice {
        if type(element) == "integer" or type(element) == "float" { total += element }
      }
      choice + (total,)
    },
  )

  let highest = (index: 0, value: 0)

  for (index, choice) in totaled_choices.enumerate() {
    if choice.at(choice.len() - 1) > highest.value {
      highest.index = index + 1
      highest.value = choice.at(choice.len() - 1)
    }
  }

  set align(center)
  tablex(

    auto-lines: false,
    columns: properties.len() + 2,
    
    // 1 column for the names, one for the total
    fill: (_, row) => {
      if row == highest.index { green.lighten(50%) }
      if calc.odd(row) and not row == highest.index { gray }
      if calc.even(row) and not row == highest.index { blue-gray }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
    // Blank column to account for names of choices
    [],
    ..for property in properties {
      ([ *#property* ],)
    },
    [*Total*],
    ..for (index, element) in totaled_choices.flatten().enumerate() {
      if calc.rem(index, properties.len() + 2) == 0 {
        ([ *#element* ],)
      } else {
        ([ #element ],)
      }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
  )
}

#let nb_decision_matrix(properties: (), choices: ()) = {
  for choice in choices {
    if not (choice.len() - 1) == properties.len() {
      panic("a choice did not have the right amount of properties")
    }
  }

  let totaled_choices = choices.map(
    choice => {
      let total = 0
      for element in choice {
        if type(element) == "integer" or type(element) == "float" { total += element }
      }
      choice + (total,)
    },
  )

  let highest = (index: 0, value: 0)

  for (index, choice) in totaled_choices.enumerate() {
    if choice.at(choice.len() - 1) > highest.value {
      highest.index = index + 1
      highest.value = choice.at(choice.len() - 1)
    }
  }

  set align(center)
  tablex(
    auto-lines: false,
    columns: properties.len() + 2,
    // 1 column for the names, one for the total
    fill: (_, row) => {
      if row == highest.index { green.lighten(50%) }
      if calc.odd(row) and not row == highest.index { surface_3 }
      if calc.even(row) and not row == highest.index { surface_1 }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
    // Blank column to account for names of choices
    [],
    ..for property in properties {
      ([ *#property* ],)
    },
    [*Total*],
    ..for (index, element) in totaled_choices.flatten().enumerate() {
      if calc.rem(index, properties.len() + 2) == 0 {
        ([ *#element* ],)
      } else {
        ([ #element ],)
      }
    },
    hlinex(stroke: (cap: "round", thickness: 2pt)),
  )
}
#import "../globals.typ": entries

#let entry_page_list() = locate(
  loc => {
    let headings = query(selector(<nb_entry>), loc)

    let enumerated-entry-list = entries.final(loc).enumerate().map(
      it => {
        it.last().body = counter(page).at(headings.at(it.first()).location()).at(0)
        it
      }
    )

    let entry-list = ()

    for (index, entry) in enumerated-entry-list {
      entry-list.push(entry)
    }
    
    entry-list
  }
)

#let signature-list() = {
  locate(
    loc => {

      for name in ("Ajibola", "Jin", "Ishika", "Makhi", "Eric", "Rory") {
        table(
          columns: 2,
          rows: 3,

          [= #name], [],
          [== Designed By Pages], [== Witnessed By Pages],
          {
            let valid_entries = entries.final(loc).enumerate()

            valid_entries = valid_entries.filter(
              entry => {
                entry.last().designed.match(name) != none
              }
            )

            for (index, entry) in valid_entries [
              #let page = counter(page).at(query(selector(<nb_entry>), loc).at(index).location()).at(0)

              #page,
            ]
          },
          {
            let valid_entries = entries.final(loc).enumerate()

            valid_entries = valid_entries.filter(
              entry => {
                entry.last().witnessed.match(name) != none
              }
            )

            for (index, entry) in valid_entries [
              #let page = counter(page).at(query(selector(<nb_entry>), loc).at(index).location()).at(0)

              #page,
            ]
          },
        )
      }
    }
  )
}
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
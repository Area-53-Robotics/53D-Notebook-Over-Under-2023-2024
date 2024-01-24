#import "../globals.typ": entries


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
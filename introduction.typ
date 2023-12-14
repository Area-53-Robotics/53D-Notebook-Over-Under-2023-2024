#import "/template/entries.typ": *
#import "/template/colors.typ" : *
#import "/template/widgets.typ" : *

#page(
  margin: (left: 5em, right: 5em),
  background: nb_side_margin_color(color: gray),
  header: nb_heading([53D Members], level: 0),
  footer: [
    #nb_frontmatter_footer()
  ],
  [

    // TODO: move to template
    #let nb_member(name: "", picture: "", color: green, body) = [
      #showybox(
        title-style: (
          boxed-style: (
            anchor: (
              x: center,
              y: horizon
            ),
            radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
          ),
          weight: "bold"
        ),
        frame: (
          title-color: color.darken(40%),
          body-color: color.lighten(80%),
          border-color: color.darken(60%),
          radius: (top-left: 10pt, bottom-right: 10pt, rest: 0pt),
          inset: 20pt,
          width: 200pt,
          height: 170pt,
        ),
        title: name,
      )[
        #grid(
          columns: 2,
          gutter: 20pt,
          align(center, image(width: 90pt, height: 90pt, picture)),
          align(left, body),
        )
      ]
    ]

    #align(
      center,
    )[
      #grid(
        columns: 2,
        rows: 3,
        gutter: 20pt,
        nb_member(name: "Ajibola Ajani", picture: "./assets/members/ajibola.jpg")[
          - Grade: 11
          - First Season: Tipping Point
          - Team Leader
          - Programmer
          - Notebooker
          - Designer
        ],
        nb_member(name: "Jin Hao Cao", picture: "./assets/members/jin.jpg")[
          - Grade: 11
          - First Season: Tipping Point
          - Builder
          - Notebooker
          - Designer
        ],
        nb_member(name: "Ishika Saha", picture: "./assets/members/ishika.png")[
          - Grade: 9
          - First Season: Over Under
          - Programmer
          - Notebooker
        ],
        nb_member(name: "Makhi Epps", picture: "./assets/members/makhi.jpg")[
          - Grade: 8
          - First Season: TippingPoint
          - Builder
          - Designer
          - Driver
        ],
        nb_member(name: "Eric Singer", picture: "./assets/members/eric.png")[
          - Grade: 9
          - First Season: Over Under
          - Builder
        ],
        nb_member(name: "Rory Cullum", picture: "./assets/members/rory.jpg")[
          - Grade: 9
          - First Season: Over Under
          - Builder
        ],
      )

      \
      \
      
      #nb_admonition(
        type: "note",
        [
          The following people have left during the season:
        ],
      )
    
      #grid(
        columns: 2,
        rows: 1,
        gutter: 20pt,
        nb_member(name: "Emma Cantwell", picture: "./assets/members/emma.png", color: gray)[
          - Grade: 11
          - First Season: Spin Up
          - Notebooker
          - Builder
        ],
        nb_member(name: "Von Skaggs", picture: "./assets/members/von.jpg", color: gray)[
          - Grade: 10
          - First Season: Tipping Point
          - Lead Builder
          - Designer
        ],
      )
    ]

  ],
)

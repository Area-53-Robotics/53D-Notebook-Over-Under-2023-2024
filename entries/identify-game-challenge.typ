#import "/template/entries.typ": create_entry
#import "/template/widgets.typ": *
#include "/template/codly.typ"

#create_entry(
  title: "Game Challenge Analysis",
  type: "identify",
  start_date: datetime(year: 2023, month: 4, day: 30),
  attendance: "Ajibola, Emma, Von",
  [
    #nb_todo(schedule: "N/A")[
      + Analyze the game challenge rules to identify the game objectives for the season. (Everyone)
    ]

    #nb_heading(
      [Field Elements #footnote(
          [All images and diagrams are sourced from #link(
              "https://content.vexrobotics.com/docs/23-24/vrc-overunder/VRC-Manual-2324-1.1-Release.pdf",
            )],
        )],
    
      level: 1,
    )

    #grid(
      columns: (1fr, 1fr),
      rows: auto,
      gutter: 50pt,

      [#image("/assets/field-elements/game-field.png")],
      [
        #nb_heading([Field Overview], level: 1)
        - Two Alliances, one “red” and one “blue”, composed of two teams on each side
        - 12ft x 12ft foam mat, surrounded by a perimeter and divided in half by a barrier spanning the length of the field.
        -The VRC Over Under field consists of sixty Triballs. 
        - Each Alliance has:
          - 1 Goal
          - 2 Match Load Zones
          - 1 set of Alliance Elevation Bars
      ],
      [
        #nb_heading([Triballs], level: 1)
        - 60 total Triballs can be in play
        - 2 Alliance Triballs per team
        - 22 Match Load Triballs per alliance
        - 12 Field Triballs
        - 6.18” tall
        - Weight of 103-138g
        - Abnormal shape (Reuleaux triangle)
      ],
      [#image("/assets/field-elements/triball.png", height: 50%)],
      [#image("/assets/field-elements/elevation-bar.png")],
      [
        #nb_heading([Elevation Bar], level: 1)
        - Ground level to bar - 14.01 inches
        - Ground to top most level - 30.23 inches
        - One elevation bar per alliance
      ],
      [
        #nb_heading([Goal], level: 1)
        - Total length - 47.13 inches 
        - Gap length - 39.37 inches
        - Width - 19.20 inches
        - Height (exclude net) - 5.78
        - Degree of net - 14.27 degrees
        - One per alliance 
      ],
      [#image("/assets/field-elements/goal1.png")],
      [
        #nb_heading([Match Load Zones], level: 1)
        - Length - 30 inches
        - Height - 2.38 inches
        - Distance away from corner - 17.33 inches 
        - Degree - 45 degrees
        - 2 per alliance 
      ],
      [#image("/assets/field-elements/load-zone.png")],
      [#image("/assets/field-elements/load-zone.png")],
      [
        // TODO: Get image for robot skills challenge
        #nb_heading([Robot Skills Challenge], level: 1)
        - One minute long Matches in an effort to score as many points as possible.
        - These Matches consist of Driving Skills Matches, which are entirely driver-controlled, and Autonomous Coding Skills Matches, which are autonomous with limited human interaction.
        - Teams will be ranked based on their combined score in the two types of Matches.
        - The two (2) Blue Alliance Triball Preloads will not be used
        - All of the forty-four (44) Match Load Triballs will be located in the red Alliance Station
      ],
    )

    #nb_heading([Robot Rules], level: 1)
    - \<R4> Robot must fit within an 18” x 18” x 18” volume
    - \<SG2> Horizontal expansion is limited to 36”
    - There is NO limit on vertical expansion

    #nb_heading([Autonomous], level: 1)
    - \<SG1> Each robot must begin the match on their alliance's starting tiles that are adjacent to their alliance robot
    - \<SG9> Stay in your starting Zone during Autonomous: During the Autonomous Period, Robots may not contact foam tiles, Triballs, or Field Elements on the opposing Alliance's side of the Neutral Zone, or in the opposite Offensive Zone from which they began the Match.
    - \<SC7> Autonomous Win Point Conditions:
      - Removed the triball from the Alliance's Match Load Zone that coincides with their Starting Tiles
      - Scored at least one Alliance Triball in the Alliance's own Goal
      - Ended the Autonomous Period with at least one Robot contacting their own Elevation Bar
    - Autonomous Bonus: 8 pts

    #nb_admonition(type: "note")[
      \<SG9> makes a solo autonomous win point impossible to acheive unless you can consistently score into your goal from across the field. It is highly unlikely that teams will be able to do this, especially at the beginning of the season.
    ]

    #nb_heading([Match Scoring], level: 1)
    #table(columns: 2, rows: 7,
      [Autonomous Bonus], [8 Points],
      [Each Triball Scored in a Goal], [5 Points],
      [Each Triball Scored in an Offensive Zone], [2 Points],
      [Elevation - Top Tier], [20 Points],
      [Elevation - 2nd Tier], [15 Points],
      [Elevation - 3rd Tier], [10 Points],
      [Elevation - 4th Tier], [5 Points]
    )
  ]
)
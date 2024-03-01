#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #2 - Catapult #1 Improvements",
  type: "build",
  start_date: datetime(year: 2023, month: 11, day: 10),
  end_date: none,
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi",
  designed: "Makhi",
  witnessed: "Eric",
)

We don't plan on making any major rebuilds until the winter break in December. Right now, what we're focusing on is tuning the robot for the Hereford Zone Stampede Tournament on 2023/12/02. We are satisfied with the strategy behind our current robot because it allows us to descore when the opposing team double zones, and the Dulaney tournament showed that we are one of the only teams that takes advantage of this aspect of the game. However, we noticed that the catapult was lacking, and we would need to fix it before the Hereford tournament.

= #datetime(year: 2023, month: 11, day: 10).display("[year]/[month]/[day]")
#nb_todo(
  date: datetime(year: 2023, month: 11, day: 10),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Scrutinize the catapult design for any flaws (Everyone)"),
    (true, "Brace any parts of the catapult that lack support (Makhi, Eric, and Rory)"),
  )
)

Upon the result of the Dulaney tournament, we scrutinized the structural integrity of the catapult arm, the tension in rubber bands used for propulsion, and the precision of the release mechanism. Through systematic troubleshooting, we identified a few flaws in the catapult build:

#nb_admonition(type: "identify", title: "Sub-Identify: Catapult Problems")[
  - Misalignments between the frame of the catapult arm on both sides
  - The catapult arm being slanted to the right, interfering with the arc of the triballs
]

== Delegation
- Inventory (collecting materials from the manifest to fix the catapult): Ishika & Rory
- Manufacturing (cutting pieces to size, cleaning sharp edges, & slipping gears): Eric & Ajibola
- Raise the catapult arm higher: Makhi, Eric, & Rory
- Raise the length of the catapul towers: Makhi & Ajibola
- Oversight & Quality Control: Ajibola
- Initial Testing: Everyone
- Programming: Ishika and Ajibola

== Materials
- The materials that we need to fix the issues we noticed at the tournament are all small pieces found in our toolbox


#gridx(
  columns: 2,
  rows: auto,

  [
    == Troubleshooting
    - #text(red)[Problem:] The intake had a hard time intaking directly into the catapult.
    - Possible Solutions:
      - #text(green)[Solution:] Lowering the catapult base, which will in turn lower the catapult arm.
        - This failed because electronics such as the brain prevent us from lowering the catapult base as far as we need
      - #text(green)[Solution:] Create a ramp that helps triballs travel to the catapult.

    == Assembly
    - Disassembled the catapult arm
      - *Reason:* The catapult had a hard time collecting the triball that were intake because it was too short.
    - Gathered 2 plates to create a new catapult arm
      - Connected them with a stand-off
      - Created a wider catapult base to ensure the the triball can rest on it easier
  ],
  figure(
    image("./build/11-10.png", height: 100%),
    caption: [
      Front view of the new catapult. What's different about this catapult compared to the old one is that it now has a wider base.
    ]
  )
)
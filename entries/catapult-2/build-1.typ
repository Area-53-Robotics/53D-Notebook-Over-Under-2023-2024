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

#gridx(
  columns: 1,
  rows: auto,
  auto-hlines: false,

  gridx(
    columns: 2,
    rows: auto,

    cellx(colspan: 2)[
      = #datetime(year: 2023, month: 11, day: 10).display("[year]/[month]/[day]")
      #nb_todo(
        date: datetime(year: 2023, month: 11, day: 10),
        monthly-schedule: none,
        yearly-schedule: none,
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
    ],
    [
      == Build Steps
      - Disassembled the catapult arm
        - *Reason:* The catapult had a hard time collecting the triball that were intake because it was too short.
      - Gathered 2 plates to create a new catapult arm
        - Connected them with a stand-off
        - Created a wider catapult's base to ensure the the triball can rest on it easier
      - #text(red)[Problem:] The Intake had a hard time intaking directly into the catapult.
        - Possible Solutions:
          - #text(green)[Solution:] Lowering the catapult base, which will in turn lower the catapult arm.
            - This failed because electronics such as the brain prevent us from lowering the catapult base as far as we need
          - #text(green)[Solution:] Create a ramp that helps triballs travel to the catapult.
    ],
    [#image("./build/11-10.png", height: 100%)],
  ),
)
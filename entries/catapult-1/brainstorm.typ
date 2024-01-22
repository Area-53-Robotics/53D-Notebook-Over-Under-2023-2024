#import "/template/template.typ": *

#show: create_entry.with(
  title: "Catapult #1",
  type: "brainstorm",
  start_date: datetime(year: 2023, month: 9, day: 23),
  attendance: "Ajibola, Ishika, Eric, Makhi",
  designed: "Ajibola",
  witnessed: "Makhi",
)

While we identified most of the benefits of a catapult in general, there are specific benefits and drawbacks to each type of catapult. We talked with some Area 53 alumni to identify the specific pros and cons of each catapult type.

#nb_pro_con(
  name: "Catapult",
  image: [
    #box(image("./brainstorm/cata.svg"), height: 10em),
    #box(image("./brainstorm/cata-front.svg"), height: 10em),
  ],
  pros: [
    - *Angle* - Due to the catapult's nature, it will result in higher trajectories
    - *Familiarity* - The majority of the club has constructed this catapult before
  ],
  cons: [
    - *Speed* - This version has a long rewind time, making fast cycles difficult
    - *Maintenance* - The moving parts of a catapult, including the release mechanism and tensioning system, may experience wear over time.
  ],
  notes: [
    - Very easy to teach the novice builders to make
  ],
)

#colbreak()

#nb_pro_con(
  name: "Scata",
  image: [
    #box(image("./brainstorm/scata.svg"), height: 10em),
    #box(image("./brainstorm/scata-front.svg"), height: 10em),
  ],
  pros: [
    - *Powerful* - Uses two sets of rubber bands on each side instead of one
    - *Accuracy* - Higher accuracy than the normal catapult due to its unique structure
    - *Alignment* - The main benefit is that it keeps the alignment of object placed the same
  ],
  cons: [
    - *Space* - Incredibly bulky and wide. 
    - *Difficulty* - The Scata is a mixed hybrid of a four-bar and catapult. It will be harder to teach the novices how to build it
  ],
  notes: [
    - Very impractical for this season because of the abnormal triball shape
  ],
)

#nb_pro_con(
  name: "Low Cata",
  image: [
    #box(image("./brainstorm/low-cata.svg"), height: 10em),
    #image("./brainstorm/low-cata-front.svg")
  ],
  pros: [
    - *Intaking* - Having the catapult low to the ground helps with intaking to the catapult
    - *Trajectory* - The low angle allows for steeper trajectory, creating the possibility of shooting directly into the goal.
    - *Descoring* - With a low cata our robot would remain short enough to go under the opposing teams nets to descore triballs.
  ],
  cons: [
    - *Block* - It is a lot easier for other teams to block our shots because of how low it is
    - *Tension* - Due to the nature of rubber bands, having the towers being so close to the ground will make it more challenging to tension
  ],
  notes: [],
)
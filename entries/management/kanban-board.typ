#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kanban Board",
  type: "management",
  start_date: datetime(year: 2023, month: 9, day: 30),
  attendance: "Ajibola, Ishika, Eric, Rory, Makhi,",
)

#nb_todo(date: datetime(year: 2023, month: 9, day: 30))[
  + Evaluate our current project workflow and management to identify improvements that can be made. (Everyone)
  + Plan out the October meetings by creating a Gantt chart (Everyone)
  + Create the gear box of the catapult
  + Being building the catapult arm (Eric, Rory, and Ishika)
  + Slip the gears and tension it with rubber bands (Ajibola and Makhi)
]

Before our usual practice time today, a guest speaker came in to teach all of the 53 squads new project management strategies. We were taught about the Waterfall methodology and the Agile methodology and were subsequently encouraged to pick one of them to implement.

#tablex(
  columns: 2,
  rows: 5,
  auto-lines: false,

  cellx(colspan: 2)[
    = Waterfall Methodology
    == Qualities
    - Every step is sequential and must be completed before continuing to the next phase.
  ],
  [
    == Steps
    + *Requirements* - Identify the project requirements, detail what is needed to complete the project, and determine the definition of “done.”
      - Correlates with the “Identify” EDP step
    + *Design* - Create the design of the solution through CAD, sketches, mock-ups, etc.
      - Correlates with the “Brainstorm” and “Select” EDP steps
    + *Implementation* - Build the solution
      - Correlates with the “Build” and “Program” EDP steps
    + *Verification* - Test if the solution meets all of the identified project requirements
      - Correlates with the “Test” EDP step
    + *Maintenance* - Ensure the solution is kept functional after its completion
      - The EDP does not have a step dedicated to this, but it achieves a similar goal by being a cycle
  ],
  cellx(align: center + horizon)[#image("./kanban-board/waterfall-methodology.svg", height: 100%)],
  cellx(colspan: 2)[
    = Scrum Methodology
    == Qualities
    - A very quick-paced management method where the goal is to get a usable product out as quick as possible, not the best product out after a long time of waiting.

    == Steps
    + *Sprint Backlog* - Identify the task(s) from the backlog that need to be completed
      - Correlates with the “Identify” EDP step
  ],
  [
    2. *Iterative Cycle* - This is repeated multiple times over set time intervals, such as every 3 weeks. The cycle is repeated until we meet the definition of “done.”
      - *Planning* - Plan the solution through CAD, sketches, mock-ups, etc.
        - Correlates with the “Brainstorm” and “Select” EDP steps
      - *Implementation* - Build the solution
        - Correlates with the “Build” and “Program” EDP steps
      - *Review* - Verify that the solution meets all criteria identified during the “Sprint Backlog” phase
        - Correlates with the “Test” EDP step
      - *Retrospect*
        - This step is unique to the Scrum methodology, putting an emphasis on looking at past successes and failures to improve future designs.
  ],
  cellx(align: center + horizon)[#image("./kanban-board/scrum-methodology.svg")],
  cellx(colspan: 2)[
    3. *Definition of Done*
      - If the solution meets the definition of “done,” then restart the Scrum Methodology from the “Sprint Backlog” phase with a new task that needs to be completed.
      - If the solution does not meet the definition of “done,” then restart the Iterative Cycle.
  ]
)

  = Our Implementation
  We decided to use the Scrum Methodology because it correlated the best with both the fluidity and habits of the engineering design process 53D had already been applying. 
  We began our implementation by creating a Kanban Board to contain tasks that are "Completed", "To-Do," and "In-Progress." At the beginning of each meeting, we plan to take some of the most urgent tasks from the "To-Do" section, and create a To-Do list for the day by assigning some of those tasks to each team member. We hope that by implementing the Scrum methodology, we can have a faster workflow during the rest of the season.

#align(center)[
  #figure(
    image("./kanban-board/kanban-board.jpg", height: 30%),
    caption: [Our new Kanban Board!]
  )
]

#nb_admonition(type: "note")[
  The To-Do list that we create for each day will be visualized in the notebook through the gray "To-Do" admonition at the beginning of the day's entry.
]
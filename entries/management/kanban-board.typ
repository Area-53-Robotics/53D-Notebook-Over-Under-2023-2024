#import "/template/template.typ": *

#show: create_entry.with(
  title: "Kanban Board",
  type: "management",
  start_date: datetime(year: 2023, month: 9, day: 30),
  attendance: "Ishika, Eric, Rory",
)

#nb_todo(date: datetime(year: 2023, month: 9, day: 30), schedule: "")[
  + Evaluate our current project workflow and management to identify improvements that can be made. (Everyone)
  + Plan out the October meetings by creating a Gantt chart (Everyone)
  + Begin building the low catapult (Eric and Rory)
]

Before our usual practice time today, a guest speaker came in to teach all of the 53 squads new project management strategies. We were taught about the Waterfall methodology and the Agile methodology and were subsequently encouraged to pick one of them to implement.

= Waterfall Methodology
Qualities:
- Every step is sequential and must be completed before continuing to the next phase.

Steps:
- Requirements - Identify the project requirements, detail what is needed to complete the project, and determine the definition of “done.”
  - Correlates with the “Identify” EDP step
- Design - Create the design of the solution through CAD, sketches, mock-ups, etc.
  - Correlates with the “Brainstorm” and “Select” EDP steps
- Implementation - Build the solution
  - Correlates with the “Build” and “Program” EDP steps
- Verification - Test if the solution meets all of the identified project requirements
  - Correlates with the “Test” EDP step
- Maintenance - Ensure the solution is kept functional after its completion
  - The EDP does not have a step dedicated to this, but it achieves a similar goal by being a cycle

= Scrum Methodology
Qualities:
- A very quick-paced management method hwere the goal is to get a usable product out as quick as possible, not the best product out after a long time of waiting.

Steps:
+ Sprint Backlog - Identify the task(s) from the backlog that need to be completed
  - Correlates with the “Identify” EDP step
+ Iterative Cycle - This is repeated multiple times over set time intervals, such as every 3 weeks. The cycle is repeated until we meet the definition of “done.”
  - Planning - Plan the solution through CAD, sketches, mock-ups, etc.
    - Correlates with the “Brainstorm” and “Select” EDP steps
  - Implementation - Build the solution
    - Correlates with the “Build” and “Program” EDP steps
  - Review - Verify that the solution meets all criteria identified during the “Sprint Backlog” phase
    - Correlates with the “Test” EDP step
- Retrospect
  - This step is unique to the Scrum methodology, putting an emphasis on looking at past successes and failures to improve future designs.
+ Definition of Done
  - If the solution meets the definition of “done,” then restart the Scrum Methodology from the “Sprint Backlog” phase with a new task that needs to be completed.
  - If the solution does not meet the definition of “done,” then restart the Iterative Cycle.

= Our Implementation
We decided to use the Scrum Methodology because it correlated the best with both the fluidity habits of the engineering design process 53D had already been applying. 
We began our implementation by creating a Kanban Board to contain tasks that are "Completed", "To-Do," and "In-Progress." We hope that by implementing the Scrum methodology, we can have a faster workflow during the rest of the season.

#align(center + horizon)[
  #figure(
    image("/assets/management/kanban-board.jpg", width: 75%),
    caption: [Our new Kanban Board!]
  )
]
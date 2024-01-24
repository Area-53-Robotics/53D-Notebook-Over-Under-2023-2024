#import "/template/template.typ": *

#show: create_entry.with(
  title: "GitHub Workflows",
  type: "program",
  start_date: datetime(year: 2023, month: 11, day: 19),
  attendance: "Ajibola, Ishika",
  designed: "Ajibola",
  witnessed: "Ishika",
)

#nb_todo(
  date: datetime(year: 2023, month: 11, day: 19),
  (
    (true, "Configure GitHub workflows for our program repositories (Ajibola)"),
    (false, "Create a pre-autonomous menu selection screen (Ajibola)"),
  )
)

#nb_admonition(type: "note")[
  The work done today was done during Thanksgiving break, and not at an official Area 53 meeting. Only Ajibola worked on the code, and Ishika peer reviewed it afterward.
]

We decided to dedicate some time during our break to streamline our our usage of GitHub repositories. #glossary_footnote[Repository] We determined that we can do this by using GitHub workflows, which can be used to automate tasks after commits (changes) are made to a repository.

#nb_admonition(type: "identify", title: "Sub-Identify: GitHub Workflows")[
  Some aspects of our GitHub repositories that we wanted to automate are:
  - Checking whether the new version of a program that has been committed to the repository is error-free
  - Automatically uploading the new version of the digital notebook to GitHub and to Discord when changes are made
  - Automatically performing spell checks on the notebook when changes are made
]

= Robot Code Compilation Workflow
A major problem we have faced throughout the year is that when one of our programmers makes a change to the program and pushes it to the repository, they may not have checked for compilation errors in the program. This can slow down work when another programmer downloads the changes to their computer and are not able to find out where the error is coming from. This type of miscommunication can be especially dangerous during high stress situations such as competitions.

We solved this problem by creating a workflow that tests if the program has no compilation errors. The workflow creates a Linux virtual machine that attempts to build the code in the ```cpp 53D_OverUnder``` repository.
- If the build succeeds, we will get a success message and no further steps are taken
- If the build fails, we can access the error messages through GitHub and appropriately fix the problem

Here is the final workflow code:

#colbreak()

#align(center)[*53D_OverUnder/.github/workflows/pros-build.yml*]
#raw(block: true, lang: "yml", read("./github-workflows/pros-build.yml"))

When the workflow succeeds, we get a message in our Discord that looks like this:

#image("./github-workflows/pros-build-test.png")

= Digital Notebook Compilation Workflow
One major disadvantage of writing our notebook using Typst #glossary_footnote[Typst] instead of doing it on a platform such as Google Slides is that the members on our team who do not have easy access to the notebook's GitHub repository cannot access the digital notebook on demand.

To solve this, we created a GitHub workflow that compiles the notebook when changes are made to it and uploads it to both GitHub and Discord. The notebook getting uploaded to GitHub and Discord gives us a few benefits:
- Discord is a cross-platform application, so the digital notebook can be accessed by anyone on our team, at any time, on any device, including phones, tablets, and laptops.
- Team members can reference the notebook whenever they need to, such as being able to cross-reference the CAD designs when rebuilding a subsystem or replacing a part.
- We now have a contingency copy of the notebook saved to GitHub if anything were to happen to the printed physical version.

Here is the final workflow code:

#align(center)[*53D_OverUnder-Over-Under-Notebook/.github/workflows/build.yml*]
#raw(block: true, lang: "yml", read("./github-workflows/build.yml"))

When the workflow is completed, the notebook can be downloaded from our Discord by team members from a message that looks like this:

#image("./github-workflows/notebook-build-message.png", height: 8em)


= Digital Notebook Spell Check Workflow
The last problem that we addressed using GitHub workflows is spell checking the notebook. Because our notebook is written in Typst, a lot of the writing is done in VSCode,#glossary_footnote[Visual Studio Code] which does not have easy access to spell checks. To spell check changes made to the notebook, we used a spell check workflow action called Typos. #footnote[The Typos GitHub repository can be found at https://github.com/crate-ci/typos] Typos is far from perfect and leaves unaddressed mistakes sometimes, but it is better than having nothing.

Here is the final workflow code:

#align(center)[*53D_OverUnder-Over-Under-Notebook/.github/workflows/typos.yml*]
#raw(block: true, lang: "yml", read("/.github/workflows/typos.yml"))

When the workflow is completed, if there is are no detected spelling errors in the notebook, a workflow success message will be sent to our Discord that looks like this:

#image("./github-workflows/notebook-spelling-message.png", height: 17em)

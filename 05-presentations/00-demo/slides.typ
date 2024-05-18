#import "../../00-templates/slides_template.typ": *
#import "../../01-settings/metadata.typ": *


#show: doc => slide_template(
  title: title,
  subtitle: subtitle,
  authors: author.name,
  date: [Saturday, 18th May #datetime.today().display("[year]")],
  //duration: 10, // time in minutes for presentation or counter timer if no field is given
  doc,
)

#slide(
  title: [First slide title]
)[
  #lorem(20)

  #pdfpc.speaker-note("This is a note that only the speaker will see.")
]

#focus-slide(
  foreground: white,
  background: rgb("#ea366a")
)[

  _Focus!_

  This is very important.
]

#new-section-slide("Let's start a new section!")

#slide(
  title: [Dynamic slide]
)[
  Did you know that...

  #pause
  ...you can see the current section at the top of the slide?

  #pdfpc.speaker-note(
    ```md
    # My notes
    Did you know that pdfpc supports Markdown notes? _So cool!_
    ```
  )
]

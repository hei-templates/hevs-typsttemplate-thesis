#import "/00-templates/constants.typ": *
#import "/01-settings/metadata.typ": *
// HEADER
#let summary(
  title: none,
  student: none,
  picture: none,
  year: none,
  degree: none,
  field: none,
  professor: none,
  partner: none,
  objective: none,
  body
) = {
  set page(
    margin: (
      top: 5.5cm,
      bottom: 3cm,
      x: 1.8cm,
    ),
    header: [
      #image(resources-folder + "logos/hei-vs-light.svg", width: 7.5cm)
    ],
    footer: [
      #table(
        columns: (11cm, 4cm, 1.5cm, auto),
        stroke: none,
        align: left + horizon,
        [
          #image(resources-folder + "logos/hes-adresse.png", width: 6.8cm)
        ],[
          #image(resources-folder + "logos/swissuniversities.png", width: 3.3cm)
        ],[
          #image(resources-folder + "logos/equal_salary.png", width: 1cm)
        ],[
          #image(resources-folder + "logos/valais-excellence-logo.svg", width: 1.1cm)
        ]
      )
    ],
  )

  set text(size: 9pt)
  set par(justify: true)

  table(
    columns: (5.4cm, 1.2cm, 1fr),
    stroke: none,
    inset: 0pt,
    [
      #if picture != none {
        image(picture, fit: "contain", width: 5.4cm, height: 8.1cm)
      } else {
        image(placeholder, width: 5.4cm, height: 8.1cm)
      }
    
      #v(1cm)

      #align(center)[
        #heading(level: 3, numbering:none, outlined: false)[
          #text(15pt)[
            Bachelor's Thesis\ | #h(0.3cm) #year #h(0.3cm) |
          ]
        ]
      ]
      

      #v(0.5cm)

      #square(size: 0.7cm, fill: blue.lighten(70%))

      #v(0.6cm)
      #set text(size: 10pt)

      Degree programme\
      _#[#degree]_

      #v(0.6cm)

      Field of application\
      _#[#field]_

      #v(0.6cm)

      #if professor != none {[
        Supervision professor\
        _#[#professor.name]_\
        _#[#professor.email]_
        #v(0.6cm)
      ]}


      #if partner != none {[
        Partner\
        _#[#partner.name]_\
        _#[#partner.affiliation]_
      ]}

    ],[],[
      #align(left, text(15pt)[
        #heading(numbering:none, outlined: false)[#title]
      ])
      #table(
        columns: (1cm, 3.5cm, 1fr),
        stroke: none,
        align: left + horizon,
        [
          #square(size: 0.7cm, fill: blue.lighten(70%))
        ],[
          #set text(
            size: 12pt,
            fill: gray.darken(50%),
          )
          Graduate
        ],[
          #set text(size: 10pt)
          #student
        ]
      )

      #v(1.5cm)
      
      #heading(level: 3, numbering:none, outlined: false)[
        #text(12pt)[Objective]
      ]

      #if objective == none {
        text(red)[Description (one sentence with max. 240 characters, with spaces.) ]
        lorem(20)

      } else {
        objective
      }

      #v(0.6cm)

      #heading(level: 3, numbering:none, outlined: false)[
        #text(12pt)[Methods | Experiences | Results]
      ]
      
      #body
    ]
  )
}




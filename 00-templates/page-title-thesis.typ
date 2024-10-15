//
// Description: Title page for the thesis template
// Author     : Silvan Zahno
//
#import "/00-templates/helpers.typ": *

#let page-title-thesis(
  title: none,
  subtitle: none,
  templateType: "thesis",
  date: datetime.today(),
  school: none,
  author: (),
  professor: none,
  expert:none,
  icons: (
    topleft: none,
    topright: none,
    bottomleft: none,
    bottomright: none,
  ),
  extra-content-top: none,
  extra-content-bottom: none,
) = {

  set page(
    margin: (
      top:3.0cm,
      bottom:3.0cm,
      rest:3.5cm
    )
  )

  //-------------------------------------
  // Variables
  //
  let orientation = if school != none {
    if "orientation" in school {
      school.orientation
    } else {none}
  } else {none}

  let specialisation = if school != none {
    if "specialisation" in school {
      school.specialisation
    } else {none}
  } else {none}

  let thesis = if templateType == "thesis" {true}
  else {false}

  let midterm = if templateType == "midterm" {true}
  else {false}


  //-------------------------------------
  // Page content
  //
  let content-up = {
    //line(length: 100%)
    if school != none {
      //v(0.5fr)
      // Degree Programme
      if thesis or midterm {
        if orientation != none {
          align(center, [#text(size:larger, 
            [Degree Programme]
          )])
          v(1em)
        }
      }

      // Orientation
      if orientation != none {
        align(center, [#text(size:larger,
          school.orientation
        )])
        v(1em)
      }

      // Specialisation
      if specialisation != none {
        align(center, [#text(size:large,
          [Major #school.specialisation]
        )])
        v(2em)
      }
    }

    if extra-content-top != none {
      extra-content-top
    }

    // BACHELOR'S THESIS / Midterm Report
    if thesis {
      align(center, [#text(size:huge,
        [*BACHELOR'S THESIS*]
      )])
      v(1em)
    } else if midterm{
      align(center, [#text(size:huge,
        [*Midterm Report*]
      )])
      v(1em)
    }

    // DIPLOMA YEAR
    if thesis or midterm {
      align(center, [#text(size:huge, 
        [*DIPLOMA #date.display("[year]")*]
      )])
      v(1em)
    }

    // AUTHORs
    align(center, [#text(size:large, [
      #if type(author) == array [
        #enumerating_authors(
          items: author,
          multiline: true,
        )
      ] else [
        #author.name
      ]
      #v(2em)
    ])])
    

    titlebox(
      title: title,
      subtitle: subtitle,
    )

    if extra-content-bottom != none {
      extra-content-bottom
    }
    

  }

  let content-down = [
    #v(2em)
    #if professor != none [
      Professor \
      #professor.name, #link("mailto:professor.email")[#professor.email]
      \ \
    ]
    #if expert != none [
      Expert \
      #expert.name, #link("mailto:expert.email")[#expert.email]
      \ \
    ]
    _Submission date of the report_ \
    #date.display("[day] [month repr:long] [year]")
    #v(1em)
  ]



  grid(
    columns: (50%, 50%),
    rows: (10%, 63%, 20%, 7%),
    align(left+horizon)[#icons.topleft],
    align(right+horizon)[#icons.topright],
    //stroke: 0.5pt,
    grid.cell(
      colspan: 2,
      align(horizon)[#content-up]
    ),
    grid.cell(
      colspan: 2,
      align(horizon)[#content-down]
    ),
    align(left+horizon)[#icons.bottomleft],
    align(right+horizon)[#icons.bottomright],
  )

}
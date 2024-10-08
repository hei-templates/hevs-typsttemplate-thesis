//
// Description: Title page for the thesis template
// Author     : Silvan Zahno
//
#import "/00-templates/helpers.typ": *

#let page-title-thesis(
  title: none,
  date: (),
  school: (),
  author: (),
  professor: (),
  expert:(),
  icons: (
    topleft: none,
    topright: none,
    bottomleft: none,
    bottomright: none,
  ),
) = {
  table(
    stroke:none,
    columns: (50%, 50%),
    align: (x, y) => (left, right).at(x),
    [#if icons.topleft != none {[#image(icons.topleft, width:6cm)]} else {[]}],
    [#if icons.topright != none {[#image(icons.topright, width:4cm)]} else {[]}],
  )

  v(1fr)
  align(center, [#text(size:larger, "Degree Programme")])
  v(1em)
  align(center, [#text(size:larger, school.orientation)])
  v(1em)
  align(center, [#text(size:large, [Major #school.specialisation])])
  v(2em)
  align(center, [#text(size:huge, [*BACHELOR'S THESIS*])])
  v(1em)
  align(center, [#text(size:huge, [*DIPLOMA #date.year*])])
  v(1em)
  align(center, [#text(size:large, [#author.name])])
  v(2em)

  titlebox(
    title: title,
    subtitle: subtitle,
  )

  [
    #v(2em)
    Professor \
    #professor.name, #link("mailto:professor.email")[#professor.email]
    \ \
    Expert \
    #expert.name, #link("mailto:expert.email")[#expert.email]
    \ \
    _Submission date of the report_ \
    #date.submission

    #v(1fr)
  ]

  table(
    stroke:none,
    columns: (50%, 50%),
    align: (x, y) => (left+horizon, right+horizon).at(x),
    [#if icons.bottomleft != none {[#image(icons.bottomleft, width:4cm)]} else {[]}],
    [#if icons.bottomright != none {[#image(icons.bottomright, width:1.5cm)]} else {[]}],
  )
}
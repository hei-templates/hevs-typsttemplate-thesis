#import "../00-templates/helpers.typ": *

#let page-reportinfo(
  author: (),
  date: none,
  signature: none,
) = {
  heading(numbering:none, outlined: false)[Information about this report]

  v(2em)
  [*Contact Information*]

  tablex(
    columns: (auto, auto),
    stroke: none,
    align: left + top,
    rowspanx(3)[Author:], [#author.name],
    [#author.degree Student],
    [#author.affiliation],
    [Email:], [#link("mailto:author.email")[#author.email]],
  )

  v(5em)

  [
    *Declaration of honor*
    I, undersigned, #author.name, hereby declare that the work submitted is the result of a personal work. I certify that I have not resorted to plagiarism or other forms of fraud. All sources of information used and the author quotes were clearly mentioned.
  ]

  tablex(
    stroke: none,
    columns: (auto,auto),
    align: left + horizon,
    [Place, date:], [#author.place, #date],
    [Signature:],
    if signature != none {
        [#line(start: (0cm,2cm),length:5cm) #v(-0.4cm) #pad(x: 2.5em, image(author.signature, width:3cm))]
    } else {
      [#line(start: (0cm,2cm),length:7cm)]
    },
    )
}
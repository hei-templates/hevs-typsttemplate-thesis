//
// Description: HEVS Thesis Typst Template
// Author     : Silvan Zahno
//
#import "helpers.typ": *
#import "page-title-thesis.typ": *
#import "page-reportinfo.typ": *

#let thesis(
  title: none,
  subtitle: none,
  version: none,
  author: (),
  professor: (),
  expert: (),
  school: (),
  date: (),
  lang:"en",
  tableof : (
    toc: true,
    tof: false,
    tot: false,
    tol: false,
    toe: false,
  ),
  icons: (
    topleft: none,
    topright: none,
    bottomleft: none,
    bottomright: none,
  ),
  body) = {
  // Set the document's basic properties.
  set document(author: author.name, title: title)
  set page(margin: (top:3.5cm, bottom:3.5cm, rest:3.5cm))

  // header and footer
  set page(
    header: locate(loc => if loc.page() >=2 [
    #set text(small)
      #h(1fr) #smallcaps(title)
    ]),
    footer: locate(loc => if loc.page() >=2 [
      #set text(small)
      #h(1fr) #counter(page).display("1 / 1", both: true)
    ]),
  )

  // font & language
  set text(
    font: (
      "Linux Libertine",
      "Fira Sans",
    ),
    fallback: true,
    lang:lang
  )
  // paragraph
  show par: set block(spacing: 1em)
  //set par(leading: 0.55em, first-line-indent: 1.8em, justify: true)

  // heading
  show heading: set block(above: 1.2em, below: 1.2em)
  set heading(numbering: "1.1")

  show heading.where(level: 1): (it) => {
    set text(size: huge)
    set block(above: 1.2em, below: 1.2em)
    if it.numbering != none {
      let num = numbering(it.numbering, ..counter(heading).at(it.location()))
      let prefix = num + h(0.5em) + text(code-border)[|] + h(0.5em)
      unshift_prefix(prefix, it.body)
    } else {
      it
    }
  }

  show heading.where(level: 2): (it) => {
    let num = numbering(it.numbering, ..counter(heading).at(it.location()))
    unshift_prefix(num + h(0.8em), it.body)
  }
  //show heading.where(level: 1): set text(size:huge)
  //show heading.where(level: 1): set pad(size:huge)

  // link color
  //show link: it => text(fill:blue, underline(it))
  show link: it => text(fill:hei-blue, it)

  // Math numbering
  set math.equation(numbering: "(1)")

  // code blocks
  set raw(syntaxes:"syntax/VHDL.sublime-syntax")
  show raw.where(block: false): set text(weight: "semibold")
  //show raw.where(block: false): it => {
  //  highlight(
  //    fill:code-bg,
  //    top-edge: "ascender",
  //    bottom-edge: "bounds",
  //    extent:1pt, it)
  //}
  show raw.where(block: true): set text(size: tiny)
  show raw.where(block: true): it => {
    block(
      fill: code-bg,
      width:100%,
      inset: 10pt,
      radius: 4pt,
      stroke: 0.1pt + code-border,
      it,
    )
  }

  // Title page
  page-title-thesis(
    title: title,
    date: date,
    school: school,
    author: author,
    professor: professor,
    expert: expert,
    icons: icons,
  )

  // Report info
  page-reportinfo(
    author: author,
    date: date.current,
    signature: author.signature,
  )

  // Table of content
  pagebreak()
  toc(
    lang: lang,
    tableof: tableof,
  )

  // Main body
  set par(justify: true)

  body
}
#import "helpers.typ": *
#import "page-title.typ": *
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

  // Header and Footer
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
      "New CM Sans",
      "New Computer Modern Sans",
      "Linux Libertine",
      "Fira Sans",
      "New Computer Modern",
    ),
    fallback: true,
    lang:lang
  )
  // paragraph
  show par: set block(spacing: 0.55em)
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
  show raw: set text(size: tiny)
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
  page-title(
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
  if tableof.toc == true {
    outline(
      title: [Table of content],
      indent: true,
    )
  }

  // Table of figures
  if tableof.tof == true {
    outline(
      title: [Table of figures],
      target: figure.where(kind: image),
      indent: true,
    )
  }

  // Table of tables
  if tableof.tot == true {
    outline(
      title: [Table of tables],
      target: figure.where(kind: table),
      indent: true,
    )
  }

  // Table of listings
  if tableof.tol == true {
    outline(
      title: [Table of listings],
      target: figure.where(kind: raw),
      indent: true,
    )
  }

  // Table of equation
  if tableof.toe == true {
    outline(
      title: [Table of equation],
      target: math.equation.where(block:true),
      indent: true,
    )
  }

  // Main body
  set par(justify: true)

  body
}
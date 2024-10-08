//
// Description: Import other modules so you only need to import the helpers
// Use        : #import "../00-templates/helpers.typ": *
// Author     : Silvan Zahno
//
#import "/00-templates/boxes.typ": *
#import "/00-templates/constants.typ": *
#import "/00-templates/items.typ": *
#import "/00-templates/summary.typ": *
#import "/01-settings/metadata.typ": *

// External Plugins
#import "@preview/tablex:0.0.8" : *
#import "@preview/glossarium:0.4.2": *
#show: make-glossary


// Fancy pretty print with line numbers and stuff
#import "@preview/codelst:2.0.1": sourcecode

#let myref(label) = locate(loc =>{
    if query(label,loc).len() != 0 {
        ref(label)
    } else {
        text(fill: red)[?]
    }
})

//-------------------------------------
// Specifications
//
#let specifications(
  path: none,
  ) = {
  set page(margin: (
    top: 0cm,
    bottom: 0cm,
    x: 0cm,
  ))
  if path != none {
    image(path, width: 100%)
  } else {
    table(
      columns: (100%),
      rows: (100%),
      align: center+horizon,
      [
        #rotate(-45deg,
          origin: center+horizon,

        )[
          #text(fill: red, size: huger)[No specifications found]
        ]
      ]
    )
  }
}


//-------------------------------------
// Table of content
//
#let toc(
  lang: "en",
  tableof: (
    toc: true,
    minitoc : false,
    tof: false,
    tot: false,
    tol: false,
    toe: false,
  ),
  indent: true,
  depth: none,
) = {
  // Table of content
  if tableof.toc == true {
    outline(
      title: [#if lang == "de" {"Inhalt"} else if lang == "fr" {"Contenu"} else {"Contents"}],
      indent: indent,
      depth: depth,
    )
  }

  // Table of figures
  if tableof.tof == true {
    outline(
      title: [#if lang == "de" {"Abbildungen"} else if lang == "fr" {"Figures"} else {"Figures"}],
      target: figure.where(kind: image),
      indent: indent,
      depth: depth,
    )
  }

  // Table of tables
  if tableof.tot == true {
    outline(
      title: [#if lang == "de" {[Tabellen]} else if lang == "fr" {[Tables]} else {[Tables]}],
      target: figure.where(kind: table),
      indent: indent,
      depth: depth,
    )
  }

  // Table of listings
  if tableof.tol == true {
    outline(
      title: [#if lang == "de" {"Programme"} else if lang == "fr" {"Programmes"} else {"Listings"}],
      target: figure.where(kind: raw),
      indent: indent,
      depth: depth,
    )
  }

  // Table of equation
  if tableof.toe == true {
    outline(
      title: [#if lang == "de" {"Gleichungen"} else if lang == "fr" {"Équations"} else {"Equations"}],
      target: math.equation.where(block:true),
      indent: indent,
      depth: depth,
    )
  }
}


#let minitoc(
  after: none,
  before: none,
  addline: true,
  stroke: 0.5pt,
  length: 100%
) = {
  v(2em)
  text(large, [*Contents*])
  if addline == true {
    line(length:length, stroke:stroke)
  }
  outline(
    title: none,
    target: selector(heading)
      .after(after)
      .before(before, inclusive: false)
  )
  if addline == true {
    line(length:length, stroke:stroke)
  }
}

//-------------------------------------
// Heading shift
//
#let unshift_prefix(prefix, content) = style((s) => {
    pad(left: -measure(prefix, s).width, prefix + content)
  })

//-------------------------------------
// Research
//
// item, item, item and item List
//
#let enumerating_authors(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        if item.name != none and item.institute != none {
          [#item.name#super(repr(item.institute))]
        } else if item.name != none {
          [#item.name]
        }
        if i < items.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}

#let enumerating_institutes(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        [_#super(repr(i))_ #if item.research_group != none { [_ #item.research_group - _]} _ #item.name __, #item.address _ \ ]
        i = i + 1
      }
    }
  }
}

//-------------------------------------
// Script
//
// item, item, item and item List
//
#let enumerating_items(
  items: none,
) = {
  let i = 1
  if items != none {
    for item in items {
      if item != none {
        [#item]
        if i < items.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}
#let enumerating_links(
  names: none,
  links: none,
) = {
  if names != none {
    let i = 0
    for name in names {
      if name != none {
        [#link(links.at(i))[#name]]
        if i+1 < names.len() {
          [, ]
        }
      }
      i = i + 1
    }
  }
}
#let enumerating_emails(
  names:  none,
  emails: none,
) = {
  if names != none {
    let i = 0
    for name in names {
      if name != none {
        [#link("mailto:"+emails.at(i))[#name]]
        if i+1 < names.len() {
        [, ]
        }
      }
      i = i + 1
    }
  }
}

//-------------------------------------
// safe_link
//
#let safe_link(
  name: none,
  url: none,
) = {
  if name != none {
    if url != none {
      link(url)[#name]
    } else  {
      name
    }
  }
}

//-------------------------------------
// Counter
//
#let word_counter_init() = {[
  #show regex("\b\w+\b"): it => counter("words").step() + it
]}
#let word_count(preamble:"Word count:") = {[
  #preamble #counter("words").display()
]}

#let char_counter_init() = {
  show regex(".+"): it => counter("chars").step() + it
}
#let char_count(preamble:"Char count:") = {[
  #preamble #counter("chars").display()
]}

//-------------------------------------
// Option Style
//
#let option_style(
  type: "draft",
  size: small,
  style: "italic",
  fill: gray-40,
  body) = {[
  #if option.type == type {text(size:size, style:style, fill:fill)[#body]
  }
]}


#let todo(body) = [
  #let rblock = block.with(stroke: red, radius: 0.5em, fill: red.lighten(80%))
  #let top-left = place.with(top + left, dx: 1em, dy: -0.35em)
  #block(inset: (top: 0.35em), {
    rblock(width: 100%, inset: 1em, body)
    top-left(rblock(fill: white, outset: 0.25em, text(fill: red)[*TODO*]))
  })
  <todo>
]


//-------------------------------------
// Titlebox
//
#let titlebox(
  width: 100%,
  radius: 4pt,
  border: 1pt,
  inset: 20pt,
  outset: -10pt,
  linecolor: box-border,
  titlesize: huge,
  subtitlesize: larger,
  title: [],
  subtitle: [],
) = {
    if title != [] {
    align(center,
      rect(
        stroke: (left:linecolor+border, top:linecolor+border, rest:linecolor+(border+1pt)),
        radius: radius,
        outset: (left:outset, right:outset),
        inset: (left:inset*2, top:inset, right:inset*2, bottom:inset),
        width: width)[
          #align(center,
            [
              #if subtitle != [] {
                [#text(titlesize, title) \ \ #text(subtitlesize, subtitle)]
              } else {
                text(titlesize, title)
              }
            ]
          )
        ]
      )
    }
}

//-------------------------------------
// Part
//
#let part(
  title: [],
  number: 1,
  size: huge,
) = {
  pagebreak()
  v(1fr)
  align(center, smallcaps(text(size, [Part #number])))
  v(2em)
  align(center, smallcaps(text(size, title)))
  v(1fr)
  pagebreak()
}
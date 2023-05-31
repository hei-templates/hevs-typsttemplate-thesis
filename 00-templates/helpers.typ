// Import other modules so you only need to import the helpers
// #import "../00-templates/helpers.typ": *

#import "../00-templates/constants.typ": *
#import "../00-templates/boxes.typ": *
#import "../00-templates/items.typ": *
#import "../00-templates/tablex.typ": *
#import "../01-settings/metadata.typ": *
#import "../03-tail/glossary.typ": *

#let myref(label) = locate(loc =>{
    if query(label,loc).len() != 0 {
        ref(label)
    } else {
        text(fill: red)[?]
    }
})

//-------------------------------------
// Acronym functions
//
}
#let acrshort(item) = {
  item.abbr
}
#let acrlong(item) = {
  [#item.long)]
}
#let acrfull(item) = {
  [#item.long (#item.abbr)]
}

//-------------------------------------
// Mini Table of content
//
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
#let unshift_prefix(prefix, content) = style((s) => {
    pad(left: -measure(prefix, s).width, prefix + content)
  })
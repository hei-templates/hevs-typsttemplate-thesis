// Creating nice looking information boxes with different logo
#import "constants.typ": *

#let box(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset: 10pt,
  outset: -10pt,
  linecolor: code-border,
  icon: none,
) = {
  if content != none {
    rect(
      stroke: (left:linecolor+border, rest:code-border+0.1pt),
      radius: (left:0pt, right:radius),
      fill: code-bg,
      outset: (left:outset, right:outset),
      inset: (left:inset*2, top:inset, right:inset*2, bottom:inset),
      width: width)[
        #if icon != none {
          table(
            stroke:none,
            align:center+horizon,
            columns: (auto,auto),
          image(icon, height:1cm), content
          )
        } else {
          content
        }
      ]
  }
}

#let infobox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
  box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-info,
    icon: icon-info,
  )
}

#let warningbox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
  box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-warning,
    icon: icon-warning,
  )
}

#let ideabox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
    box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-idea,
    icon: icon-idea
  )
}

#let firebox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
    box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-fire,
    icon: icon-fire,
  )
}

#let importantbox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
    box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-important,
    icon: icon-important,
  )
}

#let rocketbox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
    box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-rocket,
    icon: icon-rocket,
  )
}

#let todobox(
  content: none,
  width: 100%,
  radius: 4pt,
  border: 4pt,
  inset:10pt,
  outset: -10pt,
) = {
    box(
    content: content,
    width: width,
    radius: radius,
    border: border,
    inset: inset,
    outset: outset,
    linecolor: color-todo,
    icon: icon-todo,
  )
}

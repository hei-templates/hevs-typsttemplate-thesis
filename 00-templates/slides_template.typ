#import "@preview/polylux:0.3.1": *
#import themes.clean: *
#import "../00-templates/constants.typ": *

#let slide_template(
  title: [Title],
  subtitle: none,
  authors: [],
  date: none,
  duration: none,
  doc,
) = {
  
  set text(font: "Inria Sans")


  show: clean-theme.with(
    //aspect-ratio: "4-3",
    footer: [#authors #h(0.2cm)-#h(0.2cm) Bachelor thesis #datetime.today().display("[year]")],
    short-title: [#title],
    logo: image(resources-folder + "logos/FR-DE_HEI_rvb.png"),
    color: rgb("#ea366a"),
  )

  if duration != none{
    pdfpc.config(
      duration-minutes: duration,
      default-transition: (
        type: "fade",
      )
    )
  } else {
    pdfpc.config(
      default-transition: (
        type: "fade",
      )
    )
  }
  

  title-slide(
    title: [#title],
    subtitle: [#subtitle],
    authors: ([#authors]),
    date: [#date],
  )

  doc

}


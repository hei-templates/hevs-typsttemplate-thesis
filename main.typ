//
// Description: Main document to stitch everything together
//
#import "00-templates/template-thesis.typ": *
#import "01-settings/metadata.typ": *

//-------------------------------------
// Template config
//
#show: thesis.with(
  title: title,
  subtitle: subtitle,
  version: version,
  author: author,
  professor: professor,
  expert: expert,
  school: school,
  date: date,
  lang: lang,
  tableof: tableof,
  icons: icons,
)
//-------------------------------------
// Specifications + Summary
//
#specifications(
  //path: "/04-resources/specifications.svg"
)
#include "/02-main/00-summary.typ"

//-------------------------------------
// Report info + table of content
//
#pagebreak()
#page-reportinfo(
  author: author,
  date: date.current,
  signature: author.signature,
)
#pagebreak()
#toc(
  lang: lang,
  tableof: tableof,
)

//-------------------------------------
// Content
//
#include "02-main/01-acknowledgements.typ"
#include "02-main/02-abstract.typ"
#include "02-main/03-introduction.typ"
#include "02-main/04-analysis.typ"
#include "02-main/05-design.typ"
#include "02-main/06-implementation.typ"
#include "02-main/07-validation.typ"
#include "02-main/08-conclusion.typ"


//-------------------------------------
// Glossary
//
#pagebreak()
= Glossary <sec:glossary>
#include "03-tail/glossary.typ"

//-------------------------------------
// Appendix
//
#include "03-tail/a-appendix.typ"

//-------------------------------------
// Bibliography
//
#if bib == true {
  include "03-tail/bibliography.typ"
}
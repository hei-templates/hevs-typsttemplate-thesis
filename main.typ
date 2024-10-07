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
  tableof: tableof,
  icons: icons,
)

//-------------------------------------
// Content
//
#include "02-main/00-acknowledgements.typ"
#include "02-main/01-abstract.typ"
#include "02-main/02-introduction.typ"
#include "02-main/03-analysis.typ"
#include "02-main/04-design.typ"
#include "02-main/05-implementation.typ"
#include "02-main/06-validation.typ"
#include "02-main/07-conclusion.typ"

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
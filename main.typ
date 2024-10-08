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
#add-chapter("00-summary")

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
// Acknowledgements
//
#pagebreak()
#heading(numbering:none)[Acknowledgements] <sec:ack>
#add-chapter("01-acknowledgements")

//-------------------------------------
// Abstract
//
#pagebreak()
#heading(numbering:none)[Abstract] <sec:abstract>
#add-chapter("02-abstract")

//-------------------------------------
// Introduction
//
#pagebreak()
= Introduction <sec:intro>
#add-chapter(
  "03-introduction",
  heading-offset: 1
)

//-------------------------------------
// Analysis
//
#pagebreak()
= Analysis <sec:analysis>

#lorem(50)

#add-chapter(
  "04-analysis",
  heading-offset: 1,
  after:<sec:analysis>,
  before:<sec:design>
)

//-------------------------------------
// Design
//
#pagebreak()
= Design <sec:design>

#lorem(50)

#add-chapter(
  "05-design",
  heading-offset: 1,
  after:<sec:design>,
  before:<sec:impl>
)


//-------------------------------------
// Implementation
//
#pagebreak()
= Implementation <sec:impl>

#lorem(50)

#add-chapter(
  "06-implementation",
  heading-offset: 1,
  after:<sec:impl>,
  before:<sec:validation>
)


//-------------------------------------
// Validation
//
#pagebreak()
= Validation <sec:validation>

#lorem(50)

#add-chapter(
  "07-validation",
  heading-offset: 1,
  after: <sec:validation>,
  before: <sec:conclusion> 
)

//-------------------------------------
// Conclusion
//
#pagebreak()
= Conclusion <sec:conclusion>

#add-chapter(
  "08-conclusion",
  heading-offset: 1,
)



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
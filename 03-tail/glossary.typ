//-----------------------------------------------------------------------------
// Glossary
//

// HEADER
#import "/00-templates/helpers.typ": *
/*
#context {
  if bib-state.get() != true {
    bib-state.update(true)
    show bibliography: none
    bibliography("/03-tail/bibliography.bib", style:bibstyle)
  }
} // END OF HEADER
*/

#print-glossary(
  (
    (
      key: "ar",
      short: "AR",
      long: "Augmented Reality",
    ),
    (
      key: "scrum",
      short: "Scrum",
      desc: [Scrum is an agile process framework for managing complex knowledge work, with an initial emphasis on software development, although it has been used in other fields and is slowly starting to be explored for other complex work, research and advanced technologies.],
      //description: [Scrum is an agile process framework for managing complex knowledge work, with an initial emphasis on software development, although it has been used in other fields and is slowly starting to be explored for other complex work, research and advanced technologies.],
    ),
  ),
  // show all term even if they are not referenced, default to true
  show-all: false,
  // disable the back ref at the end of the descriptions
  disable-back-references: false,
  
)

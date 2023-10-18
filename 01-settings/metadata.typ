
//
// Description: Metadata of the document
//
#import "../00-templates/constants.typ": *

#let title= "Thesis Template"
#let subtitle= "Longer Subtitle"
#let version= "v0.1"

#let author= (
  name: "Firstname Lastname",
  email: "firstname.lastname@hevs.ch",
  degree: "Bachelor",
  affiliation: "HEI-Vs",
  place: "Sion",
  signature: resources-folder + "signature.png",
)
#let professor= (
  name: "Prof. Silvan Zahno",
  email: "silvan.zahno@hevs.ch",
  affiliation: "HEI-Vs",
)
#let expert= (
  name: "Expert Name",
  email: "expert@domain.ch",
  affiliation: "Company",
)
#let school= (
  name: "University of Applied Sciences Western Switzerland, HES-SO Valais Wallis",
  shortname: "HEI-VS",
  orientation: "Systems Engineering",
  specialisation: "Infotronics",
  dean: "Dr. Cyrille Beçencon",
)

#let date= (
  submission: "18 August " + datetime.today().display("[year]"),
  current: datetime.today().display("[day].[month].[year]"),
  year: datetime.today().display("[year]"),
)

#let tableof = (
  toc: true,
  tof: false,
  tot: false,
  tol: false,
  toe: false,
)

#let icons = (
  topleft: resources-folder + "logos/hei-vs-light.svg",
  topright: resources-folder + "logos/hesso-logo.svg",
  bottomleft: resources-folder + "logos/hevs-pictogram-only.svg",
  bottomright: resources-folder + "logos/valais-excellence-logo.svg",
)


#let bib= true
#let icon="04-resources/icon.svg"
#let bibstyle="ieee" //"apa", "chicago-author-date", "chicago-notes", "mla"
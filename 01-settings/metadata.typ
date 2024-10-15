
//
// Description: Metadata of the document
//
#import "/00-templates/constants.typ": *

#let title = "Thesis Template"
#let subtitle = "Longer Subtitle"
#let keywords = (
  "keyword 1",
  "keyword 2",
  "keyword 3"
)
#let version = "v0.1"
#let lang = "en"

#let author = (
  name: "Firstname Lastname",
  email: "firstname.lastname@hevs.ch",
  degree: "Bachelor",
  affiliation: "HEI-Vs",
  place: "Sion",
  signature: resources-folder + "signature.png",
)
#let professor = (
  name: "Prof. Silvan Zahno",
  email: "silvan.zahno@hevs.ch",
  affiliation: "HEI-Vs",
)
#let expert = (
  name: "Expert Name",
  email: "expert@domain.ch",
  affiliation: "Company",
)
#let school = (
  name: "University of Applied Sciences Western Switzerland, HES-SO Valais Wallis",
  shortname: "HEI-VS",
  orientation: "Systems Engineering",
  specialisation: "Infotronics",
  dean: "Dr. Cyrille Bezençon",
)

#let date = (
  start: datetime(year: 2024, month: 5, day: 13),
  end: datetime(year: 2024, month: 8, day: 16),
  submission: datetime(year: 2024, month: 8, day: 16),

  mid-term-submission: datetime(year: 2024, month: 6, day: 14),
  mid-term-presentation: datetime(year: 2024, month: 6, day: 18),

  current: datetime.today(),
)

#let tableof = (
  toc: true,
  tof: false,
  tot: false,
  tol: false,
  toe: false,
)
#let depth-max = 3

#let icons = (
  topleft: image(resources-folder + "logos/hei-vs-light.svg", width: 6cm),
  topright: image(resources-folder + "logos/hesso-logo.svg", width: 4cm),
  bottomleft: image(resources-folder + "logos/hevs-pictogram-only.svg", width: 4cm),
  bottomright: image(resources-folder + "logos/valais-excellence-logo.svg", width: 1.5cm),
)

#let gloss = true
#let bib = true
#let icon = "/04-resources/icon.svg"
#let bibstyle = "ieee" //"apa", "chicago-author-date", "chicago-notes", "mla"
// HEADER
#import "/00-templates/helpers.typ": *
#import "/00-templates/page-summary.typ": *

#show: summary.with(
  title: title,
  student: author.name,
  //picture: "/04-resources/my_picture",
  year: date.submission.display("[year]"),
  degree: school.orientation,
  field: school.specialisation,
  professor: professor,
  //partner: partner,
  
  objective: [ // one sentence with max. 240 characters, with spaces. 
    #lorem(30)
  ] 

  // body max. 1200 characters, with spaces.
)

#lorem(80)

#lorem(80)

#lorem(80)
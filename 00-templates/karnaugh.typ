//
// Description: Creating nice looking kanugh tables
// Author     : Silvan Zahno
//
#import "constants.typ": *
#import "tablex.typ": *

#let karnaugh(
  inputs: ($a$,$b$,$c$,$d$,$e$),
  output: [$y$],
  stroke: 0.5pt,
  content: none,
) = {
  if content != none {
    if content.len() == 2 and content.at(0).len() == 4 {
      figure(tablex(
        columns: (0.7cm,0.7cm,0.7cm,0.7cm,0.7cm,0.2cm,0.6cm,0.6cm),
        rows: (0.6cm,0.6cm,0.2cm,0.7cm,0.7cm),
        stroke:stroke,
        auto-lines:false,
        align: center+horizon,
        (), vlinex(start:3, end:5), vlinex(start:3, end:7), vlinex(start:3, end:5), vlinex(start:3, end:5), vlinex(start:3, end:5), vlinex(start:4, end:5),
        [],       [], [], cellx(colspan: 2, align: center)[#inputs.at(2)], (), [], [], [], hlinex(start:3, end:5),
        [],       [], cellx(colspan:2, align:center)[#inputs.at(1)], (), [], [], [], [], hlinex(start:2, end:4),
        [#output], [], [], [], [], [], [], [], hlinex(start:1, end:5),
        [],       [#content.at(0).at(0)], [#content.at(0).at(1)], [#content.at(0).at(2)], [#content.at(0).at(3)], [], [], [], hlinex(start:1, end:5),
        [],       [#content.at(1).at(0)], [#content.at(1).at(1)], [#content.at(1).at(2)], [#content.at(1).at(3)], [], [#inputs.at(0)], [], hlinex(start:1, end:5),
      ))
    } else if content.len() == 4 and content.at(0).len() == 4 {
      figure(tablex(
        columns: (0.7cm,0.7cm,0.7cm,0.7cm,0.7cm,0.2cm,0.6cm,0.6cm),
        rows: (0.6cm,0.6cm,0.2cm,0.7cm,0.7cm,0.7cm,0.7cm,),
        stroke:0.5pt,
        auto-lines:false,
        align: center+horizon,
        (), vlinex(start:3, end:7), vlinex(start:3, end:7), vlinex(start:3, end:7), vlinex(start:3, end:7), vlinex(start:3, end:7), vlinex(start:4, end:6), vlinex(start:5, end:7),
        [],        [], [], cellx(colspan: 2, align: center)[#inputs.at(3)], (), [], [], [], hlinex(start:3, end:5),
        [],        [], cellx(colspan:2, align:center)[#inputs.at(2)], (), [], [], [], [], hlinex(start:2, end:4),
        [#output], [], [], [], [], [], [], [], hlinex(start:1, end:5),
        [],        [#content.at(0).at(0)], [#content.at(0).at(1)], [#content.at(0).at(2)], [#content.at(0).at(3)], [], [], [], hlinex(start:1, end:5),
        [],        [#content.at(1).at(0)], [#content.at(1).at(1)], [#content.at(1).at(2)], [#content.at(1).at(3)], [], rowspanx(2)[#inputs.at(0)], [], hlinex(start:1, end:5),
        [],        [#content.at(2).at(0)], [#content.at(2).at(1)], [#content.at(2).at(2)], [#content.at(2).at(3)], [], (), rowspanx(2)[#inputs.at(1)], hlinex(start:1, end:5),
        [],        [#content.at(3).at(0)], [#content.at(3).at(1)], [#content.at(3).at(2)], [#content.at(3).at(3)], [], [], (), hlinex(start:1, end:5),
      ))
    } else if content.len() == 8 and content.at(0).len() == 4 {
      figure(tablex(
        columns: (0.7cm,0.7cm,0.7cm,0.7cm,0.7cm,0.2cm,0.6cm,0.6cm, 0.7cm,0.7cm,0.7cm,0.7cm,0.7cm,0.2cm,0.6cm,0.6cm),
        rows: (0.6cm, 0.6cm,0.6cm,0.2cm,0.7cm,0.7cm,0.7cm,0.7cm),
        stroke:0.5pt,
        auto-lines:false,
        align: center+horizon,
        (), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:5, end:7), vlinex(start:6, end:8), (), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:4, end:8), vlinex(start:5, end:7), vlinex(start:6, end:8),
        [],        [], [], [], [], [], [], [],                                                                                                                                      [], cellx(colspan: 4, align: center)[#inputs.at(4)], (), (), (), [], [], [], hlinex(start:9, end:13),
        [],        [], [], cellx(colspan: 2, align: center)[#inputs.at(3)], (), [], [], [], hlinex(start:3, end:5),                                                                 [],        [], [], cellx(colspan: 2, align: center)[#inputs.at(3)], (), [], [], [], hlinex(start:11, end:13),
        [],        [], cellx(colspan:2, align:center)[#inputs.at(2)], (), [], [], [], [], hlinex(start:2, end:4),                                                                   [],        [], cellx(colspan:2, align:center)[#inputs.at(2)], (), [], [], [], [], hlinex(start:10, end:12),
        [#output], [], [], [], [], [], [], [], hlinex(start:1, end:5),                                                                                                              [#output], [], [], [], [], [], [], [], hlinex(start:9, end:13),
        [],        [#content.at(0).at(0)], [#content.at(0).at(1)], [#content.at(0).at(2)], [#content.at(0).at(3)], [], [], [], hlinex(start:1, end:5),                              [],        [#content.at(4).at(0)], [#content.at(4).at(1)], [#content.at(4).at(2)], [#content.at(4).at(3)], [], [], [], hlinex(start:9, end:13),
        [],        [#content.at(1).at(0)], [#content.at(1).at(1)], [#content.at(1).at(2)], [#content.at(1).at(3)], [], rowspanx(2)[#inputs.at(0)], [], hlinex(start:1, end:5),      [],        [#content.at(5).at(0)], [#content.at(5).at(1)], [#content.at(5).at(2)], [#content.at(5).at(3)], [], rowspanx(2)[#inputs.at(0)], [], hlinex(start:9, end:13),
        [],        [#content.at(2).at(0)], [#content.at(2).at(1)], [#content.at(2).at(2)], [#content.at(2).at(3)], [], (), rowspanx(2)[#inputs.at(1)], hlinex(start:1, end:5),      [],        [#content.at(6).at(0)], [#content.at(6).at(1)], [#content.at(6).at(2)], [#content.at(6).at(3)], [], (), rowspanx(2)[#inputs.at(1)], hlinex(start:9, end:13),
        [],        [#content.at(3).at(0)], [#content.at(3).at(1)], [#content.at(3).at(2)], [#content.at(3).at(3)], [], [], (), hlinex(start:1, end:5),                              [],        [#content.at(7).at(0)], [#content.at(7).at(1)], [#content.at(7).at(2)], [#content.at(7).at(3)], [], [], (), hlinex(start:9, end:13),
      ))
    }
  }
}

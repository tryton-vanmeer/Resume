#let cv(
  name: "",
  website: "",
  email: "",
  github: "",
  body
  ) = {

  set document(author: name, title: "Resume")
  set text(font: "JetBrains Mono", lang: "en")
  set page(margin: (x: 2.5cm, y: 2.5cm))

  show heading: it => [
    #pad(bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // author
  align(center)[
      #block(text(weight: 700, 1.75em, name))
  ]

  // links
  align(center,
    block[
        #link("https://" + website)[#website] |
        #link("mailto:" + email)[#email] |
        #link("https://github.com/" + github)[github.com/#github]
    ]
  )

  // main body
  set par(justify: true)
  body

  // footer
  align(bottom)[
    #align(center)[
      #link("https://github.com/tryton-vanmeer/resume")[Source] #h(75%)
      #datetime.today().display()
    ]
  ]
}

#let exp(place, title, time, details) = {
  pad(
    bottom: 10%,
    grid(
      columns: (auto, 1fr),
      align(left)[
        *#place* \
        #emph[#title]
      ],
      align(right)[
        #time
      ]
    )
  )
  details
}

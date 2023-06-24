#let cv(
  name: "",
  website: "",
  email: "",
  github: "",
  body
  ) = {
  set document(author: name, title: "Resume")
  set text(font: "JetBrains Mono", lang: "en")
  set page(margin: (x: 1.5cm, y: 0.5cm))

  show heading: it => [
    #pad(bottom: -10pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // author
  align(center)[
      #block(text(weight: 700, 1.75em, name))
  ]

  // links
  pad(
      top: 0.5em,
      bottom: 0.5em,
      align(center)[
        #grid(
          columns: 4,
          [
            #link("https://" + website)[#website]
            #link("mailto:" + email)[#email]
            #link("https://github.com/" + github)[github.com/#github]
          ]
        )
      ]
  )

  // main body
  set par(justify: true)
  body
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

#let authors=("Nemo",)
#let title="Chapter 2: Getting Started"
#let date="2023.9.5-"
#set document(author: authors, title: title)
#set page(numbering: "1", number-align: center)
#set heading(numbering: "1.1")

// Title row.
#align(center)[
#block(text(weight: 700, 1.75em, title))
#v(1em, weak: true)
#date
]

// Author information.
#pad(
    top: 0.5em,
    bottom: 0.5em,
    x: 2em,
    grid(
      columns: (1fr,) * calc.min(3, authors.len()),
      gutter: 1em,
      ..authors.map(author => align(center, strong(author))),
      ),
    )

// Main body.
#set par(justify: true)
#set text(12pt)

#outline(indent: true)

= Time Complexity

Serveral denotions.


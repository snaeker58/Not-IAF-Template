#import "@preview/not-fraunhofer-iaf:0.1.0": *

#show: slides.with(
  title: "IAF Template",
  subtitle: lorem(5),
  date: datetime.today().display("[day]. [month repr:long] [year]"),
  authors: ("Max Mustermann"),
  footer-clearance: "Public"
)

= Example Section 

== Text & Bullets
#lorem(20)

- #lorem(4)
- #lorem(5)

#lorem(15)

+ #lorem(5)
  - #lorem(3)
    - #lorem(4)
      - #lorem(2)
+ #lorem(3)
+ #lorem(7)

== Tables, Links and Quotes

Table Data:
#align(center, 
  table(
    columns: 4,
    [], [Exam 1], [Exam 2], [Exam 3],

    [John], [], [A], [],
    [Mary], [], [A], [A],
    [Robert], [B], [A], [B],
  )
)

#linebreak()
Link:
#link("https://example.com")[
  See example.com
]

#quote(attribution: [probably Plato])[I know that I know nothing]


== Code Block, Term and Enum
#figure(
  [
    ```rust
    fn main() {
        println!("Hello World!");
    }
    ```
  ],
  caption: [
    _Basic Rust function_
  ],
  numbering: none,
  gap: 0.4em
)

/ Term: This is a term.

#enum(
  enum.item(1)[First Enum Item],
  enum.item(5)[Fifth Enum Item],
  enum.item(10)[Tenth Enum Item]
)

== Bibliography

A source @harry

Another source @electronic

#bibliography("bib.yml")

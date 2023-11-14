#import "@local/note_template:0.0.1": *
#import "@local/tbl:0.0.4"
#show: tbl.template.with(tab: "|", align: center)

#set par(justify: true)
#set heading(numbering: "1.1")
#set page(numbering: "1", number-align: center)

#frontmatter(
  title: "Chapter 4:\n Advanced Design and Analysis Techniques",
  date: "2023 Oct 31",
  authors: ("Nemo",)
  )

#outline(indent: auto)
#pagebreak()

= Dynamic Programming


Dynamic programming applies when the subprobelms overlap. We typically apply dynamic programming to _optimization problems_.

When developing a dynamic programming algorithm, we follow a sequence of four steps:
1. Characterize the structure of an optimal solution.
2. Recursively define the value of an optimal solution 
3. Compute the value of an optimal solution, typically in a bottom-up fashion.
4. Construct an optimal solution from computed information.

== Rod Cutting

The _rod cutting problem_ is the following: Given a rod of length n inches and a table of prices $p_i$ according to the length $i$, determine the maximum revenue $r_n$ obtainable by cutting the rod and selling them.

```tbl
L|CCCCCCCCCC.
length $i$ |1|2|3|4|5|6|7|8|9|10
_
price $p_i$ |1|5|8|9|10|17|17|20|24|30

```


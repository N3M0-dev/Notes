#import "@local/note_template:0.0.1": *
#import "@local/tbl:0.0.4"
#show: tbl.template.with(tab: "|")
#set par(justify: true)
#set outline(indent: auto)
#set page(numbering: "1", number-align: center)
#set heading(numbering: "1.1")

#frontmatter(
  title: "Chapter 1: From Zero to One",
  subtitle: "Note of Digital Design and Computer Architecture",
  authors: ("Nemo",),
  date: "2023 Oct 9 - "+str(datetime.today().display("[year] [month repr:short] [day padding:none]"))
)

#outline()

#pagebreak()

= The Game Plan

The book mainly focus on the design of digital systems. And a great advantage of digital systems is that it only involves 1's and 0's. At first buliding a microprocessor may be too complex to work on, so an important part of the book is managing complexity.

= The Art of Managing Complexity

Morden digital systems commonly consist of millions or billions of transistors, which no human being can understand them simply by using equations or physics. An important approach to understand this is through managing complexity without getting mired in a morass of detail.

== Abstraction

The critical technique for managing complexity is _abstraction_: hiding details when they are not important.

For example: $ "Application Software" -> "Operating Systems" -> "Architecture" -> "Micro-Architecture"\ -> "Logic" -> "Digital Circuits" -> "Analog Circuits" -> "Devices" -> "Physics" $

The book covers from Architecture to digital circuits. It is good to know the levels both above and below the current abstract level you are working on.

== Dicipline

_Dicipline_ is the act of intentionally restricting your design choices so that you can work more productively at a higher level of abstraction.

/ e.g. ::
- *Using interchangeable parts* : In the early stage of firearms, gunmakers make a entire gun once at a time, but then to improve efficiency, they begin to limit the components to standerdized set and well-defined tolerance, which indeed worked well and made making a gun faster.

== The Three-Y's

In addition to abstraction and dicipline, designers use three "-y's" to manage complexity:hierarchy, modularity, and regularity.

- _Hierarchy_ involves dividing a system into modules, then further sub-dividing each of these modules until the pieces are easy to understand.

- _Modularity_ states that the modules have well-defined functions and interfaces, so that they connect together easily without unanticipated side effects.

- _Regularity_ seeks uniformity among the modules. Common modules are reused many times, reducing the number of distinct modules that must be designed.

= The Digital Abstraction

Digital system use variables with a finit number of distinct values, contridict to analog systems. We maily focus on digital systems that use variables with 2 distinct values: 1 and 0, which are called binary variables.

#def()[
  Amount of information:
  The amount of information $D$ in a discrete values variable with $N$ distinct states is measured in units of *bits* as $ D = log_2N "bits" $
]

George Boole developed a system of logic operating on binary variables that is known as _Boolean logic_. Each of Boole's variabel can be 'TRUE' or 'FALSE'. In the note I use '1', TRUE, and HIGH synonymously, and '0', FALSE, and LOW interchangeably.

= Number Systems

== Skipping a Few Topics ...

#counter(heading).update((4,5))
== Signed Binary Numbers

Several schemes exist to represent signed binary numbers; the two most widely employed are called sign/magnitude and two's complement.

=== Sign/Magnitude Numebrs

An _N_-bit sign/magnitude numebr uses the most significant bit as the sign and the remaining _N_-1 bits as the magnitude. A sign bit of 0 indicates positive and a sign bit of 1 inditates negative.

/ e.g.: $-5_10=1101_2 quad 5_10=0101_2$

However, here comes two shortcomings:
+ Ordinary binary addition does not work.
+ There are two representations for zero.

=== Two's Complement Numbers

Two's complement numbers are identical to unsigned binary numbres except that the most significant bit position has a wegiht of $-2^(N-1)$ instead of $2^(N-1)$. So positive numebrs have the most significant bit 0 and the negative numbers have 1 on the most significant bit, so the MSB can be seen as a sign bit just as that in the _Sign/Magnitude_ scheme, but do note that the remaining bits are interpreted differently.

The sign of a two's complement number is reversed in a process called taking the two's complement, which consists of inverting all the bits and add 1 to the *LEAST significant bit*. It's useful to present the magnitude of a negitive number.

The range of a N-bit two's complement number spans $[-2^(N-1),2^(N-1)-1]$, which is not symmetric. This causes problems, because the smallest number it can represent $100 dots 00 _2$ has no positive counterpart. The number is also called the _weird number_.

When an two's complement number is extended to more bits, its sign bit must be moved to the new MSB, which is called _sign extension_.

= Logic Gates

Now we know that binary variables are used to represent information, but only the information itself is not enough to form a digital system. Here _Logic Gates_ are simple circuits that take one or more binary inputs and produce a binary output. Typically, logic gates drawn as symbles take inputs on the left (or top) and produce output on the right (or buttom). Inputs are usually represented by letters at the beginning of the alphabet and use the letter "Y" as the output. A logic gate can be described with a _truth table_ or a _Boolean_ equation.

#def((
  [Truth table:
    A truth table is a table that lists inputs on the left and the corresponding output on the right.
  ],
  [Boolean equation:
    A mathematical expression using binary expression.
  ]  
))

== Not Gate

#grid(
  columns: (auto,auto,auto),
  column-gutter: 15pt, 
  [
  ```tbl
  C | C.
  A | Y
  _
  0 | 1
  1 | 0
  ```
  ],
  align(horizon)[$Y=overline(A)$],
  align(horizon)[The _NOT gate_, also called an _inverter_, "inverts" the input.],
 )

== Buffer

#grid(
  columns: (auto,auto,auto),
  column-gutter: 15pt,
  [
  ```tbl
  C | C.
  A | Y
  _
  0 | 0
  1 | 1
  ```
  ],
  align(horizon)[$Y=A$],
  align(horizon)[The buffer simply copies the input to the output, so it work just as a wire in the view of logic. However, form the analog point view, it might have several desiable characteristics such as the ability to quicily send its output to multiple gates.],
  )

== And Gate

#grid(
  columns: (auto,auto,auto),
  column-gutter: 15pt, 
  [
  ```tbl
  C | C | C.
  A | B | Y
  _
  0 | 0 | 0
  1 | 0 | 0
  0 | 1 | 0
  1 | 1 | 1
  ```
  ],
  align(horizon)[$Y=A B$],
  align(horizon)[The AND gate only outputs TRUE when A and B are both TRUE.],
 )

== Or Gate

#grid(
  columns: (auto,auto,auto),
  column-gutter: 15pt, 
  [
  ```tbl
  C | C | C.
  A | B | Y
  _
  0 | 0 | 0
  1 | 0 | 1
  0 | 1 | 1
  1 | 1 | 1
  ```
  ],
  align(horizon)[$Y=A+B$],
  align(horizon)[The AND gate outputs TRUE when either A or B is TRUE. Note that the "+" symbol in the Boole equaiton is pronounced "or", or the equaiton can also be written like $Y=A union B$],
 )

== Other Two-Input Gates
#align(center)[
#grid(
  columns: (auto,auto,auto),
  column-gutter: 45pt, 
  [
    ```tbl
    C  S  S
    C  S  S
    C  S  S
    C  C | C
    ___
    C  C | C.
    XOR
    _
    $Y=A plus.circle B$
    A | B | Y
    _
    0 | 0 | 0
    1 | 0 | 1
    0 | 1 | 1
    1 | 1 | 0
  ```

  ],[
    ```tbl
    C  S  S
    C  S  S
    C  S  S
    C  C | C
    ___
    C  C | C.
    NAND
    _
    $Y=overline(A B)$
    A | B | Y
    _
    0 | 0 | 1
    1 | 0 | 1
    0 | 1 | 1
    1 | 1 | 0
  ```
  ],[
    ```tbl
    C  S  S
    C  S  S
    C  S  S
    C  C | C
    ___
    C  C | C.
    NOR
    _
    $Y=overline(A + B)$
    A | B | Y
    _
    0 | 0 | 1
    1 | 0 | 0
    0 | 1 | 0
    1 | 1 | 0
  ```

  ]
)]

== Multiple-Input Gates

Simliar and easy to understand, I might just skip it first.

= Beneath the Digital Abstraction

Not essencial, but I'll come back later, I promise.



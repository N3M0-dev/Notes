#import "@local/note_template:0.0.1": *
#import "@local/tbl:0.0.4"
#show: tbl.template.with(tab: "|")
#set par(justify: true)
#set outline(indent: auto)
#set page(numbering: "1", number-align: center)
#set heading(numbering: "1.1")

#frontmatter(
  title: "Chapter 2: Combinational Logic Design",
  subtitle: "Note of Digital Design and Computer Architecture",
  authors: ("Nemo",),
  date: "2023 Oct 10 - "+str(datetime.today().display("[year] [month repr:short] [day padding:none]"))
)

#outline()

#pagebreak()

= Introduction

In digital electronics, a circuit is a network that processes discrete-valued variables. A circuit can be viewed as a blackbox with: 
- one or more input terminals
- one or more output terminals
- a functional specification describing the relationship between inputs and outputs
- a timing specification describing the delay between inputs changing and outputs responding

Digital circuits are classified as _combinational_ or _sequential_. A combinational circuit's outputs depend only on the current inputs, while sequential circuit's output depend both current and previous inputs. That is to say, combinational circuits are _memoryless_, but sequential circuits have _memory_.

Note that there may be several different _implementation_ for one single function.

#theorem()[
Rules of _combinational composition_:
A circuit is combinational if it consists of interconnected circuit elements such that:
- Every circuit element is itself combinational.
- Every node of the cricuit is either designated as an input to the circuit or connects to *exactly one* output terminal of a circuit element.
- The circuit contains no cyclic paths: every path through the circuit visits each cricuit node at most once.
]

#note()[The rules of combinational composition is not a necessary condition of one circuit to be combinational. That is to say, some circuits can still be combinational despite that they disobey the rules. However that does not implies that the rule is useless, by following the rules, the circuit we disign are sure to be combinational. Just note that the disobeying the rules dose not mean the circuit is not combinational.]

= Boolean Equations

== Terminology

The _complement_ of a variable $A$ is its inverse $overline(A)$. The variable or its complement is called a _literal_. We call $A$ the _true form_ of the variable and $overline(A)$ the _complementary form_; "ture form" only means that there is no line over the letter "A" and do not imply the variable $A$ is TRUE.

The AND of one or more literals is called a _product_ or an _implicant_, like $A B, A overline(B) thin overline(C)$. A _minterm_ is a product involving all the inputs to the function. e.g. $A B overline(C)$ is a minterm for a function of three variables A, B and C, but $A B$ is not.

The OR or one or more literals is called a _sum_, a _maxterm_ is a a sum involving all of the inputs to the function.

== Sum-of-Products Form

A truth table of N inputs contains $2^N$ rows. Each row in a truth table is associated with a minterm that is TRUE for that row, e.g.:

#show: tbl.template.with(align: center, tab: "|", mode: "math")

    ```tbl
    C | C | C | C | C.
    A | B | Y | "minterm" | "minterm name"
    _
    0 | 0 | 0 | upright(overline(A) thin overline(B))  | m_0
    0 | 1 | 1 | upright(overline(A) B)                 | m_1
    1 | 0 | 0 | upright(A overline(B))                 | m_2
    1 | 1 | 1 | upright(A B)                           | m_4
    ```
We can wirte a Boolean equation for any truth table by summing each of the minterms for which the output, Y, is TRUE. Take the table above as an example:

```tbl
C | C | C | C | C
C | C | C | C | C
Ck(gray) | Ck(gray) | Ck(gray)o(red) | Ck(gray) | Ck(gray)
C | C | C | C | C
Ck(gray) | Ck(gray) | Ck(gray)o(red) | Ck(gray) | Ck(gray)
C | C | C | C | C.
A | B | Y | "minterm" | "minterm name"
_
0 | 0 | 0 | upright(overline(A) thin overline(B))  | m_0
0 | 1 | 1 | upright(overline(A) B)                 | m_1
1 | 0 | 0 | upright(A overline(B))                 | m_2
1 | 1 | 1 | upright(A B)                           | m_4
```

So, $Y=m_1 + m_4=overline(A) B+ A B$. This can be also written in the sigma notation: $F(A,B)=sum(m_1,m_3)$ or even simpler, $sum(1,3)$

== Product-of-Sums Form

An alternitive way of expressing Boolean functionsis the product-of-sums canonical form. Each row of the turth table corresponds to a maxterm that is false for that row. Then we can wirte a Boolean equation for the truth table as the AND of each of the maxterm for which the output is FALSE.

= Boolean Algebra

== Axioms

$
B=0 "if" B eq.not 1\
overline(0)=1\
0 dot 0 = 0\
1 dot 1 = 1\
1 dot 0 = 0 dot 1 = 0
$

== Theorem of One Variable

#theorem((
  [
    The identity theorem:
    For any Boolean variable $B$, $B "AND" 1 = B$.\
    (Dual: $B "OR" 0 = B$)
  ],[
    The null element theorem:
    For any Boolean variable $B$, $B "AND" 0 = 0$, so "0" is called the null element for the AND operation.\
    (Dual: "1" is the null element for OR operation.)
  ],[
    Idempotency:
    A variable AND itself is equal to just itself.\
    (Dual: A variable OR itself is equal to just itself.)
  ],[
    Involution:
    $overline(overline(B))=B$, complementing a variable twice results in the original variable.\
    (mathematical definition for involution: In mathematics, an involution, involutory function, or self-inverse function is a function f that is its own inverse.)
  ],[
    The complement theorem:
    $B dot overline(B)=0$, a variable AND its complement is always 0.\
    (Dual: $B + overline(B)=1$,a variable OR its complement is always 1.)
  ]
))

== Theorem of Several Variables

#theorem((
  [
    Commutativity and associativity:
    $B dot C=C dot B, B + C = C + B\ (B dot C) dot D = B dot (C dot D), (B+C)+D=B+(C+D)$
  ],[
    Distributivity:
    $B dot C + B dot D = B dot (C+D)\ (B+C) dot (B+D)=B+C dot D$\
    Note that the second equation does not hold in triditional algebra.
  ],[
    Covering:
    $B dot (B+C) = B, B + (B dot C) = B$
  ],[
    Consensus:
    $B C + overline(B) D + C D = B C + overline(B) D\ (B+C) dot (overline(B)+D) dot (C+D) =  (B+C) dot (overline(B)+D)$
  ],[
    De Morgan's Theorem:
    $overline(B_0 dot B_1 dot B_2 dots)=overline(B_0)+overline(B_1)+overline(B_3)+ dots\
      overline(B_0+B_1+B_2+dots)=overline(B_0) dot overline(B_1) dot overline(B_3)dots$
  ]
))

#note()[
  When trying to prove these theorems, note that the null element is the crucial clue to the solution.
]

According to the De Morgan's Theorem, we have the following equivalence:
#figure(
  image("NAND_NOR_dual.png",width: 50%)
)

The inversion circle is called a _bubble_, and it has several properties:
- Pushing the bubble from the output to the input changes the body of the gate (AND $->$ OR or OR $->$ AND) and vice versa.
- Pushing a bubble form the output to the inputs puts bubbles on all the gate inputs.
- Pushing all the bubbles form the input to the output puts a bubble on the output.

== The Truth Behind It All

Proving the theorems are easy because that they only contain finit numebr of variables. We can simply list all the possible values of the variables, this method is called _perfect induction_.

== Simplifying Equations

/ e.g. 1 : Minimize equation $overline(A) thin overline(B) thin overline(C) + A thin overline(B) thin overline(C) + A overline(B) C$\
  Upon first sight, I'll try to simplify the expression to $overline(B) thin overline(C) + A overline(B) C$ or $overline(A) thin overline(B) thin overline(C) + A thin overline(B)$ and I'm stuck here. It seems that we can either combine the first two or the last two and no more, because the miniterm $A thin overline(B) thin overline(C)$ is used to either form $overline(B) thin overline(C)$ or $A thin overline(B)$. We call this situation $overline(B) thin overline(C)$ and $A thin overline(B)$ _share_ the miniterm $A thin overline(B) thin overline(C)$. Now the magic! Remember the *_Idempotency Theorem_* ? We can duplicant terms as many times as we want! It's an important feature of Boolean algebra. So actually we can minimize the expression to $overline(B) thin overline(C) + A thin overline(B)$. Amazing!

= Form Logic to Gates

A schematic is a diagram of a digital circuit showing the elements and the wires that connect them together, like the figure below, which is the implementation of the function:
$ Y= overline(A) thin overline(B) thin overline(C) + A thin overline(B) thin overline(C) + A overline(B) C $

#figure(
  image("Schematic_eg.png",width: 50%)
)

To ensure consistency, readability, we make these following rules:
- Inputs on left or top
- Outputs on right or bottom
- Whenever possible, gates should flow from left to right
- Straight wires
- Wires connect at a T junction
- A dot where wires cross indicates a connection
- Wires cross without a dot make no connection

The style of the schematic above is called a _programmable logic array (PLA)_ bacause the NOT gates, AND gates, and OR gates are arrayed in a systematic fashion.

#let is_null(body)={
  if body==[] or body==""{return true}
  else{return false}
}
#let eg(name: [],body) = {
  if not is_null(name){
    [e.g. #name]
    par(first-line-indent: 1em,hanging-indent: 1em)[#body]
  }
  else[
    / e.g. : #body
  ]
}

#eg(name: [Multiple-output circuits])[
  _Priority Circuit_ : For input $A_0, A_1, A_2, A_3$, let's say they have weights equal to their subscripts. ($A_3$ have the greatest weight 3, and $A_0$ have the weight 0) There corresponding output are $Y_0, Y_1, Y_2, Y_3$. When $A_3=1$ then $Y_3=1$ regardless whatever the other variables. The output is determined by the input and there weight.

  How to implement it then?

  We can list the truth table.The X in the table stands for the value does matter. Though that we can indeed use the sum of product method to work out the Boolean equation, but it's acutally easier to derive them from the function descirption. We simply miss out the variables that does matter (marked X in the table).
  $
    Y_0&=overline(A_3) thin overline(A_2) thin overline(A_1) A_0\
    Y_1&=overline(A_3) thin overline(A_2) A_1\
    Y_2&=overline(A_3) A_2\
    Y_3&=A_3
  $

  #show: tbl.template.with(align: center, tab: "|", mode: "math")
  ```tbl
  C C C C | C C C C.
  A_3 | A_2 | A_1 | A_0 | Y_3 | Y_2 | Y_1 | Y_0
  _
  0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 
  0 | 0 | 0 | 1 | 0 | 0 | 0 | 1
  0 | 0 | 1 | X | 0 | 0 | 1 | 0 
  0 | 1 | X | X | 0 | 1 | 0 | 0 
  1 | X | X | X | 1 | 0 | 0 | 0 
  ```
  ]

= Multilevel Combinational Logic

In previous sections we have the Sum-of-Products form, which is called two level logic for it contians two levels of logic AND and then OR. IRL, usually there are multiple levels of logic, and they tend to use less hardware than there two level conterparts. Bubble pushing is especiall helpful in analyzing and designing multilevel circuits.

== Hardware Reduction

Quote from book:(easy to understand)

#figure(
  image("hr_1.png",width:80%)
)
#figure(
  image("hr_2.png",width:50%)
)


== Bubble Pushing

= X's and Z's

Boolean algebra is limited to 1's and 0's ,but IRL there may be illegal and floating values.

=== Illegal Value: X

The symbol X indicates that the circuit node has an unknown or illegal value. This is commonly coursed by a node is being driven to both 0 and 1 at the same time. This is called contention.

=== Floating Value: Z

The symbol Z indicates that a node is being driven neither HIGH nor LOW. The node is said to be floading, high impedance, or high Z. This can be coursed by forget to connect votage to the inputs or assume that an unconneted input is the same as 0.

= Karnaugh Maps

_Karnough maps_ (or _K-maps_) are a great graphical method for simplifying  Boolean equations. K-maps work well for equations up to 4 variables.

The order of the variables is in the form of Grey Code.

Pules for fingding a minimized equation from a K-map are as follows:
- Use the fewest circles necessary to cover all the 1's
- All the squares in each circle must contain 1's
- Each circle must span a rectangular block that is a power of 2
- Each circle should be as large as possible
- A circle may warp around the edges of the K-map
- A 1 in a K-map may be circled multiple times if doing so alllows fewer circles to be used

The circles in the K-map each represent a prime implicant, and only the variables that have either true form or complementary form (NOT BOTH) in the circle appear in the prime implicant. That is to say, the variables that have both true form and complementary form in the circle are eliminated.

== Don't cares

X's can also be helpful in the K-maps, they can either be circuled or not, just make sure that the fewest circules are used.

= Combinational Building Blocks

Combinational logic is often grouped into larger building blocks to build a more complex systems. This is acutally the process of abstraction, we hide the lower part of logic gate details and just focus on the inputs and outputs.

== Multiplexers

Multiplexers are among the most commonly used combinational circuits. They choose an output from among several possible inputs based on the value of a _select_ signal. A multiplexer is sometimes affectionately called a _mux_.

=== 2:1 Multiplexer

Multiplexer is actually a selector that outputs the votage of the selected input. It can be used as a _lookup table_.

=== Wider Multiplexers

There are some wider multiplexers that accept more than one select signals and more inputs, to be exact, there are $n$ select signals and $2^n$ inputs.


== Decoder

A decoder has $N$ inputs and $2^n$ outputs, it asserts exactly noe of its outputs depending on the inputs combination. The outputs are called _one-hot_ because exactly one is "Hot" (HIGH) at a given time.







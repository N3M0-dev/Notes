#let authors=("Nemo",)
#let title="Sample Space and Probability"
#let date="2023.7.10-"
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

= Sets (Quick Review)

#emph()[Set, element, empety set $nothing$, finit set, countably finit set, uncountable set, sub set, equal, universal set $Omega$]

== Set opeartions:

+ Complement of a set $S$, with respect it the universe $Omega$, denoted by $S^c$
+ Union of two sets $S,T$, $S union T$
+ Intersection of two sets $S,T$, $S sect T$
+ Union of several, $union.big^infinity_(n=1) S_n=S_1 union S_2 union dots$
+ Intersection of several, $sect.big^infinity_(n=1) S_n=S_1 sect S_2 sect dots$
+ Sets are Disjoint if they share no element
+ A collection of sets is a partition of set $S$, if they are disjoint and the union of them are $S$

== The Algrebra of Sets:

#heading(level: 3,numbering: none)[De Morgan's laws:]
$
(union.big_n S_n)^c=sect.big_n S^c_n\
(sect.big_n S_n)^c=union.big_n S^c_n 
$
#pagebreak()

= Probabilistic Models 

#align(center)[
#rect(width: 95%)[#align(left)[
  #heading(level: 3,numbering: none)[Elements of a Probabilistic Model]
  - The sample space $Omega$, the set of all possiable outcomes
  - The probability law, which assigns any event $A$ a non-negative number $P(A)$
]]]#footnote(numbering: "*")[
Insight of Probability: The term "probability" should come with an event, like the probability of event $A
$ $P(A)$, which is further a outcome of the probability law and a part of the probabilistic model. And a valid probabilistic model should contain a sample space and a probability law which agree with the probability axioms.]

== Choosing an Appropriate Sample Space

The element of the sample space should be distinct and #emph()[mutually exclurive], and the sample space should be collectively exhaustive.

== Probability Axioms

#align(center)[
#rect(width: 95%)[#align(left)[
+ *(Nonnegativity)* $P(A) gt.eq 0$, for every event $A$
+ *(Additivity)* $A,B$ are disjoint, then $P(A union B)=P(A)+P(B)$
+ *(Normalization)* $P(Omega)=1$
]]]

== Discrete Models

/ e.g. *The toss of a coin several times*: #text(style: "italic")[ Like {HHH,HHT,HTH,HTT,THH,THT,TTH,TTT}(3 times) and the probability stuff]

#align(center)[
#rect(width: 95%)[#align(left)[
#heading(level: 3,numbering: none)[Discrete Probability Law]
The sample space $S={s_1,s_2,s_3,dots,s_n}$ consists of finite number of elements, we have:$ P(S)=P({s_1,s_2,s_3,dots,s_n})=P(s_1)+P(s_2)+P(s_3)+dots+P(s_n) $
]]]

#align(center)[
#rect(width: 95%)[#align(left)[
#heading(level: 3,numbering: none)[Discrete Uniform Probability Law]
Ii the outcomes are equally likely, then the Probability of any single outcome A becomes:
$ P(A)=("number of elements of" A)/n $
]]]

== Continuous Models

Like throughing a dart on a certian area or sth else ...

== Properties of Probability Laws

+ If $A in B$, then $P(A) lt.eq P(B)$
+ $P(A union B)=P(A)+P(B)-P(A sect B)$
+ $P(A union B) lt.eq P(A)+P(B)$
+ $P(A union B union C)=P(A)+P(A^c sect B)+P(A^c sect B^c sect C )$


= Conditional Prabability

Conditional probability provides us with a way to reason about the outcome of an ekperiment, based on *parcial information*. (The experiment is done and the only have some parcial information about it.)

/ e.g.: The experiment involving two successive rolls of a die, you are toled that the sum of the two rolls are 9. What's the probability of the first roll is a 6?

In precise terms, the conditional probability is when we know the is with in a given event $B$, we wish to know the probability of the event $A$. We call this #emph()[conditional probability of $A$ given $B$], denoted by $P(A bar B)$

*Definition*#sub()[#text(style: "italic")[conditional probability]]: $P(A bar B)=P(A sect B)/P(B)$

== Verification of the Prabability Laws

+ Nonnegativity is clear since the original probability is nonnegative.
+ Additivity: 
$ P(A_1 union A_2 bar B) &= P((A_1 union A_2) sect B)/P(B)\ 
&= (P(A_1 sect B) + P(A_2 sect B))/P(B)\
&= P(A_1 bar B)+P(A_2 bar B) $\
+ Normalization: 
$ P( Omega bar B)=P(Omega sect B)/P(B)=P(B)/P(B)=1 $

== Properties of Conditional Probability

#align(center)[
#rect(width: 95% )[#align(left)[#pad(y: 5pt)[
- Conditional probability can be viewed as a normal probability on a new universe $B$.
- Furthermore, if all outcomes are equally likely, then $P(A bar B)=("num of elements of" A union B)/("num of elements of" B)$
]]]]

== Using Conditional Probability for Modeling

A restatement of the definition of the conditional probability is $P(A union B)=P(B)P(A bar B)$, which can be used to calculate a non-conditional probability.

#align(center)[
#rect(width: 95% )[#align(left)[#heading(level: 3,numbering: none)[Multiplication Rule]
#pad(y: 5pt)[
By definition, it's easy to get
$ P(union.big^n_(i=1)A_i)=P(A_1)P(A_2 bar A_3)P(A_3 bar A_1 sect A_2) dots.h P(A_n bar union.big^(n-1)_(i=1)A_i) $
]]]]

== Total Probability Theorem and Bayes' Rule





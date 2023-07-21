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

#align(center)[
#rect(width: 95% )[#align(left)[#heading(level: 3,numbering: none)[Total Probability Theorem]
#pad(y: 5pt)[
Let $A_1, A_3, dots, A_n$ be disjoint events that #emph()[form a partition] of the sample space, and assume that $P(A_i)>0$ for all $i$. Then far any event $B$, we have $ P(B)&= P(A_n union B)+dots.h+P(A_n union B)\
&= sum^n_(i=1) P(A_i)P(B bar A_i) $
]]]]

#align(center)[
#rect(width: 95% )[#align(left)[#heading(level: 3,numbering: none)[Bayes' Rule]
#pad(y: 5pt)[
Let $A_1, A_2, dots, A_n$ be disjoint events that form a partition of the sample space, and assume that $P(A_i) gt 0$ for all $i$. Then, for any event $B$ such that $B$ that $P(B) gt 0$, we have
$
P(A_i bar B) &= (P(A_i)P(B bar A_i))/P(B)\
&=(P(A_i)P(B bar A_i))/(P(A_1)P(B bar A_1)+dots.h+P(A_n)P(B bar A_n))
$
]]]]

The Bayes' Rule reveals the relation between conditional probability of form $P(A bar B)$ and $P(B bar A$), in which the order of conditioning is reversed.

/ e.g. An example in medicine: \ If there is a shade in someone's x-ray, and there are 3 possibilities: \ 1. It's a malignant tumor\ 2. It's a nonmalignant tumor\ 3. Not a tumor\ Calculate the probability of each situation.
/ Ans: Let $A_1, A_2, A_3$ be the three events, and $B$ be the probability of there being a shade. Assume that we know the probabilities $P(A_i)$ and $P(B bar A_i)$ (these data can be actually found in practise). So we due to Bayes' Rule, we have $ P(A_i bar B)=(P(A_i)P(B bar A_i))/(P(B))=(P(A_i)P(B bar A_i))/(P(A_1)P(A_1 bar B)+P(A_2)P(A_2 bar B)+P(A_3)P(A_3 bar B)) $

As above, the Bayes Rule is often used for inference where we need to infer the "causes" from "effects". The events $A_1, A_2, A_3$ are the causes and the shade event $B$ is the effect by the causes. In a lot of situations, we have already collected the data of the effects, and we want to evaulate the probability of the cause $A_i$ is present, that's when Bayes' Rule come into use.

And just like the example above, the $A_i$ stands for the cause, the $B$ stands for the effect, we give the definition of #emph()[posterior probability] and #emph()[prior probability]:
/ Posterior probability: $P(A_i bar B)$
/ Prior probability: $P(A_i)$

/ e.g. The False-Positive Puzzle: \ A test for a certian rare disease is assumed to be 95% correct, and a random person drawn from a cortain population has the probability 0.001 of having the disease. Then, if a person tested positive, what is the probability of the person having the disease?
/ Ans: Now we know the effect, we want to evaulate the probability of the cause is present -- Apply the Bayes' Rule! Let $A$ be the event the person have the disease, $B$ be the event of tested positive. So we want $P(A bar B)$, and we have $P(A)=0.001, P(B bar A)=0.95$. So $ P(A bar B)=(P(A)P(B bar A))/P(B)= (P(A)P(B bar A))/(P(A)P(B bar A)+P(A^c)P(B bar A^c))=0.0187 $\ Less than 2%!!!

== Independence

*Definition*#sub()[#text(style: "italic")[independence]]: If $P(A sect B)=P(A)P(B)$, then we say that $A$ is #emph()[independent] of $B$.

The equation above is also equivalent to $P(A bar B)=P(A)$.

== Conditional Independence

*Definition*#sub()[#text(style: "italic")[conditional independence]]: If $P(A sect B bar C)=P(A bar C)P(B bar C)$, we say thar events $A$ and $B$ are conditionally independent (given $C$).

#align(center)[
#rect(width: 95% )[#align(left)[#heading(level: 3,numbering: none)[Summary]
#pad(y: 5pt)[
- Two events $A,B$ are independent if $P(A sect B)=P(A)P(B)$. In addition, if $P(B) gt 0$, independence is equivalent to $P(A bar B)=P(A)$
- If $A,B$ are independent, so are $A$ and $B^c$
- Two events $A,B$ are conditionally independent if $P(A sect B bar C)=P(A bar C)P(B bar C)$. In addition, if $P(B) gt 0$, independence is equivalent to $P(A bar B sect C)=P(A bar C)$.
- Independence does not imply conditional independence and vice versa.
]]]]

#align(center)[
#rect(width: 95% )[#align(left)[#heading(level: 3,numbering: none)[Independence of a collection of events]
#pad(y: 5pt)[
Events $A_1,A_2,dots,A_n$ are independent if $ P(sect.big_(i in S)A_i)=product_(i in S)P(A_i), "for every subset" S "of" {1,2,dots,n} $
]]]]


== Reliability

/ e.g. Network connectivity: \ The following graph is a network with the prabability of link of the connected nodes is up. Evaulate the probability of the successful connection from $A$ to $B$.(Classic problem ,omitting ans)


#figure( 
  grid(
    columns: 2,
    image("./net.svg"),
    image("./series_parallel.svg")
  ))

== Independent Trials and the Binomial Probabilities






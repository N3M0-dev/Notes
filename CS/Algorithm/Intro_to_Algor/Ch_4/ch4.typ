#import "@local/note_template:0.0.1": *
#import "@preview/algo:0.3.3": algo, i, d, comment, code
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

== Matrix Chain Multiplication

The problem of matrix-chain multiplication is that given a sequence of n matrices to be multiplied, we wish to conpute the product $A_1 A_2 A_3 dots A_n$ at the minimum cost.

=== Applying Dynamic Programming

We follow the following four steps in order to apply dynamic programming:
+ Characterize the structure of an optimal solution.
+ Recursively define the value of an optimal solution.
+ Compute the value of an optimal solution.
+ Construct an optimal solution from computed information.

==== Step 1: The structure of the optimal solution

First, for convenience we adopt the notation of $A_(i dots j)$ for $A_i A_(i+1) dots A_(j)$.

For a nontrival problem of MCM, to parenthesize the chain of matrices, we can think it backwards: Since we can the operation of multiplication is defined between two matrices, the last step of MCM must be a multiplication of two matrices. Then we can break down the problem into two subproblems of smaller scales, i.e. we can split the chain an a point between $A_k$ and $A_(K+1)$. Then the same way, we can break down the problem recursively.

Since we can do break down the problem recursively, it's natural to think if the optimal solutions to the problems combined together is the solution to the original problem. i.e. We need to try to check out if the problem contians optimal structure, and the answer is yes. Proof: Suppose that the the chain is optimally parenthesized, then the two subchain divided between $k$ and $k+1$ is also optimally parenthesized. Then, if the chain $A_(i dots k)$ or $A_(k+1 dots j)$ is not optimally parenthesized, i.e. there exists a better way to parenthesize either of the chains. Since the way we parenthesize the matirx chain dose not affect the shape of the outcome matrix, then the cost of multiplying the result of the two product of the chain stays the same. Then there exists a better way to parenthesize the chain, contridict to the assumption that it is the optimal way to parenthesize the chian. So the problem contians optimal structure.

Proved above that we can construct the optimal solution, then we can solve the problem by solving the subproblems. Then we can move to the next step.

==== Step 2: A recursive solution

Now we define the cost of the terms of the optioml solption the subproblems. We let $m[i,j]$ be the cost of the cost of $A_(i dots j)$, then for the full problem should be $m[i,j]$. According to the optimal structure, we should define the cost $m[i,j]$ as follows:
- When $i=j$, there is no multiplication, so $m[i,j]=0$.
- When $i<j$, $m[i,j]=min_(i lt.eq k lt j)(m[i,k]+m[k+1,j]+p_(i-1) p_k p_j)$, where p is the colums of matrices.

==== Step 3: Computing the Opitmal Costs

We can foresee that since we have relatively few distince subprobelms than all the possibilities, we would enconter a subprobelms multiple times if we adopt a recursive method, i.e. subproblems overlap, together with the optimal structure, are two hallmarks of applying dynamic programming.

Instead of using an recursive way, we use a bottom-up tabular way to calculate the cost.

#algo(
  title:"Matrix-Chain-Order",
  parameters:("p",)
)[
let n=p.length\
let cost[i...n, 1...n] sep[1...n, 1...n] be new tables=0\
for i from 1 to n:#i\
  for j from i+1 to n:#i\
    for k from i to j-1:#i\
      cost[i,j]=max(cost[i,j],cost[i,k]+cost[k+1,j]+p[i]p[k]p[j])\
      if cost[i,j] update: sep[i,j]=k#d#d#d\

return cost,sep

]

== Elements of Dynamic Programming

=== Opitmal Structure

=== Overlap Subproblems

=== Reconstruct the Optimal Solution

=== Memoization

== Longest Common Subsequence

=== Step 1: Characterizing a Longest Common Substructure

#theorem()[
  Optimal Substructure of an LCS:
  Let $X = angle.l x_1, x_2, dots, x_m angle.r$ and $Y= angle.l y_1, y_2, dots, y_n angle.r$ be sequances, and let $Z=angle.l z_1, z_2, dots, z_k angle.r$ be any LCS of $X$ and $Y$.

  + If $x_m = y_n$, then $z_k=x_m=y_n$ and $Z_(k-1)$ is an LCS of $X_(m-1)$
  + If $x_m != y_n$, then $z_k != x_m$ implies that $Z$ is an LCS of $X_(m-1)$ and $Y$
  + If $x_m != y_n$, then $z_k != y_m$ implies that $Z$ is an LCS of $Y_(m-1)$ and $X$

]

=== Step 2: A Recursive Solution

Let define $c[i,j]$ to be the length of an LCS of the sequences of $X_i$ and $Y_j$. So, we have:
$
c[i,j]=cases(0 &i=0 "or" j=0, c[i-1\,j-1] &"if" i\,j>0 "and" x_i=y_j,max(c[i\,j-1],c[i-1\,j]) &"if" i\,j>0 "and" x_i!=y_j)
$

=== Step 3: Computing the length of an LCS

#algo(
  title:"LCS_Length",
  parameters:("X","Y")
)[
m = X.length\
n = Y.length\

let b[1...m,1...n] and c[1...m,1...n] be new tables\

for i from 1 to m:#i\
  c[i,0]=0#d\

for j from 1 to n:#i\
  c[0,j]=0#d\

for i from 1 to m:#i\
  for j from 1 to n:#i\
    if X[i]==Y[j]:#i\
      c[i,j]=c[i-1,j-1]+1\
      b[i,j]=$arrow.tl$#d\
    *elseif* c[i-1,j] >= c[i,j-1]:#i\
      c[i,j]=c[i-1,j]\
      b[i,j]=$arrow.t$#d\
    else:#i\
      c[i,j]=c[i,j-1]\
      b[i,j]=$arrow.l$#d#d#d\
return c and b
]


=== Step 4: Reconstruct an LCS

When b[i,j]=$arrow.tl$ add c[i,j] in the LCS.

== Optimal Binary Search Tree

Binary search tree is a rooted binary tree data structure with the key of each internal node being greater than all the keys in the respective node's left subtree and less than the ones in its right subtree.

=== Step 1: Opitmal Substructure

Easy to prove.

=== Step 2: A recursive Solution

Let us define $e[i,j]$ be the search cost of an optimal BST contianing the nodes of $k_i, ...,k_j$ (contiguous). When constructing an optimal BST containing keys $k_i, ...,k_j$ from optimal subtrees, we need to choose one key as the root, then there exists a combination cost, which is all nodes of subtrees have their depth adding 1. So the combination cost is:
$ w(i,j)= sum_(l=i)^j p_l + sum_(l=i-1)^j q_l $
And so the cost is:
$
e[i,j]&=p_r+(e[i,r-1]+w(i,r-1))+(e[r+1,j]+w(r+1,j))\
&=e[i,r-1]+e[r+1,j]+w(i,j)
$
So,
$ e[i,j]=cases(q_(i-1) &"if" j=i-1, min_(i<=r<=j) {e[i\,r-1]+e[r-1\,j]+w(i\,j)} &"if" i<=j) $

=== Step 3: Computing the Expected Search Cost of an Opitmal BTS

pseudocode


= Greedy Algorithms

= Amortized Analysis

== Aggregate Analysis

The basic idea of aggregate analysis is that each operation costs $T(n)/n$, where $T(n)$ is the worst cost of a sequence of $n$ operations. 

=== Stack Operations

Consider a sequence of $n$ operations containing PUSH, POP, MULTIPOP, what is the _amortized cost_?

For the worst case, all the operations are MULTIPOP, and the worst case cost of MULTIPOP is $O(n)$. So the worst cost of the sequence is $O(n^2)$ and the amortized cost is $O(n^2)/n=O(n)$.

Is it correct? The answer is no. That's a quite rough estimate, there are better upper bounds. When calculating the amortized cost, we cannot ignore the inner relationship between the individual operations. In this case the time POP can be called is no more than the time PUSH is called. So $T(n)$ is at most $O(n)$, and the amortized cost is $O(n)/n=O(1)$.

=== Incrementing a Binary Counter

Assume the cost of incrementing a binary counter is in proportion to the bits filpped in an operation.

So by observiation, we know that the lowest bit is flipped $n$ times in a sequence of $n$ operations and the second is filpped $n/2$ times and etc. Then we can obtain the total cost is $sum_(i=0)^(k-1) (n/2^i)<sum_(i=0)^oo (n/2^i)=2n=O(n)$, and so the amortized cost is $O(n)/n=O(1)$

== The Accounting Method

The accounting method is like this:
+ We assign amortized cost for each type of operation in the sequence
+ We take the difference of the assigned amortized cost and the actual cost as a _credit_ and attach it to the data object.
+ If we can pay all the actual cost of the opeartions using the credit of the data object, then the amortized cost hold, and we can obtain the upper bound of the total actual cost.

== The Potential Method

The potential method is somehow similiar to the accounting method, but we do not assign the exceeding part to the individual data objects, instand we attach the _potential_ to the data structure as a whole and accumulate them in the _potential function_: we define $hat(c_i)=c_i+Phi(D_i)-Phi(D_(i-1))$, where $hat(c_i)$ is the assigned amortized cost, the $c_i$ is the acutal cost of an operation, $Phi(D_i)$ is the potential funciton, inside the $D_i$ can be understood as the $i^("th")$ stage of the data structure.

What we need to do is to first assign the amortized cost and ensure that after the sequence of operations the potential function is non-negative.

== Dynamic Tables






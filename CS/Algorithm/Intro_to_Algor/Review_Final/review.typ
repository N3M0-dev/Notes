#import "@local/note_template:0.0.1": *

= Review For the Final Exam

== Exam Content

+ Time complexity calc
+ Sort and divide-and-conquer
+ Dynamic programming
+ Greedy algorithms
+ Search algorithms
+ Amortized analysis
+ Graph theory
+ String algorithms

#note()[
According to reliable information, pseudocode is not required except for divide-and-conquer, dynamic programming and greedy algorithms, and this final review is extreamly meant to get high points regardless of wether you turely understand these knowledges or not or if you will be capabel of using these knowledges IRL. This review is ONLY targeted at PONTS ON PAPER.
]

_Being able to wirte good code in real life has nothing to do with getting high points in exams._
#align(right)[_said by *me*_]

== Time Complexity Calculation

=== Notations

First of all, we need strict mathematical definitions of the $O, Omega, Theta, o, omega, theta$ notations to further discuss the time complexity of the algorithms.

#def((
  [The O-notation:
    $ O(g(n))={f(n): &"there exist positive constants" c "and" n_0 "such that"\ &0<=f(n)<=c g(n) "for all" n>=n_0} $
  ],
  [The o-notation:
    $ o(g(n))={f(n): &"for any positive constant" c>0, "there exists a constant" n_0>0\ &"such that" 0<=f(n)<c g(n) "for all" n>=n_0 } $
  ],
  [The $Theta$-notation:
    $ Theta(g(n))={f(n): &"there exist positive constants" c_1,c_2 "and" n_0 "such that"\ &0<=c_1 g(n) <= f(n) <=c_2 g(n) "for all" n>=n_0} $
  ],
  [The $Omega$-notation:
    $ Omega(g(n))={f(n): &"there exist positive constants" c "and" n_0 "such that"\ &0 <= c g(n) <= f(n) "for all" n>=n_0} $
  ],
  [The $omega$-nonation:
    $ omega(g(n))={f(n): &"for any positive constant" c>0, "there exists a constant" n_0>0\ &"such that" 0<=c g(n)<=f(n) "for all" n>=n_0 } $
  ]
))

=== Solving the Recurrences

==== Subsitution Method

+ Guess the solution
+ Subsitutite and prove through induction

==== Recurtion-tree Method

+ Draw the recurtion tree
+ Sum up the nodes at the same depth
+ Calculate the tree height
+ Sum up all costs

==== Master Method

#theorem()[
  The Master Theorem:
    For recurrences like $T(n)=a(T/b)+f(n)$:
      + If $f(n) = O(n^(log_b (a-epsilon)))$ for some constant $epsilon>0$, then $T(n) = Theta(n log_b a)$.
      + If $f(n) = Theta(n^(log_b a))$, then $T(n) = Theta(n^(log_b a))$.
      + If $f(n) = O(n^(log_b (a+epsilon)))$ for some constant $epsilon>0$, and if $a f(n/b) <= c f(n)$ for some constant $c<1$ and all sufficiently largh n, then $T(n) = Theta(f(n))$.    
  ]

== Sort and divide-and-conquer

=== Divide-and-Conquer

Steps of divide-and-conquer:

- Divide: Divide the problem into subproblems
- Conquer: Solve the subproblems recursively. If the subproblems are small enough, solve them in a straightforword manner.
- Combine: Combine the solutions to the subproblems to construct the solution to the original problem.

==== Merge Sort

==== Chess Board Cover

==== Multiplication of Big numbers

==== Linear Time Select (PPT)

== Dynamic Programming

Proof is not required in the final, so we only need to know the problem it can solve and the procedure of applying dp.

The key to the solution to the problems is the clearly defined optimal structure and the recursive solution, or simply, the equation.

=== Knapsack Problem

=== Matrix Chain Multiplication

=== Longest Common Subsequence

=== Optimal Binary Tree



== Greedy algorithms

Greedy algorithms can only solve problems which the optimal solution can be obtained by adding the optiaml solution *at the moment* together.

=== Activity Selection Problem

=== Huffman Codes

=== Minimum Spanning Tree



== Search Algorithms

=== DFS and BFS

DFS using stack, BFS using queue.

=== Hill Climbing

Similar to gradient desent.

=== Best-First

Creat a heap that satisify a estimate function, use the heap to determine the search order. Priority queue.

=== Branch and Bound

Pruning branches that cannot lead to the optimal solution in advance to reduce cost.

=== A\* Algorithm



=== Staffing Problem

=== Travelling Salesman Problem




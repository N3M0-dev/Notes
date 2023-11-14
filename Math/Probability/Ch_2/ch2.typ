#import "@local/note_template:0.0.1": *

#set par(justify: true)
#set heading(numbering: "1.1")
#set page(numbering: "1", number-align: center)

#frontmatter(
  title: "Chapter 2: Discrete Random Variables",
  date: "2023 Oct 15",
  authors: ("Nemo",)
  )

#outline(indent: auto)
#pagebreak()

= Basic Comcepts

In many probability models, the outcome are numerical. Then the outcome can be discribed using a _random variable_.
#def()[Random Variable:
A random variable is a real-valued function of the experimental outcome.
]

A random variable is called discrete if its range is either finit or countably infinite. So furthermore,
#def()[Discrete Random Variable:
A discrete random variable is a real-valued funciton of th e outcome of the expression that can take a finit or countably infinite number of values.
]

= Probability Mass Function

The most impartant way to characterize a random variable is through the probabilities of the values that it can take. For a _discrete random variable_, these are captured by the _probability mass function_.

#def()[Probability Mass Function:
A discrete random variable has an associated probability mass function (PMF), which gives the probability of each numerical value that the random variable can take.
]

For a discrete random variable $X$, if $x$ is any value that $X$ can take, then the _probability mass_ of $x$, denoted $p_X (x)$ is the probability of the event ${X=x}$. So, the PMF $ p_X (x) = P({X=x}) $

Note that $sum_x p_X (x) =1$

== The Bernoulli Random Variable

A very simple variable that has only two possible outcomes: 1 and 0, which is 
$ X = cases(1 \, "when" ...,
0\, "when" ...) $

Its PMF is $ p_X (x) = cases(p \, &"if" k=1, 1-p \, &"if" k=0) $

== The Binomial Random Variable

Think of tossing a coin $n$ times.

$ p_X (k) = P(X=k) = binom(n,k)p^k(1-p)^(n-k),quad k = 0, 1, dots, n $

== The Geometric Random Variable

The geometric random variable is the number $X$ of trails needed for the first success. 

== The Poisson Random Variable

A Poisson random variable has a PMF given by $p_X (k) = e^(-lambda)lambda^k/k!$, where $lambda$ is a positive parameter characterizing the PMF.

When the parameters of binomial PMF $n$ is very big and $p$ is very small, the Poisson PMF is a good approximation for a binomial PMF.

= Function of Random Variables

From a random variable, one can generate other random variables by doing some transformations.Like $Y=a X + b$. More generally, we can derive a random variable $Y=g(X)$ from the random variable $X$. And the PMF of $Y$ $p_Y (y)$ can be calculated using the PMF of $X$:
$ p_Y (y)=sum_({x bar g(x)=y})p_X (x) $

= Expectation, Mean, And Variance

#def()[
  Expectation:
  We define the *expected* value (also called the *expectation* or the *mean*) of a random variable $X$, with PMF $p_X$, by $ E[X] = sum_x x p_X (x) $
]

== Variance, Moments, and Expected Value Rule

Besides the mean, there are several other quantities that we can associate with a random variable and its PMF.

#def()[
  Moment:
  The $n^"th"$ moment of the random variable $X$ is $E[X^n]$, the expected value of the variable $X^n$.
]

The most important quantity associated with a random variable $X$, other than the mean, is the variance, which is denoted by $"var"(X)$.

#def()[
  Variance:
  The variance of a random variable $X$ is $"var"(X)=E[(X-E[X])^2]$
]

The variance provides a measure of dispersion of $X$ around its mean. Another measurement is through the *standard deviation* of $X$, which is the square root of the variance, denoted by $sigma_X = sqrt("var"(X))$

#theorem()[
  Expceted Value Rule for Function of Random Variable:
  Let $X$ be a  random variable with PMF $p_X$, and let $g(X)$ be a function of $X$. Then the expected value of the random variable $g(X)$ in given by $ E[g(X)] = sum_x g(x)p_X (x). $
]

So the $"var"(X)$ can be calculated by $sum_x (X-E[X])^2p_X (x)=E[X^2]-(E[X])^2$

=== Properties of Mean and Variance

Using the expected value rule, we can derive some important properties of the mean and the variance. Starting with a random variable $X$, we define a random variable $Y$ of the form $Y=a X+b$.

So the mean of the random variable is: $ E[Y]=sum_x (a x+b)p_X (x)=sum_x a x p_X (x) + sum_x b p_X (x) = a E[X] + b $

And the variance: $ "var"(Y)&=sum_x (Y-E[Y])^2p_X (x)\ &=sum_x (a x+b-(a E[X]+b))^2p_X (x)\ &=sum_x (a x-a E[x])^2p_X (x)\ &=a^2 "var"(X) $

#theorem()[
  Mean and Variance of a Linear Function of a Random Variable:
  Let $X$ be a random variable and let $Y=a X + b.$\
  Then $ E[Y]=a E[X]+b$, $"var"(Y)=a^2 "var"(X)$.

]

=== Mean and variance of Some Common Random Variables

Mean of poisson: $E[X]=lambda$

= Joint PMFs of Multiple Random Variables

#def()[
  Joint PMF:
  The _joint PMF_ of $X$ and $Y$ is $p_(X,Y)(x,y)=P({X=x}union{Y=y}).$
]

The joint PMF determines the porbability of any event that can be specified in term of the random variables $X$ and $Y$. For example if $A$ is the set of all paris $(x,y)$ that have a certain property, then $P((X,Y) in A)=sum_((x,y) in A)p_(X,Y) (x,y)$, and $p_X=sum_y p_(X,Y) (x,y)$, $p_Y=sum_x p_(X,Y) (x,y)$. Sometimes we refer to $p_X, p_Y$ as _marginal PMFs_

== Function of Multiple Random Variables

Let $g(X,Y)$ of the random variables $X$ and $Y$ defines another random variable $Z=g(X,Y)$, so we have $ p_Z (z)=sum_({(x,y) bar g(x,y)=z}) p_(X,Y) (x,y) $
$ E[g(X,Y)]=sum_x sum_y g(x,y)p_(X,Y) (x,y) $

== More Than Two Random Variables

Similiar to section before, skipping...

/ Mean of the Binomial: We know the binomial random variable $X$ is the number of "success" in a repeated independent trails, calculate the mean of the variable.\
  *Method 1: By definition*\
    We know the PMF of the Binomial random variable, $p_X (x)= binom(n,x) p^x (1-p)^(n-x)$,
    so the mean should be $E[X]=sum_x x p_X (x)$ which is a huge amount of calculation (there is a tricky way through, not covered here. Hint: using the sum of PMF = 1).\
  *Method 2: Using combination of Bernoulli random variable*\
    The Binomial random variable can be seen as the combination of Bernoulli random variables: $X=X_1+X_2+X_3+...+X_n$, so it's obvious that $E[X]= E[sum_(i=1)^n X_i]=sum_(i=1)^n E[X_i]=n p$

= Conditioning

== Conditioning a Random Variable on an Event

#def()[
  Conditional PMF on an event:
  The conditional PMF of a random variable $X$, conditioned on a particular event $A$ with $P(A) gt 0$, is defined by $ p_(X bar A) (X) = P(X=x bar A) = P({X=x} bar A)/P(A) $
]

== Conditioning one Random Variable on Another

#def()[
  Conditional PMF on a ramdom variable:
  Let $X$ and $Y$ be two random variables associated with the same experiment. The conditional PMF $p_(X bar Y) (x bar y) = P(X=x, Y=y)/P(Y=y) =(p_(X,Y) (x,y))/(p_Y (y))$
]

It is just an new notation which con be considered as $p_(X bar A) (x)$ where $A$ is the event $Y=y$.

== Conditional Expcetation

Similiar to normal expcetion...

== Independence

#def()[
  Independence from an Event:
  We say that a random variable $X$ is independent of the event $A$ if $ P(X=x "and" A) = P(X=x)P(A)= p_X (x)P(A), quad "for" "all" x $ 
]

#def()[
  Independence of Random Variables:
  We say two random variables $X$ and $Y$ are independent if $ p_(X,Y) = p_X (x) p_Y (y), quad "for all" x,y $
]





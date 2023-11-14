#import "@local/note_template:0.0.1":*
#import "@local/tbl:0.0.4"
#set par(justify: true)
#set page(numbering: "1", number-align: center)
#set outline(indent: auto)
#set heading(numbering: "1.1")

#frontmatter(authors: ("Nemo",),
  // date: "2023 Oct 8 - "+str(datetime.today().display("[year] [month repr:short] [day padding:none]")),
  date: "2023 Nov 9 - 2023 Nov 9",
  title: "Part 1: Risk"
  )

#show : tbl.template.with(tab: "|")

#outline()

#pagebreak()

= Introduction to Risk and Return

== Using Historic Data

=== Arithmetic Averages and Compound Annual Return

_Moral:_ If the cost of captial is estimated from historical returns or risk preminums, use arithmetic averages, not compound annual rates of return.

/ Arithmetic Averages: For example the return of a firms stock may be $+10%$, $-10%$ or $+30%$ the average return is $(-10 + 10 + 30) / 3 %=10%$.

== Measuring Portfolio Risk

=== Variance and Standard Deviation

The standard statistical measures of spread are variance and stardard deviation.
$ "Variance"(tilde(r)_m)= 1/(N-1) sum_(i=1)^N (tilde(r)_m - macron(r)_m)^2 $
$ "Standard deviation of" tilde(r)_m = sqrt("variance"(tilde(r))_m) $

=== How Diversification Reduces Risk

Diversification reduces portfolio risk because different stocks don't move exactly together, when you invest multiple stocks you can reduce fluctuations.

The risk that can be eliminated by diversification is called _specific risk_. The risk you cannot avoid regardless of how much you diversify is known as _market risk_.

For a well diversified portfolio, only the market risk matters.

== Calculating Portfolio Risk

#figure(image("rop.png", width: 70%))

The risk of the portfolio is the sum of the boxes, note the $rho$ is the correlation coefficient.
For portfolio of more stocks, just similar process.

== How Individual Securities Affect Portfolio Risk

_The risk of a well-diversified protfolio depends on the market risk of the securities included in the protfolio._

=== Market Risk Is Measured by Beta

If you want to know the contribution of an individual security to the risk of a well diversified portfolio, you need to measure its _market risk_, and that boils down to measuring how sensitive it is to market mavements. This sensitivity is called *beta* $beta$.

#figure(image("beta.png", width: 70%))

=== Calculating Beta

#def()[
  Beta:
  A statisticaian would define the beta of stock $i$ as
  $ beta_i = sigma_im/sigma^2_m $
  ,where the $sigma_im$ is the corvariance of the stock and the market, the $sigma^2_m$ is the variance of the market.
  ]

== Diversification and Value Additivity






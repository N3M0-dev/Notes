#import "@local/note_template:0.0.1":*
#import "@local/tbl:0.0.4"
#set par(justify: true)
#set page(numbering: "1", number-align: center)
#set outline(indent: auto)
#set heading(numbering: "1.1")

#frontmatter(authors: ("Nemo",),
  // date: "2023 Oct 8 - "+str(datetime.today().display("[year] [month repr:short] [day padding:none]")),
  date: "2023 Oct 8 - 2023 Nov 9",
  title: "Part 1: Value"
  )

#show : tbl.template.with(tab: "|")

#outline()

#pagebreak()

= Goals and Governance of the Firm

== Basics

Concepts Involved:
- *Tangible assets*: Assets that have physical substance, e.g. plant and machinery.
- *Intangible assets*: Assets that have physical substance, e.g. brand names and patents.
- *Opportunity cost of capital*: The potential benefits that an individual, investor, or business misses out on when choosing one alternative over another. To make it simple, it means that if you cannot choose one thing because you have chosen another, the thing you cannot choose is the opportunity cost.\
  *e.g.* The benefits that raising chicken generates is the opportunity cost of the benefits raising pig on the same land generates. What exactly is the cost? Here, I already have the capital, now because I want to raise pigs, so I cannot raise chicken, so I cannot get the reutrn of raising chicken. Suppose that raising chickens have the return rate of 10%, which means in the beginning I invest all my capital, then I get 110% capital in return. Now because I have chosen to raise pigs, so I cannot raise chickens, I cannot get the 10 percent return, so the "cost" is 10% of capital. To make it a sentence, doing sth else cost me not raising chicken, costme 10% of capital.
- *Real assets*: Belongs to Tangible assets, physical assets that have an intrinsic worth due to their substance and properties.

== Intro

Basic goal of the corporation: INCREASE its value!

The financial question the corporation's manager face:
+ What investment should the corporation make?
+ How should the investments be paid for? Borrow, retain or reinvestment?

Three main themes of the chapter:
+ Maximizing value
+ The opportunity cost of capital
+ The curcial importance of incentives and governance

== Corporate Investment and Financing Decisions

#def((
[Financial assets:
A financial asset is a non-physical asset whose value is derived from a contractual claim, such as bank deposits, bonds, and participations in companies' share capital.],
[Security:
A security is a tradable financial asset.]))

#note(name: [Security])[
The term commonly refers to any form of financial instrument, but its legal definition varies by jurisdiction. In some countries and languages people commonly use the term "security" to refer to any form of financial instrument, even though the underlying legal and regulatory regime may not have such a broad definition. In some jurisdictions the term specifically excludes financial instruments other than equities and fixed income instruments. In some jurisdictions it includes some instruments that are close to equities and fixed income, e.g., equity warrants.

In the United Kingdom, the Financial Conduct Authority functions as the national competent authority for the regulation of financial markets; the definition in its Handbook of the term "security"[1] applies only to equities, debentures, alternative debentures, government and public securities, warrants, certificates representing certain securities, units, stakeholder pension schemes, personal pension schemes, rights to or interests in investments, and anything that may be admitted to the Official List.

In the United States, a "security" is a tradable financial asset of any kind.[2] Securities can be broadly categorized into:
]

To carry on business, a corporation needs all kinds of real assets, which need to be paid for.And to pay for these, corporation sells claims on the assets and on the cash flow they will generate, which are called financial assets and securitys.

e.g. Bank loan: The bank provide corporation with cash, and the corporation promises(claims) to pay back with interest.

So what mentioned above suggests (roughly) the following:
+ Investment decision = management of real assets
+ Financing decision = trade of financial assets

=== Investment Decisions

#figure(
  image("Table_1.1.png",width: 80%) 
) 

The investment decisions are often referred to as capital budgeting or capital expenditure (CAPEX) decisions.

=== Financing Decisions

#term_box("Prerequisite")[
Stock #text(style: "italic",fill: gray)[really fucking complicated ...]:
Stocks (also capital stock, or sometimes interchangeably, shares) consist of all the shares by which ownership of a corporation or company is divided. A single share of the stock means fractional ownership of the corporation in proportion to the total number of shares. This typically entitles the shareholder (stockholder) to that fraction of the company's earnings, proceeds from liquidation of assets (after discharge of all senior claims such as secured and unsecured debt), or voting power, often dividing these up in proportion to the amount of money each stockholder has invested. Not all stock is necessarily equal, as certain classes of stock may be issued, for example, without voting rights, with enhanced voting rights, or with a certain priority to receive profits or liquidation proceeds before or after other classes of shareholders.

Stock can be bought and sold privately or on stock exchanges. Such transactions are closely overseen by governments and regulatory bodies to prevent fraud, protect investors, and benefit the larger economy. The stocks are deposited with the depositories in the electronic format also known as Demat account. As new shares are issued by a company, the ownership and rights of existing shareholders are diluted in return for cash to sustain or grow the business. Companies can also buy back stock, which often lets investors recoup the initial investment plus capital gains from subsequent rises in stock price. Stock options issued by many companies as part of employee compensation do not represent ownership, but represent the right to buy ownership at a future time at a specified price. This would represent a windfall to the employees if the option is exercised when the market price is higher than the promised price, since if they immediately sold the stock they would keep the difference (minus taxes).

Stock bought and sold in private markets fall within the private equity realm of finance.
]

As shown in Table 1.1, a corporation can raise money from lenders or from shareholders. A corporation can issue bonds or borrow from bank to raise money from lenders or get the cash from shareholders. The choice between debt and equity financing is called capital structure decision.

=== What is a Corporation?

In brief, a corporation is a legal entity. In the view of law, it is a legal person that is owned by its shareholders. (This concept seems not important?)

Following is some intro form wikipedia:

#note(name: [Corporation])[
A corporation is an organization—usually a group of people or a company—authorized by the state to act as a single entity (a legal entity recognized by private and public law as "born out of statute"; a legal person in a legal context) and recognized as such in law for certain purposes.[1]: 10  Early incorporated entities were established by charter (i.e., by an ad hoc act granted by a monarch or passed by a parliament or legislature). Most jurisdictions now allow the creation of new corporations through registration. Corporations come in many different types but are usually divided by the law of the jurisdiction where they are chartered based on two aspects: whether they can issue stock, or whether they are formed to make a profit.[2] Depending on the number of owners, a corporation can be classified as aggregate (the subject of this article) or sole (a legal entity consisting of a single incorporated office occupied by a single natural person).

One of the attractive early advantages business corporations offered to their investors, compared to earlier business entities like sole proprietorships and joint partnerships, was limited liability.[clarification needed] Limited liability means that a passive shareholder in a corporation will not be personally liable either for contractually agreed obligations of the corporation, or for torts (involuntary harms) committed by the corporation against a third party. Limited liability in a contract is uncontroversial because the parties to the contract could have agreed to it and could agree to waive it by contract. However, limited liability in tort remains controversial because third parties do not agree to waive the right to pursue shareholders. There is significant evidence that limited liability in tort may lead to excessive corporate risk taking and more harm by corporations to third parties.[3][4]

Where local law distinguishes corporations by their ability to issue stock, corporations allowed to do so are referred to as stock corporations; one type of investment in the corporation is through stock, and owners of stock are referred to as stockholders or shareholders. Corporations not allowed to issue stock are referred to as non-stock corporations; i.e. those who are considered the owners of a non-stock corporation are persons (or other entities) who have obtained membership in the corporation and are referred to as a member of the corporation. Corporations chartered in regions where they are distinguished by whether they are allowed to be for-profit are referred to as for-profit and not-for-profit corporations, respectively.

There is some overlap between stock/non-stock and for-profit/not-for-profit in that not-for-profit corporations are nearly always non-stock as well. A for-profit corporation is almost always a stock corporation, but some for-profit corporations may choose to be non-stock. To simplify the explanation, whenever "stockholder" or "shareholder" is used in the rest of this article to refer to a stock corporation, it is presumed to mean the same as "member" for a non-profit corporation or for a profit, non-stock corporation. Registered corporations have legal personality recognized by local authorities and their shares are owned by shareholders[5][6] whose liability is generally limited to their investment.

Shareholders do not typically actively manage a corporation; shareholders instead elect or appoint a board of directors to control the corporation in a fiduciary capacity. In most circumstances, a shareholder may also serve as a director or officer of a corporation. Countries with co-determination employ the practice of workers of an enterprise having the right to vote for representatives on the board of directors in a company.

In American English, the word corporation is most often used to describe large business corporations.[7][8] In British English and in the Commonwealth countries, the term company is more widely used to describe the same sort of entity while the word corporation encompasses all incorporated entities.[7] In American English, the word company can include entities such as partnerships that would not be referred to as companies in British English as they are not a separate legal entity. Late in the 19th century, a new form of the company having the limited liability protections of a corporation, and the more favorable tax treatment of either a sole proprietorship or partnership was developed. While not a corporation, this new type of entity became very attractive as an alternative for corporations not needing to issue stock. In Germany, the organization was referred to as Gesellschaft mit beschränkter Haftung or GmbH. In the last quarter of the 20th century, this new form of non-corporate organization became available in the United States and other countries, and was known as the limited liability company or LLC. Since the GmbH and LLC forms of organization are technically not corporations (even though they have many of the same features), they will not be discussed in this article.
]

== The Role of the Financial Manager and the Opportunity Cost of Capital

#figure(
  image("FM.png",width: 95%)
)

=== The Investment Trade-off

#figure(
  image("inv_tradeoff.png",width: 95%)
)

Given the figure above, where should the cash go?

From the view of the owner of the corporation, the shareholders, the answer should depend which way produces more benefit. If the investment is considered to produce more interest than the shareholders invest themselves, then the cash should be used in the investment, if not, then 
the cash should be given back to the shareholders.

/ e.g. : Wal-Mart has cash set aside to build 10 new stores. It could go ahead with the new stores, or it could choose to cancel the investment project and instead pay the cash out to its stockholders. If it pays out cash, the stockholders can invest for themselves.\
  Suppose that Wal-Mart's new-store project is just about as risty as the U.S. stock market and that investment in tho stock market offers a 10% expected rate of return. If the new stores offer a superior rate of return, say 20%, then Wal-Mart’s stockholders would be happy.If the new stores offer only a 5% return, then the stockholders are better off with the cash and without the new stores; in that case, the financial manager should turn down the investment project.

In the example above, the minimum acceptable rate of return of the investment is 10%, which is called the _hurdle rate_ or _cost of capital_. Actually, it's an *_opportunity cost of capital_*, for it requires the investment opportunity available to investors in the market.

Note that the opportunity cost of capital is not just any expected return rate, it should be the expected return rate of the investment that shares the same level of risk with the current one (and it only make sence under this cricumstance).

== Goals of the Corporation

=== Shareholders Want Managers to Maximize Market Value

A large corporation may consist of both risk-averse and risk-tolerant investors, but regardless of the difference between them, maximizing market value is never wrong.

=== A Fundamental Result

=== ! ! Several Topcis Remained Uncovered ... (not that important, seems so)

= How to Calculate Present Values

== Future Values and Present Values

=== Calculate Future Values

*_Money can be invested to earn interest. A dollar today is worth more than a dollar tomorrow._*

Suppose you have \$100 in bank that pays interest $r=7%$, it's easy to get that you will get $\$100 times (1+r)=\$107$ the next year. Similarly, we can get what the number will reach in 2, 3, 4, ... years, which is the _future value_ of the \$100.

Future value of $\$100=\$100 times (1+r)^t$ (at a compound rate)

=== Calculate Present Value

Calculating the present value is actually the reverse of the calculating future value, we want to figure out how much a cashflow in the future is equivalent to the cashflow now.

Present value(PV)=$C_t/(1+r)^t=C_t times "DF"_t$, where the discount fator(DF)=$1/(1+r)^t$ 

=== Calculate the Present Value of an Investment Opportunity

Suppose that you are considering constracting a office block, which requires you to invest $\$370000$ initially and is expceted to produce a cash flow of $\$420000$ a year later. Assume that the rate of interest on the U.S. government securities is $r=5%$ pre year. Here comes 2 questions:
+ Is the opportunity worth investing?
+ If you want to sell the project after investing, at what price should you sell it?

Ans:
+ As said before, _A dollar today is worth more than a dollar tomorrow_, to figure out the problem, we need to calculate the present value of the futrue cash flow. (To simplify, we assume that the $\$420000$ is a sure thing.) So the $"PV"=\$420000/(1+5%)=\$400000 gt \$370000$, the answer is yes.
+ The project will produce a cash inflow of $\$420000$, which equals to $\$400000$ now (the PV), so the answer is obvious: $\$400000$.

#note()[
  Here we choose the $r=5%$ as the $r$ in the discount factor. The reason why this is valid isbecause that we think the $\$420000$ inflow is sure to happen, and we also think the U.S. government securities are safe, so they have the same risk.

  Here I also want to stress the logic here. It's a little complicated. The present value of the investment opportunity here means that the present value of the cashflow of the investment (which is $\$420000$ in a year) in a equally risky investment (here the U.S. government securities). And since the present value of the cashflow investing government securities is greater than the investment I now only need to invest $\$370000$ to get the same return with the same risk, so I choose invest building the office rather than put my money on the government securities.

  However, with that said in the textbook, I do think in real-life situations, the PV should be calculated with the highest discount rate that the buyer have access to. So if I raise the question that "what is the PV of the project to ME?", I believe that the answer should be $\$370000$. But again, if one ask, I'm pretty sure he don't mean that.
]

=== Net Present Value

The office building is worth $\$400000$ now, but it doesn't mean that you have earned $\$400000$ because you invested $\$370000$ before. So we need the _Net Present Value_.

$ "NPV"="PV"-"investment" $

To expand the equation, NPV can be derived from $ "NPV"=C_0 + C_1 dot "DF"_1 +C_2 dot "DF"_2 + dots.h + C_n dot "DF"_n $

=== Risk and Present Value

*_A safe dollar is worth more than a risky dollar._* Most investors avoid risk when they can do so without sacrificing return.

In the example above, we assume that the investment is safe, but it might not be the case IRL, hense the calculation above have defects. How to correct it then? Well, we need to find the return rate of a similarly risky investment to be the discount rate, and with the updated discount factor, we can correct the calculation.

e.g. If you think it is as risky as investing in the stock market and the stoct market off a return rate of 12%, then $"DF"_t=1/(1+12%)^t$. And reasonably, the PV and NPV are lower, since there are risks.

=== Present Value and Rate of Retrun

From the example above, we concluded that constructing the office building is worth doing by calculating what we have to invest in the stock securities (a equivalent-risk investment)to earn the same benefit.

We can see this another way: I invest this opportunity because that it processes a higher return rate, to be complete its rate of return exceeds the opportunity cost of capital.

$ "Return"="profit"/"investment" $

In this case, $"Return"=(\$420000-\$370000)/(\$370000)=.135$, which exceeds 12%, the rate of return of the equivalent-risk stock market. So we choose to invest in a project that have a higher rate of return.

Now we have two decision rules for capital investment:

+ _Net present value rule_. Accept investment that have positive NPV.
+ _Rate of return rule_. Accept investment that have higher rate of retrun.

#note(name: [Caution])[
  Sometimes there may be multiple results for the rate of return, and these two rules may confilct in some situations.
]

=== Calculating Present Value When There Are Multiple Cash Flows

Actually it's quite simple and easy to understand --- the following forumla is called the *discounted cash flow* (or *DCF*) formula:
$ "PV" = sum_(t=1)^T C_t/(1+r)^t (=sum_(t=1)^T C_t dot "DF"_t) $
and $ "NPV" = C_0 + "PV" = C_0 + sum_(t=1)^T C_t/(1+r)^t $

== Annuity

= Valuing Bonds

What is a bond?

A bond is a promise by the borrower (firm or the government) to pay the lender (bondholder) certain amount of money per period for a certain length of time. So, a bond is a set set of cash flows.

== Using the Present Value Formula to Value Bonds

$ "PV" = C_1/(1+r)^1 + C_2/(1+r)^2 + dots.h + ("face value" + C_N)/(1+r)^N, $
$
"where", 
  &C_t= "cupon interest payment" = "face value" times "cupon rate"\
  &r = "yield to maturity (if paid annually)"\
  &N = "maturity"
$

Now consider a bond,

#show : tbl.template.with(tab: "|", align: center, box:true)

```tbl
CSSS
CCCC.
Cash Pavements
_
2009|2010|2011|2012
$euro 8.50$|$euro 8.50$|$euro 8.50$|$euro 108.50$
```

Now work out the present value of the bond. Considering there being a equally risky investment that offers a return rate of $3.0%$, so the opportunity cost of capital is $3.0%$. Then we have 
$ "PV"=8.50/1.03 + 8.50/1.03^2 + 8.50/1.03^3 + 108.50/1.03^4 = euro 120.44 $

So the pirce now of the bond is $euro 120.44$. The price of the bonds are usually in a percentage of face value, so the price above can also be expressed as $120.44%$.

#note()[
Note that the equation above also means that if you buy the bond now at the price of $euro 120.44$, you can get a return of $3.0%$ if you hold the bond till its maturity.
]
=== Yield to Maturity (YTM)

Above we calculated the PV of a bond, now if we know the price of the bond, we wish to calculate the return rate of the bond.So, 
$ euro 120.44 =(euro) thin 8.50/(1+y) + 8.50/(1+y)^2 + 8.50/(1+y)^3 + 108.50/(1+y)^4 $
gives $y=3.0%$, so the rate of return of the bond is $3.0%$ which is called _yield to maturity_.

What determines the YTM?

I think, the answer is the market. A bond is a certain set of cash flows, so according to the equation above, the YTM is determined by and only by the price of bond. The price however, is determiend by the market. If there are some equally risky investment that offers a better rate of return, the bond wouldn't sell. So the price of the bond must be adjusted lower to meet a higher rate of return.

=== How Bond Price Vary with Interest Rates

Since a bond is a certain set of cash flows, the price should go up as the interest rate decline, and the price should decrease as the interest rate increase. In a word, they change in opposite directions. 

== Duration and Volatility

#def()[
  Duration:
  $ "Duration" = (1 times "PV"(C_1))/"PV" + (2 times "PV"(C_2))/"PV" + (3 times "PV"(C_3))/"PV" + dots + (T times "PV"(C_T))/"PV" $
]

The duration of a bond origin form the following example:

#show : tbl.template.with(tab: "|", align: center, box:true)

```tbl
CCCCSS
CCCCCC
LNNNNN.
| Price (%) || Cash pavements (%)
Bond | Feb. 2009 | Aug. 2009 | Feb. 2010... | ...Aug. 2014 | Feb. 2015
Strip ofr Feb. 2015| 88.74 | 0 | 0 ... | ... 0 | 100.00
4s of Feb. 2015| 111.26 | 2.00 | 2.00 ... | ... 2.00 |102.00
11 1/4s of Feb. 2015| 152.05 | 5.625 | 5.625 ... | ... 5.625 | 105.625
```
All the three bond above starts at Feb. 2009 and matures at Aug. 2014, but intutively, they cannot share the same duration.

#def()[
  Volatility:
  $ "volatility" = "duration"/(1+ "yield") = "modified duration" $
]

The volatility measures the how bond prices change when interest rates change. It's actually the derivative of the price.

== The Term Structure of Interest Rates

For many purposes, using a single fixed discount rate is good enough, but there are occasions when there's necessity to recognize that short-term interest rates differ from long-term rates.

#def()[
  Term Structure of Interest Rates:
  The relationship between short- and long-term interest rates is called the term structure of interest rates.
]

=== Spot Rates, Bond Prices, and the Law of One Price

The _spot rate_ is the interest rate of a certain year. Like the one-year spot rate is (e.g.) $3%$, so the PV of $1\$$ at year one is $"PV"=(dollar 1)/1.03$

_The law of one price_ states that in a well-functioning market, the same commodity must sell at the same price. Therefore, all safe cash pavements delivered on the same date must be discounted at the same discount rate.


=== Measuring the Term Structure

We can use the price of the strips to measure the term structure.

=== Money Machine

_A dollar tomorrow cannot be worth less than a dollar the day after tomorrow._

_There is no such thing as a surefire money machine._

#def()[
  Arbitrage:
  The simultaneous buying and selling of securities, currency, or commodities in different markets or in derivative forms in order to take advantage of differing prices for the same asset.
]

== Explaning the Term Structure

=== Expectations Theory of the Term Structure

#def()[
  Expectations Theory:
  In equilibrium investment in a series of short-maturity bonds must offer the same expected return as an invistment in a single long-maturity bond. Only if that in the case would investors be prepared to hold both short- and long-maturity bonds.
]

=== Introducing Risk

=== Inflation and Term Structure

Inflation risk can be reduced by investing short-term and rolling over the investment. You don't need to know the exact inflation rate because the inflation rate will be adapted to by the interest rate.

If inflation is an important source of risk for long-term investors, borrowers must offer some extra incentive if they want investors to lend long.

== Real and Nominal Rates of Interest

Look into inflation rate and interest rate:

Suppose you invest $dollar 1000$ in a one-year bond that makes a single pavement of $dollar 1100$ next year. The cash flow is certain, but the government makes no promise what these money can buy. If the inflation rate of this year is above $10%$, the $dollar 1100$ next year is worth less than the $dollar 1000$ now.

The best known index measureing the inflation is Consumer Price Index (CPI), which measures the number of dollars that it takes to pay for a typical family's purchases.

So, what we should really care about should be the _real_ dollars rather than the _nominal_ dollars.

#def()[
  Real Cash Flow:
  $ "real cash flow at date" t = ("nominal cash flow at date" t)/(1+"inflation rate")^t $
]

Suppose that you invested a bond that yields $10%$, with inflation taken into consideration (assume it's $6%$), the real situation looks like this:

#show: tbl.template.with(tab: "|", box:true, align: center)
```tbl
C|CC.
Invest Current Dolars | Receive Dollars in Year 1 | Result
$dollar 1000$ | $dollar 1100$ | $10%$ nominal rate of return
_
\^ | Expected Real Value of Dollars in Year 1 | Result
\^ | $dollar 1037.74 (=1100\/10.6)$ | $3.774%$ expected real rate of return 
```

The formula calculating the real rate of return:
$ 1+r_"real" = (1+r_"nominal")/(1+"inflation rate") $

The real rate interest is relatively stable.

=== Indexed Bonds

You can buy an indexed bond that makes cash pavement linked to inflation to nail down the real raet of return.

=== Corporate Bonds and the Risk of Default

Corporations that get into finacial distress may also be forced to default on their bonds. Thus the pavements promised to corporate bondholders represent a best-case scenario: The company will never pay more that the promised cash flows, but in hard times, it may pay less.

So in a word, there are risks buying corporate bonds. And the safety of the bands can be judged from bond ratings provided by Moody's, Standard & Poor's (S&P), and Fitch.

#show: tbl.template.with(tab: "|", box:true, align: center)

```tbl
CC
LL.
Moody's | Standard & Poor's and Fitch
_
Aaa | AAA
Aa | AA
A | A
Baa | BBB
_
Ba | BB
B | B
Caa | CCC
Ca | CC
C | C
```
Bonds whose ratings are Baa and above are called _inevstment grade_, those with a raiting of Ba and below are called _junk bonds_.

= The Value of Common Stocks

== How Common Stocks Are Traded

- If a corporation want to raise now capital, it can do so by selling new shares to investors in the _primary market_.
- Most trades in a corporation takes place on stock exchange, where investors trade existing shares. Stock exchange is also called _secondary markets_.
  - Stock exchaeges like NYSE and Nasdaq
  - A number of computer networks called _electronic communication networks (ECNs)_

== How Common Stocks Are Valued

The following content we take the company GE as an example.

One way to value the stock of GE stock is through the company's balance sheet which is published each quarter. The balance sheet lists the value of the firm's assets and liabilities. The assets include GE's plat, machinery, inventories, cash and so on. The liabililties include the money that GE owes the banks, taxes that are due to be paid and so on. The difference of the assets and liabilities is the _book value_ of GE's equity.

The book value seem to have successfully evaluated the company's equity, but there are several deficiencies:
+ The book value of the assets only shows the original (historical) cost. The value now may vary due to inflation, depreciation and some other factor(value may increase).
+ Can not value intangibles properly

=== Valuation by Comparables

Skip

=== The Determinants of Stock Prices

The shareholders receive cash from the company in the form of a stream of dividends, so
$ "PV"("stock")="PV"("expected future dividends") $

=== Today's Price

Suppose the tcurrent price of a share is $P_0$, that the expected price at the end of a year is $P_1$, and that the expceted dividend per share is $"DIV"_1$. Then $ "Expected return"=r=("DIV"_1+P_1-P_0)/P_0 $

On the other hand, if I'm given forecasts of the dividend and priec and the expected return offered by other equally riskey stocks, you can predict today's price.
$  "Price" =P_0=("DIV"_1+P_1)/(1+r) $

What exactly is the discount rate $r$? It's called the _market capitalization rate_ or _cost of equity capital_.

And the group of stocks that essentially share the same risks with the target stock is called the riks class of the target stock.

_All securities is an equivalent risk class are priced to offer the same expected same expceted return._

=== What Determines Next Year's Price?

Same method
$ P_1=("DIV"_2+P_2)/(1+r) $
$ P_0=sum_(t=1)^H "DIV"_t/(1+r)^t + P_H/(1+r)^H $

Consider a long term investment which the horizon approaches infinity, the present value will be $ P_0=sum^infinity_(t=1)"DIV"_t/(1+l)^t $

== Estimating the Cost of Equity Capital

Suppose that the growth of dividends is perpetual and at a constant rate $g$, according to the PV formula and the formula of growing perpetuity, the present value is $P_0="DIV"_1/(r-g)$. So the expected rate of return is $r="DIV"_1/P_0+g$.

The expceted return equals the _dividend yield_ ($"DIV"_1/P_0$) plus the expceted rate of growth of the dividends.

=== Measuring the Rate of Return

The rate of return is composed of two parts: the dividend yield and the dividends growth. The former is easy to measure, while the latter is not. The dividend growth rate is measured as follow
$ g&="plowback ratio" times "ROE" \ &=(1-"payout ratio") times "EPS"/"book equity per share" \ &=(1-"DIV"/"EPS") times "EPS"/"book equity per share" $

=== Dangers Lurk in Constant-Growth Formulas

The constant growth formula may derive some unusual high growth rate, which should not hold forever, while the formula think it will.

==== DCF Valuation with Varying Growth (Not in PPT)

Consider a firm with $"DIV"_1=dollar .50$ and $P_0=dollar 50$. The firm has plowed back $80%$ of the earnings and has a ROE of $25%$. The statistics show that *_in the past_*
$ "Dividend growth rate"="plowback ratio"times "ROE"=.8 times .25=.20 $

In the constant growth formula, we assume the future dividend growth rate is .20, which will reply $r=(.50)/50.00+.20=.21$. But this is obviously silly because no firm can continue growing at this rate. So, in this situation, we should introduce the DCF with varying growth:

$ P_0&="DIV"_1/(1+r)+"DIV"_2/(1+r)^2+("DIV"_3+P_3)/(1+r)^3\ 
  &="DIV"_1/(1+r)+"DIV"_2/(1+r)^2+"DIV"_3/(1+r)^3+1/(1+r)^3 times "DIV"_4/(r-g) $

=== Stock Price and Earning Per Share

$ P_0 = "EPS"_1/r + "PVGO" $
where PVGO is the present value of growth opportunity.

== Valuing a Business by DCF (Using DCF)

#def()[
  Free Cash Flow (FCF):
  Free cash flow is teh amount of cash that a firm can pay out to investars after paying for all investment necesary for growth.
]

$  "PV" =underbrace("FCF"_1/(1+r)+"FCF"_2/(1+r)^2+ dots.h + "FCF"_H/(1+r)^H,"PV"("free cash flow")) + underbrace("PV"_H/(1+r)^H,"PV"("horizon value")) $

= Net Present Value and Other Investment Criteria

- NPV
- Book rate of return
- Payback
- IRR
- Proficbility Index (PI)

Easy, skipping 

= Making Investment Decisions with the Net Present Value Rule

Skip

#set page(margin: 0.75in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 5
  Henry Zheng
]
#pagebreak()

== Problem 1
Show that the following sets are Borel (Challenge: Determine which are open and/or closed):
1. ${(x, y) in RR^2 : "there exists" C > 0 "such that" abs(k x - ell y) < C / (abs(k) + abs(ell)) "for infinitely many pairs" (k, ell) in ZZ^2}$
2. For a fixed $lambda > 0$, ${(x_n) in Omega_m : 1/i sum_(n=1)^i x_n >= lambda "for some" i in NN}$
3. ${x in RR : "there exist sequences" n_k -> infinity, space q_k -> infinity in NN "such that" 2^(n_k) x - q_k -> 0}$
#line(length: 100%)
// todo
#pagebreak()

== Problem 2
Consider an arbitrary set $X$, and a non-negative function $f : X -> RR_(>=0)$. Define
$
  mu: 2^X -> RR quad mu(A) = sum_(x in A) f(x) "if" A "countable", infinity "otherwise"
$
Show that $mu$ is a measure on $X$ with $sigma$-algebra $2^X$. (If $f equiv 1$, $mu$ is called the _counting measure_, and simply counts the number of points in $A$)
#line(length: 100%)

Recall if $cal(A)$ is a $sigma$-algebra on $X$, then a _measure_ on $X$ is a function $M: cal(A) -> RR$ such that
1. $M(emptyset) = 0$
2. $M(A) >= 0 space forall A in cal(A)$
3. $M(union_(i=1)^infinity A_i) = sum_(i=1)^infinity M(A_i)$ whenever $A_i in cal(A)$ are pairwise disjoint

We argue $mu(emptyset) = 0$. Since $emptyset$ is countable, then $mu(emptyset) = sum_(x in emptyset) f(x) = 0$.

We argue $mu(A) >= 0 space forall A in cal(A)$. We exhaustively handle the two cases:
1. If $A$ is countable, then each $f(x) >= 0$, which means that their summation is also greater than or equal to $0$.
2. If $A$ is not countable, then $mu(A) = infinity >= 0$.

We argue that $mu(union_(i=1)^infinity A_i) = sum_(i=1)^infinity mu(A_i)$ whenever $A_i in cal(A)$ are pairwise disjoint. We exhaustively handle the two cases:
1. #block[
  Assume some $A_i$ is uncountable.

  Then $sum_(i=1)^infinity mu(A_i) = infinity$, even if the other sets are countable, because anything added to infinity is infinity.

  Additionally, $union_(i=1)^infinity A_i$ must be uncountable, as the union of an uncountable set and an arbitrary set is also uncountable. Thus $mu(union_(i=1)^infinity A_i) = infinity$.
]

2. #block[
  Assume all $A_i$ are countable.

  Since all $A_i$ are countable, enumerate their common union $x_1, x_2, ..., x_n$. Note that
  $
    sum_(i=1)^infinity mu(A_i) = sum_(i=1)^infinity sum_(x in A_i) f(x) = f(x_1) + f(x_2) + ... + f(x_n)
  $
  ...because the sets are pairwise disjoint, and thus we do not sum the same point twice. Finally, note that by definition,
  $
    mu_(union_(i=1)^infinity A_i) = sum_(x in union_(i=1)^infinity A_i) f(x) = f(x_1) + f(x_2) + ... + f(x_n)
  $
  ...and thus the sums are equal.
]
#pagebreak()

== Problem 3
Show that if $f : X -> Y$ is a continuous map between metric spaces and $A subset.eq Y$ is Borel, then $f^(-1) (A)$ is Borel. [_Hint_: You may use that the preimage of an open set is open for continuous maps]
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Show that if $(X, cal(A), mu)$ is a measure space ($X$ is a set with $sigma$-algebra $cal(A)$ on which a measure $mu$ is defined) and $A_1 subset A_2 subset A_3 subset ...$ is a nested family of measurable sets, then
$
  mu(union.big_(i=1)^n A_i) -->^(n->infinity) mu(union.big_(i=1)^infinity A_i)
$
[_Hint_: Find a way to turn it into a disjoint union and use the property of a measure]
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
Let $(ell_k)$ be a sequence of real numbers in $(0, 1)$. Define a nested sequence of sets in the following way:
$
  C_0 = [0, 1] quad "If" C_k = union.big_(i=1)^(2^k) [a_(i k), b_(i k)], C_(k+1) = union.big_(i=0)^(2^k) [a_(i k), c_(i k)] union [d_(i k), b_(i k)]
$
where
$
  c_(i k) = (a_(i k) (1 + ell_k) + b_(i k) (1 - ell_k)) / 2
$
and
$
  d_(i k) = (a_(i k) (1 - ell_k) + b_(i k) (1 + ell_k)) / 2
$
That is, we remove the an open interval of length $ell_k (b_(i k) - a_(i k))$ from each of the intervals in $C_k$. #footnote[This is the middle-thirds Cantor set when $ell_k equiv 1/3$.] Find the outer measure of $C = inter_(k=0)^infinity C_k$ in terms of the sequence $(ell_i)$, and show that for every $lambda in [0, 1)$, there is some sequence for which the outer measure of $C$ is $lambda$.
#line(length: 100%)
// todo

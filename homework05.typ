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

${(x, y) in RR^2 : exists C > 0 space abs(k x - ell y) < C / (abs(k) + abs(ell)) "for infinitely many pairs" (k, ell) in ZZ^2}$
#pad(x: 20pt)[
  It suffices to prove that the set is the union of countably many closed sets. Note that the set can be expressed as a union of lines, where each $(k, ell) in ZZ^2$ defines a line. Each line is obviously closed.

  Furthermore, since the set of pairs $(k, ell) in ZZ^2$ is countable, then this set is the union of countably many lines. Then the set is the union of countably many closed sets, and thus Borel.
]

For a fixed $lambda > 0$, ${(x_n) in Omega_m : 1/i sum_(n=1)^i x_n >= lambda "for some" i in NN}$
#pad(x: 20pt)[
  We use a similar approach as the previous set.

  Recall that the inverse image of a closed set is also closed. Further note that this set has a bijection with lines in $RR^i$. As previously argued, lines are closed, and thus, this set must be closed, and thus Borel.
]

${x in RR : "there exist sequences" n_k -> infinity, space q_k -> infinity in NN "such that" 2^(n_k) x - q_k -> 0}$
#pad(x: 20pt)[
  Let $n_k -> infinity$. Then choose $q_k = 2^(n_k) x$. Obviously, then $q_k -> infinity$, and furthermore, $2^(n_k) x - q_k = 0 -> 0$. Therefore, this simply evaluates to $RR$. Since $RR$ is open, it must be Borel.
]
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

Recall the collection of Borel sets is the smallest $sigma$-algebra of sets that contains all the open sets. Additionally, recall a collection of sets $cal(A)$ is called a $sigma$-algebra of subsets of $X$ if
1. $emptyset in cal(A)$
2. $B in cal(A) => X \\ B in cal(A)$
3. $A_1, A_2, ... in cal(A) => union_(i=1)^infinity A_i in cal(A)$

Define inductively the Borel sets of $Y$:
1. $B_0 = {x in 2^Y : x "is open"}$
2. $B_(i+1) = {x = b_1 union b_2 "for" b_1, b_2 in B_i} union {x = Y \\ b "for" b in B_i}$
...and note that a set $A subset.eq Y$ is Borel if and only if
$
  A in union.big_(i=0)^infinity B_i
$

We prove that the inverse image of a Borel set is also a Borel set. It suffices to inductively argue the two propositions below.

First, we argue that the inverse image of every $A in B_0$ is a Borel set.
#pad(x: 20pt)[
  Note that every $A in B_0$ is open. Then the inverse image $f^(-1) (A)$ must be an open set, and thus is a Borel set by definition.
]

Secondly, we argue that if the inverse image of every $A_i in B_i$ is a Borel set, then the inverse image of every $A_(i+1) in B_(i+1)$ is a Borel set.
#pad(x: 20pt)[
  Let $A_(i+1) in B(i+1)$. By exhaustion, $A_(i+1)$ may either be from the left or the right set. We handle each case.

  Assume that $A_(i+1) = B_1 union B_2$ for $B_1, B_2 in B_i$. We have previously proven that the inverse image of a union is the union of the inverse images. Then
  $
    f^(-1) (A_(i+1)) = f^(-1) (B_1 union B_2) = f^(-1) (B_1) union f^(-1) (B_2)
  $
  ...and by our inductive assumption, both $f^(-1) (B_1)$ and $f^(-1) (B_2)$ are Borel, and thus their union must be Borel.

  Assume $A_(i+1) = Y \\ B$ for $B in B_i$. Since set difference is preserved across preimage,
  $
    f^(-1) (A_(i+1)) = f^(-1) (Y \\ B) = f^(-1) (Y) \\ f^(-1) (B) = X \\ f^(-1) (B)
  $
  ...and because $f^(-1) (B)$ is Borel, then $X \\ f^(-1) (B)$ is Borel.
]
#pagebreak()

== Problem 4
Show that if $(X, cal(A), mu)$ is a measure space ($X$ is a set with $sigma$-algebra $cal(A)$ on which a measure $mu$ is defined) and $A_1 subset A_2 subset A_3 subset ...$ is a nested family of measurable sets, then
$
  mu(union.big_(i=1)^n A_i) -->^(n->infinity) mu(union.big_(i=1)^infinity A_i)
$
[_Hint_: Find a way to turn it into a disjoint union and use the property of a measure]
#line(length: 100%)

Assume, without loss of generality, that each $A_i$ is disjoint. We construct a family of sets $B_i$ such that each $B_i$ is disjoint, and $mu(union_(i=1)^n A_i) = mu(union_(i=1)^n B_i)$.
#pad(x: 20pt)[
  We use the same strategy as demonstrated in class. Define
  $
    & B_1 = A_1, \
    & B_i = A_i \\ (union.big_(j=1)^(i-1) A_j)
  $
  ...then $forall i space B_i$ is measurable, since it is constructed through finite unions and complements. Furthermore,
  $
    & union.big_(i=1)^n A_i = union.big_(i=1)^n B_i => \
    & mu(union.big_(i=1)^n A_i) = mu(union.big_(i=1)^n B_i)
  $
]

Then
$
  lim_(n -> infinity) mu(union.big_(i=1)^n B_i) = lim_(n -> infinity) sum_(i=1)^n mu(B_i) = sum_(i=1)^infinity mu(B_i) = mu(union.big_(i=1)^infinity B_i)
$
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

I spent a while thinking about this problem and could not figure out how to solve it. Unfortunately, I'll have to turn in an incomplete submission.

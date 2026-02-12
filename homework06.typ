#set page(margin: 0.5in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 6
  Henry Zheng
]
Throughout, $m^*$ denotes Lebesgue outer measure and $m$ denotes Lebesgue measure. "Measurable" should be interpreted as Lebesgue measurable. The following definitions and features will be useful to recall:
- $m^*$ is monotonic: If $A subset.eq B$, then $m^* (A) <= m^* (B)$
- $m^*$ is subadditive: If $A_1, A_2, ...$ is a finite or countable collection of sets, then $m^* (union_(i=1)^infinity A_i) <= sum_(i=1)^infinity m^* (A_i)$ (in particular, $m^* (A union B) <= m^* (A) + m^* (B)$)
- $A subset.eq RR$ is (Lebesgue) measurable if and only if for all $B subset.eq RR$, \ $m^* (B) = m^* (B inter A) + m^* (B \\ A)$.
- Since the subadditivity inequality always holds, to prove measurability, it suffices to show that $m^* (B) >= m^* (B inter A) + m^* (B \\ A)$ for all $B subset.eq RR$
- $f: RR -> RR$ is _measurable_ if for every Borel set $A subset.eq RR$, $f^(-1) (A)$ is measurable in $RR$
#pagebreak()

== Problem 1
Show that if $m^* (A) = 0$, then $A$ is measurable.
#line(length: 100%)

Let $B in RR$. As noted above, it suffices to show that
$
  m^* (B) >= m^* (B inter A) + m^* (B \\ A)
$

We proceed via two applications of monotonicity. Recall that if $X subset.eq Y$, then $m^* (X) <= m^* (Y)$.

Note that $B inter A subset.eq A$. Then $m^* (B inter A) <= m^* (A) = 0$. Since measure must be non-negative, then $m^* (B inter A) = 0$.

Note that $B \\ A subset.eq B$. Then $m^* (B \\ A) <= m^* (B)$.

Finally, we conclude that
$
  & m^* (B inter A) + & m^* (B \\ A) & = \
  & 0 + & m^* (B \\ A) & <= m^* (B)
$
#pagebreak()

== Problem 2
Show that if $A subset.eq RR$ and there exists a measurable set $B$ containing $A$ such that $m^* (B \\ A) = 0$, then $A$ is measurable. _Note_: This finishes the proof of the measurability criterion from class.
#line(length: 100%)

We use the fact that the measurable sets form a $sigma$-algebra, which means they are closed under countable union and intersection.

By assumption, $B$ is a measurable set. By Problem 1, $B \\ A$ is a measurable set. Then
1. Because the measurable sets form a $sigma$-algebra, then $RR \\ (B \\ A)$ is measurable.
2. For the same reason, $B inter (RR \\ (B \\ A))$ is measurable.

Finally, we argue that $B inter (RR \\ (B \\ A)) = A$. Note that by assumption, $A subset.eq B$. Then
$
  & B inter (RR \\ (B \\ A)) = \
  & B inter (B \\ A)^C = \
  & B inter (B inter A^C)^C = \
  & B inter (B^C union A) = \
  & (B inter B^C) union (B inter A) = \
  & (B inter A) = \
  & A
$
#pagebreak()

== Problem 3
Let $A subset.eq RR$ be a subset of positive, finite measure. Define the _conditional measure_ on $A$ to be the measure on the $sigma$-algebra of Lebesgue measurable subsets by
$
  mu_A (B) = (m(B inter A))/(m(A))
$
Show that $mu_A$ is a measure on $RR$ defined on the Lebesgue $sigma$-algebra and $mu_A (RR) = mu_A (A) = 1$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
If $mu$ is a measure defined on the Borel $sigma$-algebra, we say that $x in "supp"(mu)$ if and only if for all $epsilon > 0$, $mu((x - epsilon, x + epsilon)) > 0$. Compute the supports of the following measures (and prove that your answers are correct):
#enum(
  numbering: "(1)",
  [$m$ (Lebesgue measure)],
  [$delta_x$ (Recall $delta_x (A) = 1$ if $x in A$ and $0$ otherwise)],
  $mu_(0, 1)$,
  [$mu_A$ where $A = C union [1, 2]$, where $C$ is the middle-thirds Cantor set],
  [$mu_A$ where $A = union_(n=1)^infinity [1/(2 dot 4^n), 1/(4^n)$],
)
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
Show that $"supp"(mu)$ is a closed set for every measure $mu$ defined on the Borel $sigma$-algebra. _Hint_: Show instead that $RR \\ "supp"(mu)$ is open.
#line(length: 100%)
// todo
#pagebreak()

== Problem 6
If $X$ is a metric space, a function $f: X -> RR$ is called _upper semicontinuous_ if and only if for all $epsilon > 0$ and $x in X$, there exists $delta > 0$ such that if $d(x, y) < delta$, then $f(y) < f(x) + epsilon$.
#enum(
  numbering: "(1)",
  [Give an example of a function which is upper semicontinuous but not continuous.],
  [Show that if $f$ is upper semicontinuous, then it is measurable.],
)
#line(length: 100%)
// todo

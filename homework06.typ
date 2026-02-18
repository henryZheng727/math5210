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

Let $cal(B)$ be the Lebesgue measurable subsets. Recall that in order to be a measure, we must obey the following properties:
1. $mu_A (emptyset) = 0$
2. $mu_A (B) >= 0$ for all $B in cal(B)$
3. If $A_1, ..., A_n$ are pairwise disjoint, then $mu_A (union_(i=1)^infinity A_i) = sum_(i=1)^infinity mu_A (A_i)$

We argue $mu_A (emptyset) = 0$. By assumption, $m$ is a measure already, so note that $m(emptyset) = 0$.
$
  mu_A (emptyset) = m(emptyset inter A) / m(A) = 0 / m(A) = 0
$

We argue $mu_A (B) >= 0$ for all $B in cal(B)$.
#pad(x: 20pt)[
  By assumption, $m$ is a measure, and thus $m(B union A)$ and $m(A)$ are both non-negative. Then $mu_A (B) = m(B union A) / m(A)$ must be non-negative.
]

We argue if $A_1, ..., A_n$ are pairwise disjoint, then $mu_A (union_(i=1)^infinity A_i) = sum_(i=1)^infinity mu_A (A_i)$.
#pad(x: 20pt)[
  $
    & mu_A (union_(i=1)^infinity A_i) = \
    & m((union_(i=1)^infinity A_i) inter A) / m(A) = \
    & m(union_(i=1)^infinity (A_i inter A)) / m(A) = \
    & sum_(i=1)^infinity m(A_i inter A) / m(A) = \
    & sum_(i=1)^infinity mu_A (A_i)
  $
]

We argue $mu_A (RR) = mu_A (A) = 1$.
#pad(x: 20pt)[
  First,
  $
    mu_A (RR) = m(RR inter A) / m(A) =  m(A) / m(A) = 1
  $
  Secondly,
  $
    mu_A (A) = m(A inter A) / m(A) = m(A) / m(A) = 1
  $
]
#pagebreak()

== Problem 4
If $mu$ is a measure defined on the Borel $sigma$-algebra, we say that $x in "supp"(mu)$ if and only if for all $epsilon > 0$, $mu((x - epsilon, x + epsilon)) > 0$. Compute the supports of the following measures (and prove that your answers are correct):
#enum(
  numbering: "(1)",
  [$m$ (Lebesgue measure)],
  [$delta_x$ (Recall $delta_x (A) = 1$ if $x in A$ and $0$ otherwise)],
  $mu_((0, 1))$,
  [$mu_A$ where $A = C union [1, 2]$, where $C$ is the middle-thirds Cantor set],
  [$mu_A$ where $A = union_(n=1)^infinity [1/(2 dot 4^n), 1/(4^n)]$],
)
#line(length: 100%)

We argue $"supp"(m) = RR$.
#pad(x: 20pt)[
  Let $x in RR$ and $epsilon > 0$. Then $m((x - epsilon, x + epsilon)) = 2 times epsilon > 0$.

  Let $y in.not RR$. Then trivially, $y$ does not exist, and $m((y - epsilon, y + epsilon)) = m(emptyset) = 0$ for any $epsilon$.
]

We argue $"supp"(delta_x) = {x}$.
#pad(x: 20pt)[
  Let $z in {x}$, i.e., $z = x$. Let $epsilon > 0$. Note that by definition, $x in (x - epsilon, x + epsilon)$, and therefore, $mu((x - epsilon, x + epsilon)) = 1 > 0$.

  Let $y in RR \\ {x}$, i.e., $y != x$. We argue $exists epsilon > 0$ such that $mu((y - epsilon, y + epsilon)) = 0$. Specifically, let $epsilon = (x - y) / 2$. Then it must be impossible for $x in (y - epsilon, y + epsilon)$ (as the interval strictly has endpoints closer than $x$). Then $mu((y - epsilon, y + epsilon)) = 0$.
]

We argue $"supp"(mu_((0, 1))) = [0, 1]$.
#pad(x: 20pt)[
  Let $x in [0, 1]$. Let $epsilon > 0$. Then
  $
    & mu_((0, 1)) ((x - epsilon, x + epsilon)) = \
    & m((x - epsilon, x + epsilon) inter (0, 1)) / m((0, 1)) = \
    & m((x - epsilon, x + epsilon) inter (0, 1))
  $
  Note that because $x in [0, 1]$, then $(x - epsilon, x + epsilon) inter (0, 1) != emptyset$, and in particular, it must be an interval of non-zero length. Then the measure must be larger than $0$.

  Let $y in.not [0, 1]$. We show $exists epsilon > 0$ such that $mu((y - epsilon, y + epsilon)) = 0$. Specifically, choose
  $
    epsilon = cases(
      -y/2 "if" y < 0,
      (y-1)/2 "if" y > 1
    )
  $
  Then, by our choice of $epsilon$, the distance between $y$ and the endpoints of $(0, 1)$ is always larger than $epsilon$, and thus $(y - epsilon, y + epsilon) inter (0, 1) = emptyset ==> mu_((0, 1)) (y - epsilon, y + epsilon) = 0$.
]
#pagebreak()

We argue $"supp"(mu_A)$ where $A = C union [1, 2]$ (where $C$ is the middle-thirds Cantor set) is $A$.
#pad(x: 20pt)[
  Let $x in A$, and let $epsilon > 0$. We argue $mu_A ((x - epsilon, x + epsilon)) > 0$. We note that $A$ is the union of intervals, since $x in A$, then the interval $(x - epsilon, x + epsilon)$ must have non-empty intersection with $A$; and furthermore, $(x - epsilon, x + epsilon) inter A$ will take the form of a union of intervals (by DeMorgan's Law). Then the conditional measure must be nonzero.

  Let $y in.not A$. We argue $exists epsilon > 0$ such that $mu_A ((y - epsilon, y + epsilon)) = 0$. It suffices to prove that $(y - epsilon, y + epsilon) inter A = emptyset$. We argue that $A$ is closed, and thus $A'$ is open. Then there must exist an open ball centered at $y$ which is contained in $A'$, and thus has no intersection with $A$. Thus, it suffices to prove $A$ is closed.

  Note that $A$ is the union of the Cantor set and a closed interval. The union of two closed sets is closed, and the closed interval is obviously closed, so it suffices to prove the Cantor set is closed. By DeMorgan's law, the Cantor set is the complement of the countable union of open intervals. The countable union of open intervals is open, and thus its complement is closed.
]

We argue $"supp"(mu_A)$ where $A = union_(n=1)^infinity [1/(2 dot 4^n), 1/(4^n)]$ is $A union {0}$.
#pad(x: 20pt)[
  Let $x in A union {0}$, and let $epsilon > 0$. We argue $mu_A ((x - epsilon, x + epsilon)) > 0$. We exhaustively handle the cases: $x in A$ and $x = 0$.
  #pad(x: 20pt)[
    Suppose $x in A$. Then $(x - epsilon, x + epsilon) inter A != emptyset$. Furthermore, as $A$ is the union of intervals, then $(x - epsilon, x + epsilon union A$ must also be the union of some intervals. Then the conditional measure must be non-zero.

    Suppose $x = 0$. Note that the left interval approaches $0$ as $n -> infinity$; thus, $0$ is a limit point for $A$. Then any interval centered at $0$ will have non-empty intersection with $A$ in the form of some union of intervals; thus the conditional measure is non-zero.
  ]

  Let $y in.not A union {0}$. We argue $exists epsilon$ such that $mu_A ((y - epsilon, y + epsilon)) > 0$. Similarly to the previous question, it suffices to prove that $A union {0}$ is closed. Recall that a set is closed if and only if it contains all of its limit points. We argue ${0}$ is the only limit point of $A$ not contained in $A$, and thus, $A union {0}$ is closed.

  We examine all cases of points not contained in $A$. There are several possibilities:
  1. If the point $z < 0$ or $z > 1/4$, then it is not a limit point, as we can easily construct an interval that has no overlap with $A$ at all.
  2. If the point is in one of the "gaps" between the intervals of $A$, then because each interval is closed and disjoint, each gap is open and thus has a neighborhood that does not overlap with $A$.

  The only remaining points are $0$ and points in $A$. Then those must be the only possible limit points, and thus $A union {0}$ is closed.
]
#pagebreak()

== Problem 5
Show that $"supp"(mu)$ is a closed set for every measure $mu$ defined on the Borel $sigma$-algebra. _Hint_: Show instead that $RR \\ "supp"(mu)$ is open.
#line(length: 100%)

Let $mu$ be a measure defined on the Borel $sigma$-algebra. We argue that $RR \\ "supp"(mu)$ is open.

Let $x in RR \\ "supp"(mu)$. Then, by the negation of the definition of $"supp"$,
$
  exists epsilon > 0 "such that" mu((x - epsilon, x + epsilon)) = 0
$

Recall that a set $S$ is open if and only
$
  forall x in S space exists epsilon > 0 "such that" B(x, epsilon) subset.eq S
$
Note that $B(x, epsilon) = (x - epsilon, x + epsilon)$. Thus, it suffices to prove $(x - epsilon, x + epsilon) subset.eq RR \\ "supp"(mu)$.

Let $y in (x - epsilon, x + epsilon)$. We argue then that $y in RR \\ "supp"(mu)$. Since $(x - epsilon, x + epsilon)$ is open, then
$
  exists epsilon' > 0 "such that" (y - epsilon', y + epsilon') subset.eq (x - epsilon, x + epsilon)
$
Then
$
  & (y - epsilon', y + epsilon') subset.eq (x - epsilon, x + epsilon) => \
  & mu((y - epsilon', y + epsilon')) <= mu((x - epsilon, x + epsilon)) => \
  & mu((y - epsilon', y + epsilon')) <= 0 => \
  & mu((y - epsilon', y + epsilon')) = 0
$
...which means that for our arbitrary $y$,
$
  exists epsilon' > 0 "such that" mu((y - epsilon, y + epsilon)) = 0
$
...and thus $y in RR \\ "supp"(mu)$.
#pagebreak()

== Problem 6
If $X$ is a metric space, a function $f: X -> RR$ is called _upper semicontinuous_ if and only if for all $epsilon > 0$ and $x in X$, there exists $delta > 0$ such that if $d(x, y) < delta$, then $f(y) < f(x) + epsilon$.
#enum(
  numbering: "(1)",
  [Give an example of a function which is upper semicontinuous but not continuous.],
  [Show that if $f$ is upper semicontinuous, then it is measurable.],
)
#line(length: 100%)

We argue that $f(x) = floor(x)$ is upper semicontinuous, but not continuous.
#pad(x: 20pt)[
  First, we note that $f(x)$ is not continuous. This was proven in a previous analysis class. It has jump discontinuities at every integer value of $x$.

  Secondly, we argue that $f(x)$ is upper semicontinuous. Let $epsilon > 0$, and let $x in X$. Choose
  $
    delta < min(d(x, floor(x)), d(x, floor(x + 1)))
  $
  Then note that $forall y : d(x, y) < delta$, then
  $
    & floor(x) = floor(y) => \
    & f(x) = f(y) => \
    & f(y) < f(x) + epsilon
  $
]

We argue that if $f$ is upper semicontinuous, then it is measurable.
#pad(x: 20pt)[
  As discussed in class, we may equivalently prove that $f^(-1) ([a, infinity))$ is measurable $forall a in RR$. Note that if $f^(-1) ((-infinity, a))$ is measurable, then $f^(-1) ([a, infinity))$ is measurable.

  Fix $a in RR$ and let $x in f^(-1) ((-infinity, a)) = {x in X : f(x) < a}$. We argue that this set is open and thus measurable. By an application of the open ball definition, it suffices to prove that if $d(x, y) < delta$ for some $delta > 0$, then $y in f^(-1) ((-infinity, a))$.

  By our definition of upper semicontinuity, we are given that
  $
    forall epsilon' > 0 space exists delta > 0 "such that" d(x, y) < delta => f(y) < f(x) + epsilon
  $

  Then choose $epsilon' = a - f(x)$. Then $exists delta$ such that
  $
    & d(x, y) < delta => \
    & f(y) < f(x) + epsilon => \
    & f(y) < f(x) + a - f(x) => f(y) < a
  $
  ...which implies that $y in f^(-1) ((-infinity, a))$.
]

#set page(
  margin: 0.75in
)

#set text(
  size: 12pt
)

#show math.equation.where(block: false): set math.frac(style: "skewed")

= Analysis Fall 2025 - Homework 2
If $V$ is a normed vector space, a function $cal(L): V -> RR$ is called a _bounded functional_ if $cal(L)$ is linear (i.e., $cal(L)(v + w) = cal(L)(v) + cal(L)(w)$ and $cal(L)(lambda v) = lambda cal(L)(v)$ and $sup_(norm(v) = 1) abs(cal(L)(v)) < infinity$.
#pagebreak()

== Problem 1
If $X$ is a compact metric space, a function $f: X -> RR$ is called $L$-Lipschitz if for every $x, y in X$, $abs(f(x) - f(y)) <= L abs(x - y)$. Show that $K_(L, B) = {f in C^0 (X) : f "is" L"-Lipschitz and" norm(f)_(C^0) <= B}$ is compact for every $L$ and $B$.
#line(length: 100%)

Fix $L, B >= 0$. By the Arzela-Ascoli Theorem, the set $K_(L, B)$ is compact if and only if
1. $K_(L, B)$ is closed.
2. $K_(L, B)$ is bounded.
3. $K_(L, B)$ is equicontinuous.

We first argue that $K_(L, B)$ is closed.
#pad(x: 20pt)[
  Recall that the intersection of two closed sets is closed, and observe that $K_(L, B)$ is the intersection of ${g in C^0 (X) : norm(g)_(C^0) <= B}$ and ${h in C^0 (X) : h "is" L"-Lipschitz"}$.

  We argue that ${g in C^0 (X) : norm(g)_(C^0) <= B}$ is closed. Recall that for a continuous function $alpha: X -> Y$, if $A subset Y$ is closed, then $alpha^(-1) (A) subset X$ is closed. Further recall that norms are continuous. Observe that the set $[0, B] subset RR$ is closed, and thus its inverse image is closed.

  We argue that $D = {g in C^0 (X) : g "is" L"-Lipschitz"}$ is closed. Recall that if every sequence in $D$ converges to a point in $D$, then $D$ is closed. Let $(h_n)$ be a sequence of Lipschitz functions in $D$ converging to $h$. We argue $h in D$.

  Let $x, y in X$. Let $epsilon > 0$, and note that $exists n$ such that $norm(h_n - h)_(C^0) < epsilon / 2$. Since the $C^0$-norm defines a supremum, this implies that $forall z in X : abs(h_n (x) - h(x)) < epsilon / 2$. Additionally, note that $h_n$ is $L$-Lipschitz; thus $abs(h_n (x) - h_n (y)) <= L abs(x - y)$.

  Finally, $abs(h(x) - h(y)) <= abs(h(x) - h_n (x)) + abs(h_n (x) - h_n (y)) + abs(h_n(y) - h(y))$. Then $abs(h(x) - h(y)) < L abs(x - y) + epsilon$. Since this holds $forall epsilon > 0$, then $abs(h(x) - h(y)) <= L abs(x - y)$. Thus $h$ is $L$-Lipschitz.
]

We secondly argue that $K_(L, B)$ is bounded.
#pad(x: 20pt)[
  Note that $forall f in K$, then $norm(f)_(C^0) <= B$. Since the norm defines the distance metric, the distance of each value from the origin is also bounded above by $B$. Thus, $K_(L, B)$ is bounded.
]

We finally argue that $K_(L, B)$ is equicontinuous.
#pad(x: 20pt)[
  Recall that a set $S$ is equicontinuous if and only if
  $
    forall epsilon > 0 space exists delta > 0 "such that" forall x, y "with" d(x, y) < delta "and" forall f in S, "then" abs(f(x) - f(y)) < epsilon
  $

  Let $epsilon > 0$. We choose a $delta$ that meets the above properties. Namely, let $delta = epsilon / L$.

  Let $x, y in X$ such that $d(x, y) < delta$, and let $f in K_(L, B)$.

  Note that because $f$ is $L$-Lipschitz, then $abs(f(x) - f(y)) < L dot d(x, y) < L dot delta = epsilon$.
]
#pagebreak()

== Problem 2
The $C^1$-unit ball is the set ${f in C^1 ([a, b]) : norm(f)_(C^1) <= 1}$. Show that the $C^1$-unit ball is pre-compact in $C^0 ([a, b])$ with respect to $norm(f)_(C^0)$, but not compact.
#line(length: 100%)
// todo - problem 2
#pagebreak()

== Problem 3
Show that if $X$ is a compact metric space and $V subset C^0 (X)$ is a finite-dimensional subspace, then ${f in V : norm(f)_(C^0) <= 1}$ is compact. [_Hint_: Establish the assumptions of Arzela-Ascoli by fixing some basis of $V$]
#line(length: 100%)
// todo - problem 3
#pagebreak()

== Problem 4
Let $V$ be a Banach space with respect to norm $norm(dot)$ and $W subset V$ is a vector subspace, then $overline(W)$ is a Banach space with respect to $norm(dot)$. [_Note_: You need to show that $overline(W)$ is a vector subspace in addition to being complete]
#line(length: 100%)
// todo - problem 4
#pagebreak()

== Problem 5
Show that if $C^0 ([0, 1])$ is given the $C^0$-norm and $x in [0, 1]$, the function $delta_x (f) = f(x)$ is a bounded functional.
#line(length: 100%)
// todo - problem 5
#pagebreak()

== Problem 6
Show that if $C^0 ([0, 1])$ is given the $C^0$-norm, the function $cal(I)_g (f) = integral_0^1 g(x) f(x) dif x$ is a bounded functional for every $g in C^0 ([0, 1])$ (the integral is the usual Riemann integral).
#line(length: 100%)
// todo - problem 6
#pagebreak()

== Problem 7
Show that $cal(L)$ is a bounded functional if and only if it is continuous from $V$ to $RR$, where $V$ uses its norm to define a distance. [As a reminder, continuity in this context means that for every $epsilon > 0$, find a $delta > 0$ such that if $norm(v - w) < delta$, then $abs(cal(L)(v) - cal(L)(w)) < epsilon$.]
#line(length: 100%)
// todo - problem 7

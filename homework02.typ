#set page(
  margin: 0.75in
)

#set text(
  size: 12pt
)

= Analysis Fall 2025 - Homework 2
If $V$ is a normed vector space, a function $cal(L): V -> RR$ is called a _bounded functional_ if $cal(L)$ is linear (i.e., $cal(L)(v + w) = cal(L)(v) + cal(L)(w)$ and $cal(L)(lambda v) = lambda cal(L)(v)$ and $sup_(norm(v) = 1) abs(cal(L)(v)) < infinity$.
#pagebreak()

== Problem 1
If $X$ is a compact metric space, a function $f: X -> RR$ is called $L$-Lipschitz if for every $x, y in X$, $abs(f(x) - f(y)) <= L abs(x - y)$. Show that $K_(L, B) = {f in C^0 (X) : f "is" L"-Lipschitz and" norm(f)_(C^0) <= B}$ is compact for every $L$ and $B$.
#line(length: 100%)
// todo - problem 1
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
Show that if $C^0 ([0, 1])$ is given the $C^0$-norm, the function $cal(I) g (f) = integral_0^1 g(x) f(x) dif x$ is a bounded functional for every $g in C^0 ([0, 1])$ (the integral is the usual Riemann integral).
#line(length: 100%)
// todo - problem 6
#pagebreak()

== Problem 7
Show that $cal(L)$ is a bounded functional if and only if it is continuous from $V$ to $RR$, where $V$ uses its norm to define a distance. [As a reminder, continuity in this context means that for every $epsilon > 0$, find a $delta > 0$ such that if $norm(v - w) < delta$, then $abs(cal(L)(v) - cal(L)(w)) < epsilon$.]
#line(length: 100%)
// todo - problem 7

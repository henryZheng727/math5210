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

Call the $C^1$-unit ball $S$. By the Arzela-Ascoli Theorem, $S$ is precompact with respect to $C^0$ if and only if $S$ is bounded and equicontinuous. It thus suffices to prove that $S$ is bounded, $S$ is equicontinuous, and $S$ is not compact.

We claim that $S$ is bounded.
#pad(x: 20pt)[
  Note that $forall s in S$, then $norm(s)_(C^1) = norm(s)_(C^0) + norm(s')_(C^0)$. Since the $C^1$ norm is an upper bound for the $C^0$ norm, then $norm(s)_(C^0) <= 1$. Therefore, $S$ is bounded on the $C^0$ norm.
]

We claim that $S$ is equicontinuous.
#pad(x: 20pt)[
  Recall that $S$ is equicontinuous if and only if
  $
    forall epsilon > 0 space exists delta > 0 "such that" forall x, y "with" d(x, y) < delta "and" forall f in S, "then" abs(f(x) - f(y)) < epsilon
  $

  Let $epsilon > 0$, and choose $delta = epsilon$. Let $x, y in [a, b]$ such that $d(x, y) < delta$. Let $f in S$.

  Note that $norm(f)_(C^1) = norm(f)_(C^0) + norm(f')_(C^0)$. Since the $C^0$ norm defines the supremum of the absolute value of the function, and the $C^1$ norm is bounded above by $1$, then the absolute value of the first derivative of $f$ is bounded above by $1$; that is, $forall z in [a, b] : abs(f'(z)) <= 1$.

  Further note that by the Mean Value Theorem, $exists c in [a, b] : abs(f(x) - f(y))/abs(x - y) = f'(c)$. Because $f'(c)$ is bounded, $abs(f(x) - f(y))/abs(x - y) <= 1$, thus, $abs(f(x) - f(y)) <= abs(x - y)$.
]

We claim that $S$ is not closed.
#pad(x: 20pt)[
  It suffices to prove there exists a sequence in $S$ which has no convergent subsequence. Consider the sequence $f_n (x) = 1/3 sqrt(x^2 + 1/n)$. Without loss of generality, assume the interval is $[-1, 1]$ (i.e., we may generalize to $[a, b]$ by scaling the coefficients of terms and the overall function, which would require tedious bookkeeping around whether $a, b <= 1$ or $a, b >= 0$, etc.).

  Since $x^2 <= 1$ and $1/n <= 1$, then $f_n (x) <= 1/2$. Additionally, $f'_n (x) = x / (3 dot sqrt(x^2 + 1/n))$. Note that $x <= sqrt(x^2 + 1/n)$, so $f'_n (x) <= 1/3$. Therefore, $f_n (x)$ is in $S$.

  However, $f_n (x) -> f(x)$ where $f(x) = 1/3 abs(x)$. This is _not_ differentiable at $x = 0$. Thus, it is not in $S$.
]
#pagebreak()

== Problem 3
Show that if $X$ is a compact metric space and $V subset C^0 (X)$ is a finite-dimensional subspace, then ${f in V : norm(f)_(C^0) <= 1}$ is compact. [_Hint_: Establish the assumptions of Arzela-Ascoli by fixing some basis of $V$]
#line(length: 100%)

Let $V subset C^0 (X)$ be a finite-dimensional subspace. Let $B = {b_1, b_2, ..., b_n}$ be a basis of $V$, and let $S = {f in V : norm(f)_(C^0) <= 1}$. Note that by the Arzela-Ascoli Theorem, $S$ is compact if
1. $S$ is closed.
2. $S$ is bounded.
3. $S$ is equicontinuous.

We argue $S$ is closed.
#pad(x: 20pt)[
  Note the intersection of two closed sets is closed, and $S$ is the intersection of $f in V$ and the $C^0$ unit ball. It thus suffices to prove these individually are closed.

  We argue $V$ is closed. Let $x_n = arrow(a_n) dot B$ be a sequence converging to $x$ (where $a_n in RR^n$). Note that because convergence is preserved across addition and scaling of vector sequences, this is true if and only if $a_n -> a in RR^n$ and $x = a dot B$. However, this implies $x in V$, as it is expressed as a sum of basis vectors. Thus $V$ is closed.

  We argue the $C^0$ unit ball is closed. Note that for a continuous function, the inverse image of a closed set must be closed. Further note that $C^0$ norm is continuous with respect to itself, and that $[0, 1] in RR$ is closed. Finally, note that the $C^0$ unit ball is the inverse image of $[0, 1]$ with respect to the $C^0$ norm. Thus, the $C^0$ unit ball is closed.
]

We argue $S$ is bounded.
#pad(x: 20pt)[
  Note that $forall s in S$, then $norm(s)_(C^0) <= 1$. Since the norm defines distance, the distance between all points in the set is also obviously bounded. Therefore, $S$ is bounded on the $C^0$ norm.
]

We argue $S$ is equicontinuous.
#pad(x: 20pt)[
  Recall that $S$ is equicontinuous if and only if
  $
    forall epsilon > 0 space exists delta > 0 "such that" forall x, y "with" d(x, y) < delta "and" forall f in S, "then" abs(f(x) - f(y)) < epsilon
  $

  Let $epsilon > 0$. Choose $delta$ (as described below). Let $x, y in X$ such that $d(x, y) < delta$. Let $f in S$ and note that
  $
    abs(f(x) - f(y)) <= abs((a dot B)(x) - (a dot B)(y)) <= abs(a dot B(x - y))
  $
  Since the sup-norm of $f$ is less than $1$, then $(a dot B)(x) <= (1 dot B)(x)$ for every $x$. Thus,
  $
    abs(f(x) - f(y)) <= abs((1 dot B)(x - y))
  $
  Note that because $(1 dot B)$ is a linear function, it has a bound $L$. Choose $delta = epsilon / L$. Then
  $
    abs(f(x) - f(y)) <= abs((1 dot B)(x - y)) <= L abs(x - y) < L dot delta = epsilon
  $
]
#pagebreak()

== Problem 4
Let $V$ be a Banach space with respect to norm $norm(dot)$ and $W subset V$ is a vector subspace, then $overline(W)$ is a Banach space with respect to $norm(dot)$. [_Note_: You need to show that $overline(W)$ is a vector subspace in addition to being complete]
#line(length: 100%)

First, we show that $overline(W)$ is a vector subspace.
#pad(x: 20pt)[
  We argue that $x, y in overline(W) => x + y in overline(W)$. Note since $x in overline(W)$, then $exists (x_n) in W : x_n -> x$ and symmetrically $exists (y_n) in W : y_n -> y$. Note that $forall n$, then $x_n + y_n in W$, as $W$ is a vector subspace (i.e., it is a sequence in $W$). Additionally note that $x_n + y_n -> x + y$. Therefore, $x + y in overline(W)$.

  We argue that $x in overline(W)$ and $lambda in RR => lambda x in overline(W)$. Note since $x in overline(W)$, then $exists (x_n) in W : x_n -> x$. Note that $forall n$, then $lambda x_n in W$, as $W$ is a vector subspace (i.e., it is a sequence in $W$). Additionally note that $lambda x_n -> lambda x$. Therefore, $lambda x in overline(W)$.
]

Secondly, we argue that $overline(W)$ is a Banach space.
#pad(x: 20pt)[
  Let $x_n$ be a Cauchy sequence in $overline(W)$. We argue that $x_n$ converges. Note that $overline(W) subset.eq V$ and $V$ is a Banach space. Therefore, $x_n$ converges in $V$. However, since $overline(W)$ is closed, every convergent sequence converges to a point in $overline(W)$. Therefore, $x_n$ must converge to a point in $overline(W)$. Thus, $overline(W)$ is a Banach space.
]
#pagebreak()

== Problem 5
Show that if $C^0 ([0, 1])$ is given the $C^0$-norm and $x in [0, 1]$, the function $delta_x (f) = f(x)$ is a bounded functional.
#line(length: 100%)

Fix $x in [0, 1]$ and let $g, h in C^0 ([0, 1])$. Let $delta_x (f) = f(x)$, and let $lambda in RR$.

Note that $delta_x (g + h) = (g + h)(x) = g(x) + h(x) = delta_x (g) + delta_x (h)$, because $g$ and $h$ are continuous.

Note that $delta_x (lambda g) = (lambda g)(x) = lambda dot g(x) = lambda dot delta_x (g)$, because $g$ is continuous.

Note that because $g$ is in $C^0 ([0, 1])$, the function is bounded, and thus $delta_x (g)$ is also bounded, and thus $sup_(norm(v) = 1) abs(delta_x (v)) < infinity$.
#pagebreak()

== Problem 6
Show that if $C^0 ([0, 1])$ is given the $C^0$-norm, the function $cal(I)_g (f) = integral_0^1 g(x) f(x) dif x$ is a bounded functional for every $g in C^0 ([0, 1])$ (the integral is the usual Riemann integral).
#line(length: 100%)

Fix $g in C^0([0, 1])$.

Let $h, i in C^0 ([0, 1])$. Note that
$
  cal(I)_g (h + i) = integral_0^1 g(x) (h + i)(x) dif x =
  integral_0^1 g(x) (h(x) + i(x)) dif x = 
  integral_0^1 g(x) h(x) + g(x) i(x) dif x = \
  integral_0^1 g(x) h(x) dif x + integral_0^1 g(x) i(x) dif x =
  cal(I)_g (h) + cal(I)_g (i)
$

Let $f in C^0 ([0, 1])$ and let $lambda in RR$. Note that
$
  cal(I)_g (lambda f) = integral_0^1 g(x) dot lambda f(x) dif x = 
  lambda integral_0^1 g(x) f(x) dif x = lambda cal(I)_g (f)
$

We seek to prove $exists M in RR$ such that $forall f in C^0 ([0, 1])$ with $norm(f) = 1$, then $integral_0^1 g(x) f(x) dif x <= M$. Denote $G(x)$ to be the antiderivative of $g(x)$, and set $M = G(1) - G(0)$. Note that $norm(f) = 1$, thus, $f(x) <= 1$ for every $x$ in $[0, 1]$. Therefore,
$
  integral_0^1 g(x) f(x) dif x <= integral_0^1 g(x) dot 1 dif x = G(1) - G(0)
$

#pagebreak()

== Problem 7
Show that $cal(L)$ is a bounded functional if and only if it is continuous from $V$ to $RR$, where $V$ uses its norm to define a distance. [As a reminder, continuity in this context means that for every $epsilon > 0$, find a $delta > 0$ such that if $norm(v - w) < delta$, then $abs(cal(L)(v) - cal(L)(w)) < epsilon$.]
#line(length: 100%)

Suppose that $cal(L)$ is a bounded functional. We argue that $cal(L)$ is continuous.
#pad(x: 20pt)[
  Let $epsilon > 0$.

  Since $cal(L)$ is a bounded functional, then $sup_(norm(v)=1) abs(cal(L)(v)) < infinity$. Let $B = sup_(norm(v)=1) abs(cal(L)(v))$, and choose $delta = epsilon / B$.

  Let $v, w in V$ such that $norm(v - w) < delta$. Then
  $
    abs(cal(L)(v) - cal(L)(w)) = abs(cal(L)(v) + cal(L)(-w)) = abs(cal(L)(v - w)) = norm(v - w) dot abs(cal(L)((v - w)/norm(v - w)))
  $

  Note that $norm((v - w)/norm(v - w)) = 1$, and thus, the second term is bounded above by $B$. Further, by definition, the first term is bounded above by $delta$. Thus
  $
    abs(cal(L)(v) - cal(L)(w)) < delta dot B = epsilon / B dot B = epsilon
  $
]

Suppose that $cal(L)$ is continuous. We argue that $cal(L)$ is a bounded functional.
#pad(x: 20pt)[
  I could not resolve how to solve this. In fact, I'm not sure I'm convinced it is true. Take, for example, $f: RR -> RR$ and $f(x) = x^2$. Then $f(x + y) = x^2 + 2x y + y^2 != x^2 + y^2$. Furthermore, $f(lambda x) = lambda^2 x^2 != lambda x^2$. Therefore, $f$ cannot be a bounded functional.
]

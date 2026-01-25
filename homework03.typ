#set page(margin: 0.75in)
#set text(size: 12pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Fall 2025: Homework 3
  Henry Zheng
]

If $V$ is a Banach space, an operator (on $V$) is a linear function $T : V -> V$. $T$ is called bounded if $norm(T) := sup_(norm(v)=1) norm(T(v)) < infinity$. $T$ is called compact if $T(B(0, 1))$ is precompact in $V$, where $B(0, 1) = {v in V : norm(v) <= 1}$ is the unit ball in $V$.
#pagebreak()

== Problem 1
Show that if an operator is compact, then it is bounded.
#line(length: 100%)

Let $T$ be a compact operator. Then note that ${v in V : norm(v) = 1) subset.eq B(0, 1)$, and further note that $T(B(0, 1))$ is a precompact set.

By the Arzela-Ascoli Theorem, $T(B(0, 1))$ is bounded and equicontinuous; i.e., there exists some $M in RR : forall T(v) "where" norm(v) <= 1$, then $T(v) <= M$.

We know $norm(T) := sup_(norm(v)=1) norm(T(v)) < infinity$. The above definition thus obviously implies that there exists some $M in RR : norm(v) = 1 => T(v) <= M$. Then $norm(T) = sup_(norm(v)=1) norm(T(v))$ is not infinity.
#pagebreak()

== Problem 2
Show that the indefinite integration function $I$ is a compact operator on $C^0 ([0, 1])$ (with the $C^0$-norm), where
$
  (I(f))(x) := integral_0^x f(t) dif t
$
(You must both show that it is an operator and compact) \*Find the image $I$, and prove your answer is correct.
#line(length: 100%)

We argue that $I$ is an operator.
#pad(x: 20pt)[
  We argue that $I(f + g) = I(f) + I(g)$ for $f, g in C^0 ([0, 1])$.
  $
    I(f + g) =
    integral_0^x f(t) + g(t) dif t =
    integral_0^x f(t) dif t + integral_0^x g(t) dif t =
    I(f) + I(g)
  $

  We argue that $I(lambda f) = lambda I(f)$ for $f in C^0 ([0, 1])$ and $lambda in RR$.
  $
    I(lambda f) =
    integral_0^x lambda f(t) dif t =
    lambda integral_0^x f(t) dif t =
    lambda I(f)
  $
]

We argue that $I$ is a compact operator; i.e., $I(B(0, 1))$ is precompact. By the Arzela-Ascoli Theorem, it suffices to prove $I(B(0, 1))$ is bounded and equicontinuous.
#pad(x: 20pt)[
  We argue $I(B(0, 1))$ is bounded.
  #pad(x: 20pt)[
    Let $M = 1$. Let $F in I(B(0, 1))$. Then note that $F' = f$ where $f(x) <= 1$ for all $x$. Since integration preserves ordering, then $F(x) - F(0) <= x$. Additionally, note that $F(0) = integral_0^0 f(t) dif t = 0$; and thus, $F(x) <= x$. Finally, note that $x <= 1$. Therefore, $sup_(x in [0,1]) abs(F(x)) <= 1 => norm(F) <= 1$. Thus $I(B(0, 1))$ is bounded.

  ]

  We argue $I(B(0, 1))$ is equicontinuous.
  #pad(x: 20pt)[
    Let $epsilon > 0$. Choose $delta = epsilon$. Let $x, y in [0, 1]$ such that $abs(x - y) < delta$.

    Let $F in I(B(0, 1))$. We argue that $abs(F(x) - F(y)) < epsilon$.

    Note that $F' = f$ for some $f in B(0, 1)$. Therefore, $forall x : F'(x) <= 1$. By the Mean Value Theorem, this implies that $(F(x) - F(y))/(x - y) <= 1$.

    Therefore, $abs(F(x) - F(y)) <= abs(x - y) < delta = epsilon$.
  ]
]
#pagebreak()

== Problem 3
Show that the function $T: C^0 ([a, b]) -> C^0 ([a, b])$ defined by
$
  (T(f))(x) = f(x/2)
$
is a bounded operator on $C^0 ([a, b])$ (with the $C^0$-norm), but not compact.
#line(length: 100%)
// todo - problem 3
#pagebreak()

== Problem 4
Show that if $cal(F) subset.eq C^1 ([a, b])$ is $C^1$-closed, $C^1$-bounded and the collection ${f' : f in cal(F)}$ is equicontinuous, then $cal(F)$ is compact (with respect to the $C^1$-norm). [_Note_: You can use the $C^0$-version of Arzela-Ascoli in your proof]
#line(length: 100%)
// todo - problem 4
#pagebreak()

== Problem 5
Show that if a subset $cal(F) subset.eq C^1 ([a, b])$ is compact (with respect to the $C^1$-norm), then it is $C^1$-closed, $C^1$-bounded and the collection ${f' : f in cal(F)}$ is equicontinuous. [_Note_: You can use the $C^0$-version of Arzela-Ascoli in your proof]
#line(length: 100%)
// todo - problem 5

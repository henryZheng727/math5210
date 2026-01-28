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

Let $f in C^0 ([a, b])$ such that $norm(f) = 1$. Then $sup_(x in [a, b]) abs(f(x)) = 1$. Note that $forall x in [a, b] space f(x) <= 1$. Then $f(x / 2) <= 1$ on $[a, b]$ as well. Therefore $T$ must be a bounded operator.

We argue that $T$ is not compact. Suppose, for the sake of contradiction, that $T$ were compact. Then $overline(T(B(0, 1)))$ must be compact. Then every sequence in $T(B(0, 1))$ must converge to a point in $overline(T(B(0, 1)))$.
 // todo - problem 3
#pagebreak()

== Problem 4
Show that if $cal(F) subset.eq C^1 ([a, b])$ is $C^1$-closed, $C^1$-bounded and the collection ${f' : f in cal(F)}$ is equicontinuous, then $cal(F)$ is compact (with respect to the $C^1$-norm). [_Note_: You can use the $C^0$-version of Arzela-Ascoli in your proof]
#line(length: 100%)

We argue $cal(F)$ is compact with respect to the $C^1$ norm. Let $(f_n)$ be a sequence in $cal(F)$. We argue $(f_n)$ has a convergent subsequence with respect to the $C^1$ norm.

We argue that the sequence $(f_n)'$ has a convergent subsequence with respect to the $C^0$ norm.
#pad(x: 20pt)[
  Because $cal(F)$ is $C^1$-bounded, then $exists M in RR$ such that $norm(f_n)_(C^1) <= M$; thus, $norm(f'_n)_(C^0) <= M$ for all $M$. Further note that this sequence is equicontinuous, as given in the problem statement. Thus, by the $C^0$ Arzela-Ascoli Theorem, it has a convergent subsequence with respect to the $C^0$ norm.
]

We further argue the sequence $(f_n)$ has a convergent subsequence with respect to the $C^0$ norm.
#pad(x: 20pt)[
  Note that because $cal(F)$ is $C^1$-bounded, then $exists M in RR$ such that $forall n space f'_n <= M$. Then each $(f_n)$ is Lipschitz with a coefficient of $M$; i.e., $(f_n)$ is equicontinuous. Furthermore, because $cal(F)$ is $C^1$-bounded, it must be $C^0$-bounded, so by the Arzela-Ascoli Theorem, it has a convergent subsequence.
]

Finally, we argue $(f_n)$ has a convergent subsequence with respect to the $C^1$ norm.
#pad(x: 20pt)[
  Suppose $(f_n)$ has a convergent subsequence $f_(n_k) -> f$ and $(f_n)'$ has a convergent subsequence $f'_(n_k) -> v$ with respect to the $C^0$-norm. Then note that $v = f'$, and further, the distance metric
  $
    norm(f_n - f_(n_k))_(C^1) = norm(f_n - f_(n_k))_(C^0) + norm(f'_n - f'_(n_k))_(C^0)
  $
  Because each term becomes arbitrarily small, the overall distance becomes arbitrarily small. Thus $(f_(n_k))$ converges in the $C^1$ norm.
]
#pagebreak()

== Problem 5
Show that if a subset $cal(F) subset.eq C^1 ([a, b])$ is compact (with respect to the $C^1$-norm), then it is $C^1$-closed, $C^1$-bounded and the collection ${f' : f in cal(F)}$ is equicontinuous. [_Note_: You can use the $C^0$-version of Arzela-Ascoli in your proof]
#line(length: 100%)

Suppose that $cal(F) subset.eq C^1 ([a, b])$ is compact with respect to the $C^1$-norm.

We argue $cal(F)$ is $C^1$-closed. This has been proved in class: every compact set is closed.

We argue $cal(F)$ is $C^1$-bounded.
#pad(x: 20pt)[
  Fix $f in cal(F)$. Note that because the distance between any two points is finite, then the collection
  $
    union.big_(n=1)^infinity B(0, n)
  $
  forms an open cover of $cal(F)$. Because $cal(F)$ is compact, given any open cover of $cal(F)$, there exists a finite subcover of $cal(F)$. Then there must exist some $k in NN$ such that
  $
    union.big_(n=1)^k B(0, n)
  $
  still forms an open cover of $cal(F)$. Then $k$ is an upper bound on the distance between $0$ and $cal(F)$, and thus $cal(F)$ is bounded.
]

We argue that $cal(F)' = {f' : f in cal(F)}$ is equicontinuous.
#pad(x: 20pt)[
  Let $epsilon > 0$ and choose $delta = $ todo. Let $x, y in [a, b] : abs(x - y) <= delta$. Let $f' in cal(F)'$ with $f in cal(F)$.
  $
    abs(f'(x) - f'(y))
  $
]

#set page(margin: 0.75in)
#set text(size: 12pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 10
  Henry Zheng
]
#pagebreak()

#let ip(a, b) = $lr(chevron.l #a, #b chevron.r)$

== Problem 1
Let $cal(H)$ be a Hilbert space, ${phi_k}_(k in NN)$ be an orthonormal set in $cal(H)$ and $(a_k)$ be a sequence of complex numbers. Show that
$
  psi_n := sum_(k=1)^n a_k phi_k
$
converges in $cal(H)$ (with respect to the norm induced by the inner product) if and only if $sum_(k=1)^n abs(a_k)^2 < infinity$. _Hint_: Determine when the sequence of partial sums $psi_n$ is Cauchy.
#line(length: 100%)
// todo
#pagebreak()

== Problem 2
Let $cal(H)$ be a Hilbert space and $V subset.eq cal(H)$ be a vector subspace. That is, $V$ is a subset which is preserved under addition and scalar multiplication. Show that $V^bot := {w in cal(H) : ip(w, v) = 0 "for all" v in V}$ is a vector subspace. Furthermore, show that $V inter V^bot = {0}$ and $V subset.eq (V^bot)^bot$.
#line(length: 100%)

We argue that $V^bot$ is a vector subspace.
#pad(x: 20pt)[
  We argue $V^bot$ is closed under vector addition. Let $a, b in V^bot$ and $x in V$. Then $ip(a + b, x) = ip(a, x) + ip(b, x) = 0 + 0$; thus, $a + b in V^bot$.

  We argue $V^bot$ is closed under scalar multiplication. Let $a in V^bot$ and $c in RR$. Let $x in V$. Then $ip(c a, x) = c ip(a, x) = c dot 0 = 0$; thus, $c a in V^bot$.

  We argue $V^bot$ has a zero vector. It suffices to prove that for $0 in cal(H)$, then $0 in V^bot$. Since $ip(0, v) = 0 space forall v in cal(H)$, then $0 in V^bot$.
]

We argue that $V inter V^bot = {0}$.
#pad(x: 20pt)[
  We argue $x = 0 => x in V and x in V^bot$. This is trivial; as $V$ and $V^bot$ are both vector subspaces, they must include $0$.

  We argue $x in V and x in V^bot => x = 0$. We equivalently prove $x != 0 => x in.not V or x in.not V^bot$. Prove by exhaustion.
  #pad(x: 20pt)[
    Suppose $x in.not V$. Then the left-hand side of the disjunction is trivially true, and the disjunction as a whole is true.

    Suppose $x in V$. Then we argue the right-hand side of the disjunction is true (i.e., $x in.not V^bot$. We are given that $x != 0$ and $x in V$. Therefore, by the properties of inner product, $ip(x, x) > 0$, and thus, $x in.not V^bot$.
  ]
]

We argue that $V subset.eq (V^bot)^bot$.
#pad(x: 20pt)[
  Let $v in V$. We argue $V subset.eq (V^bot)^bot$. Let $u in V^bot$. Note that it suffices to prove $ip(v, u) = 0$. By definition, $forall w in V$, then $ip(u, w) = 0$. Then, because $v in V$, then $ip(v, u) = overline(ip(u, v)) = overline(0) = 0$.
]
#pagebreak()

== Problem 3
Give an example of a subspace of a Hilbert space which is not closed. Compute $(V^bot)^bot$ for that subspace.
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Let $cal(H) = L^2 (X, mu)$ where $(X, mu, cal(A))$ is a probability space. Show that if $V$ is the set of constant functions, then $V$ is a vector subspace of $cal(H)$ and describe $V^bot$ in terms of integration.
#line(length: 100%)

We argue $V$ is a vector subspace of $cal(H)$.
#pad(x: 20pt)[
  We argue $V subset.eq cal(H)$. This is trivial; every constant function can be recursively integrated an infinite number of times.

  We argue $V$ is closed under vector addition. Let $f(x) = a$ and $g(x) = b in V$. Then $(f + g)(x) = a + b$, which is also constant.

  We argue $V$ is closed under scalar multiplication. Let $f(x) = a in V$ and $c in RR$. Then $(c f)(x) = c dot a$, which is also constant.

  We argue $0 in V$. This is trivial, $f(x) = 0$ is constant.
]

We describe $V^bot$ in terms of integration.
#pad(x: 20pt)[
  Recall that we define the inner product $ip(f, g) = integral_X f(x) overline(g(x)) dif mu$. We argue
  $
    V^bot = { f in cal(H) : integral_X f(x) dif mu = 0 }
  $

  Fix $f in cal(H)$ and let $g(x) = c in V$. Then
  $
    & integral_X f(x) overline(g(x)) dif mu = 0 <==> \
    & integral_X c f(x) dif mu = 0 <==> \
    & c integral_X f(x) dif mu = 0 <==> \
    & integral_X f(x) dif mu = 0
  $
]
#pagebreak()

== Problem 5
Show that if $V$ is a closed subspace of $cal(H)$, and $w in cal(H)$, then the function $phi_w : V -> RR$ defined by $phi_w (v) = norm(v - w)$ achieves a minimum. _Hint_: Consider a sequence $v_n$ such that $phi_w (v_n)$ converges to the infimum, then show  that $v_n$ is Cauchy (and hence converges). You will have to use the average $(v_n + v_m)/2$ to get a good estimate.
#line(length: 100%)
// todo
#pagebreak()

== Problem 6
Show that if $v_1$ and $v_2$ both minimize the function $phi_w$ of the previous problem, then $v_1 = v_2$. _Hint_: Show that $norm(v_1 - v_2) = 0$ using similar estimates from the previous problem and the minimization property.
#line(length: 100%)
// todo

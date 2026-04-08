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
Since $cal(H)$ is complete, $psi_n$ converges if and only if $psi_n$ is Cauchy.

We first compute $norm(psi_n - psi_m)^2$ for $n > m$.
#pad(x: 20pt)[
  By bilinearity of the inner product and orthonormality ($ip(phi_k, phi_j) = delta_(k j)$),
  $
    norm(psi_n - psi_m)^2 &= norm(sum_(k=m+1)^n a_k phi_k)^2 \
    &= sum_(k=m+1)^n sum_(j=m+1)^n a_k overline(a_j) ip(phi_k, phi_j) \
    &= sum_(k=m+1)^n abs(a_k)^2.
  $
]

We argue $psi_n$ converges $=>$ $sum_(k=1)^infinity abs(a_k)^2 < infinity$.
#pad(x: 20pt)[
  Suppose $psi_n$ converges. Then $psi_n$ is Cauchy. Fix $epsilon > 0$. Then there exists $N$ such that for $n > m >= N$, $norm(psi_n - psi_m) < sqrt(epsilon)$. Then
  $
    sum_(k=m+1)^n abs(a_k)^2 = norm(psi_n - psi_m)^2 < epsilon.
  $
  This means the partial sums $S_n = sum_(k=1)^n abs(a_k)^2$ form a Cauchy sequence in $RR$, hence converge; thus, $sum_(k=1)^infinity abs(a_k)^2 < infinity$.
]

We argue $sum_(k=1)^infinity abs(a_k)^2 < infinity$ $=>$ $psi_n$ converges.
#pad(x: 20pt)[
  Suppose $sum_(k=1)^infinity abs(a_k)^2 < infinity$. Then the partial sums $S_n = sum_(k=1)^n abs(a_k)^2$ converge, hence are Cauchy. So for all $epsilon > 0$, there exists $N$ such that for $n > m >= N$, $sum_(k=m+1)^n abs(a_k)^2 < epsilon^2$. Then
  $
    norm(psi_n - psi_m)^2 = sum_(k=m+1)^n abs(a_k)^2 < epsilon^2
  $
  so $norm(psi_n - psi_m) < epsilon$. Hence $psi_n$ is Cauchy, and since $cal(H)$ is complete, $psi_n$ converges.
]
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

Let $cal(H) = L^2 ([0, 1])$. This is a Hilbert space (proven in class). Let $P subset cal(H)$ be the set of all polynomials in $cal(H)$.

We argue $P$ is a subspace of $cal(H)$.
#pad(x: 20pt)[
  We argue $0 in P$. This is trivial; the $0$-function is a polynomial.

  We argue $P$ is closed under vector addition. This is again trivial; the sum of two polynomials is still a polynomial.

  We argue $P$ is closed under scalar multiplication. This is yet again trivial; it reduces to scaling the coefficients of the polynomial.
]

We argue $P$ is not closed in $cal(H)$.
#pad(x: 20pt)[
  We construct a sequence of polynomials which converges to a non-polynomial function in $cal(H)$.

  Consider $f(t) = e^t$, which is not a polynomial. The partial sums of its Taylor series, $p_n (t) = sum_(k=0)^n t^k / k!$, are polynomials (so $p_n in P$). Since the Taylor series of $e^t$ converges uniformly on $[0, 1]$, we have $sup_(t in [0,1]) abs(p_n (t) - e^t) -> 0$. Then
  $
    norm(p_n - f)^2 = integral_0^1 abs(p_n (t) - e^t)^2 dif t <= sup_(t in [0,1]) abs(p_n (t) - e^t)^2 -> 0.
  $
  So $p_n -> f$ in $L^2 ([0, 1])$, but $f in.not P$. Thus $P$ is not closed.
]

We compute $(P^bot)^bot$.
#pad(x: 20pt)[
  Recall that we define the inner product $ip(f, g) = integral_X f(x) overline(g(x)) dif mu$. Note since we only work with real-valued functions for the purposes of this problem, $ip(f, g) = integral_X f(x) g(x) dif mu$. We argue that $(P^bot)^bot = cal(H)$.

  First, we argue $P^bot = {0}$.
  #pad(x: 20pt)[
    We argue $x = 0 => x in P^bot$. This is trivial; $ip(0, f) = 0 space forall f$ definitionally.

    We argue $x in P^bot => x = 0$. Suppose $x in P^bot$. Then $ip(x, p) = 0$ for all $p in P$. In particular, $integral_0^1 x(t) t^n dif t = 0$ for all $n >= 0$. By linearity, $ip(x, p) = 0$ for all polynomials $p$. By the Stone-Weierstrass theorem, polynomials are uniformly dense in $C([0, 1])$, and $C([0, 1])$ is dense in $L^2 ([0, 1])$. So for any $g in L^2([0, 1])$, there exists a sequence of polynomials $p_n -> g$ in $L^2$. By continuity of the inner product, $ip(x, g) = lim ip(x, p_n) = 0$. Taking $g = x$ gives $norm(x)^2 = 0$, so $x = 0$ a.e.
  ]

  Secondly, we argue $(P^bot)^bot = cal(H)$. Let $f in cal(H)$. Given that the only value in $P^bot$ is $0$, and definitionally, $ip(f, 0) = 0$, then $f in (P^bot)^bot$.
]
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

Let $d = inf_(v in V) norm(v - w)$. By definition of infimum, there exists a sequence $v_n in V$ such that $norm(v_n - w) -> d$.

We argue $v_n$ is Cauchy.
#pad(x: 20pt)[
  By the parallelogram law, for any $a, b in cal(H)$,
  $
    norm(a + b)^2 + norm(a - b)^2 = 2 norm(a)^2 + 2 norm(b)^2.
  $
  Let $a = v_n - w$ and $b = v_m - w$. Then
  $
    norm(v_n + v_m - 2w)^2 + norm(v_n - v_m)^2 = 2 norm(v_n - w)^2 + 2 norm(v_m - w)^2.
  $
  Since $V$ is a subspace, $(v_n + v_m) / 2 in V$, so $norm((v_n + v_m) / 2 - w) >= d$, which gives $norm(v_n + v_m - 2w)^2 >= 4d^2$. Rearranging,
  $
    norm(v_n - v_m)^2 &= 2 norm(v_n - w)^2 + 2 norm(v_m - w)^2 - norm(v_n + v_m - 2w)^2 \
    &<= 2 norm(v_n - w)^2 + 2 norm(v_m - w)^2 - 4d^2.
  $
  Fix $epsilon > 0$. Since $norm(v_n - w)^2 -> d^2$, there exists $N$ such that for $n >= N$, $norm(v_n - w)^2 < d^2 + epsilon^2 / 4$. Then for $n, m >= N$,
  $
    norm(v_n - v_m)^2 <= 2(d^2 + epsilon^2 / 4) + 2(d^2 + epsilon^2 / 4) - 4d^2 = epsilon^2
  $
  so $norm(v_n - v_m) < epsilon$. Hence $v_n$ is Cauchy.
]

Since $cal(H)$ is complete, $v_n -> v^*$ for some $v^* in cal(H)$. Since $V$ is closed and $v_n in V$, we have $v^* in V$. By continuity of the norm, $phi_w (v^*) = norm(v^* - w) = lim norm(v_n - w) = d$. Thus $phi_w$ achieves its minimum at $v^*$.
#pagebreak()

== Problem 6
Show that if $v_1$ and $v_2$ both minimize the function $phi_w$ of the previous problem, then $v_1 = v_2$. _Hint_: Show that $norm(v_1 - v_2) = 0$ using similar estimates from the previous problem and the minimization property.
#line(length: 100%)
// todo

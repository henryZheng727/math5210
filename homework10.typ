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
Let $cal(H)$ be a Hilbert space and $V subset.eq H$ be a vector subspace. That is, $V$ is a subset which is preserved under addition and scalar multiplication. Show that $V^bot := {w in cal(H) : ip(w, v) = 0 "for all" v in V}$ is a vector subspace. Furthermore, show that $V inter V^bot = {0}$ and $V subset.eq (V^bot)^bot$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 3
Give an example of a subspace of a Hilbert space which is not closed. Compute $(V^bot)^bot$ for that subspace.
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Let $cal(H) = L^2 (X, mu)$ where $(X, mu, cal(A))$ is a probability space. Show that if $V$ is the set of constant functions, then $V$ is a vector subspace of $cal(H)$ and describe $V^bot$ in terms of integration.
#line(length: 100%)
// todo
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

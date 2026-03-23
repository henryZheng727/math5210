#set page(margin: 0.75in)
#set text(size: 12.5pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 9
  Henry Zheng
]
#pagebreak()

== Problem 1
Recall the equivalence relation on measurable functions on a measure space $(X, mu, cal(A)): f ~ g$ if and only if there exists a measurable set $A$ such that $mu(X without A) = 0$ and $f|_A = g|_A$. Show that if $f_i ~ g_i$ for all $i in NN$, $f = sum_(i=1)^infinity f_i$ and $g = sum_(i=1)^infinity g_i$, then $f ~ g$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 2
Show that if $(X, mu, cal(A))$ is a probability space, then for every measurable $f$ and $1 <= p < q$, $norm(f)_(L^p) <= norm(f)_(L^q)$. _Hint_: Use Jensen's inequality.
#line(length: 100%)
// todo
#pagebreak()

== Problem 3
Show that for every $1 <= p < q$, $L^p (RR, m) subset.not L^q (RR, m)$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Fix a measure space $(X, mu, cal(A))$ and say that $f$ is essentially bounded if there exists a $B > 0$ such that $abs(f(x)) <= B$ almost everywhere. Show that if $1 <= p < q$ and $f$ is essentially bounded, then $norm(f)_(L^q) <= B^(1 - p/q) (norm(f)_(L^p))^(p/q)$. Use this to conclude that $L_b^p (X, mu)$ denotes the vector space of essentially bounded measurable functions on $(X, mu, cal(A))$, then $L_b^q (X, mu) subset.eq L_b^p (X, mu)$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
For $1 <= p < q$, show that $L^q ([0, 1], m) subset.not L^p ([0, 1], m)$.
#line(length: 100%)
// todo

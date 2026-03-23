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

We are given that $forall i in NN$, then $f_i ~ g_i$. This means that $forall i in NN$, then there exists $A_i$ such that $mu(X without A_i) = 0$ and $f_i|_(A_i) = g_i|_(A_i)$. We seek to prove that there exists some set $A$ such that $mu(X without A) = 0$ and $f|_A = g|_A$. We prove via construction. Let $A = inter_(i in NN) A_i$.

We argue $mu(X without A) = 0$.
#pad(x: 20pt)[
  We note that
  $
    mu(X without A) =
    mu(X without (inter_(i in NN) A_i)) =
    mu(union_(i in NN) (X without A_i))
  $

  In a previous homework, from a collection of sets, we constructed another collection such that each set was pairwise disjoint, and their collective union was equivalent. This can be easily achieved by finding all intersections between the sets and "assigning" them to a singular set. We isolate two important facts from this construction.
  1. There exists a collection of disjoint sets $B_i$ such that $union_(i in NN) B_i = union_(i in NN) (X without A_i)$.
  2. Because the construction can only ever "remove" from a set, $forall i in NN space B_i subset.eq (X without A_i)$.

  Since $B_i subset.eq (X without A_i)$, and by assumption $mu(X without A_i) = 0$, we may use the monotonicity property of a measure $(C subset D => m(C) <= m(D))$ to conclude that $mu(B_i) = 0$. By the definition of a measure, $mu(union_(i in NN) B_i) = sum_(i=1)^infinity mu(B_i) = 0$.
]

We argue $f|_A = g|_A$.
#pad(x: 20pt)[
  Let $x in A$. Then, by construction, $forall i in NN space x in A_i$. Each $f_i ~ g_i$, thus, $f_i (x) = g_i (x)$. Therefore, $sum_(i=1)^infinity f_i (x) = sum_(i=1)^infinity g_i (x)$, and thus, $f(x) = g(x)$.
]
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

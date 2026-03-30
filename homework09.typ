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

We seek to prove that
$
  & (integral_X abs(f)^p dif mu)^(1/p) <= (integral_X abs(f)^q dif mu)^(1/q) \
  <==> 
  & (integral_X abs(f)^p dif mu)^(q/p) <= integral_X abs(f)^q dif mu
$

By Jensen's inequality, if $g$ is measurable and $phi: RR -> RR$ is $C^2$ and convex, then
$
  phi(integral_X g dif mu) <= integral_X phi(g(x)) dif mu
$

Let $phi = t^(q/p)$ and let $g = abs(f)^p$. Then
$
  & phi(integral_X g dif mu) = \
  & (integral_X abs(f)^p dif mu)^(q/p) <= 
  & integral_X (abs(f)^p)^(q/p) dif mu \
  & & = integral_X abs(f)^q dif mu
$
#pagebreak()

== Problem 3
Show that for every $1 <= p < q$, $L^q (RR, m) subset.not L^p (RR, m)$.
#line(length: 100%)

We construct a function $f in L^q (RR, m) without L^p (RR, m)$. Since $p < q$, we have $1/q < 1/p$, so there exists $alpha$ such that $1/q < alpha < 1/p$. Define
$
  f(x) = x^(-alpha) dot chi_([1, infinity)) (x)
$

We first recall that for $r > 0$,
$
  integral_1^infinity x^(-r) dif x = lim_(t -> infinity) lr([frac(x^(-r + 1), -r + 1)]|)_(x=1)^(x=t)
$
which converges if and only if $r > 1$.

We argue $f in L^q (RR, m)$.
#pad(x: 20pt)[
  $
    integral_RR abs(f)^q dif m = integral_1^infinity x^(-alpha q) dif x
  $
  Since $alpha > 1/q$, we have $alpha q > 1$, so this integral converges. Thus $f in L^q$.
]

We argue $f in.not L^p (RR, m)$.
#pad(x: 20pt)[
  $
    integral_RR abs(f)^p dif m = integral_1^infinity x^(-alpha p) dif x
  $
  Since $alpha < 1/p$, we have $alpha p < 1$, so this integral diverges. Thus $f in.not L^p$.
]

Therefore $L^q (RR, m) subset.not L^p (RR, m)$.
#pagebreak()

== Problem 4
Fix a measure space $(X, mu, cal(A))$ and say that $f$ is essentially bounded if there exists a $B > 0$ such that $abs(f(x)) <= B$ almost everywhere. Show that if $1 <= p < q$ and $f$ is essentially bounded, then $norm(f)_(L^q) <= B^(1 - p/q) (norm(f)_(L^p))^(p/q)$. Use this to conclude that $L_b^p (X, mu)$ denotes the vector space of essentially bounded measurable functions on $(X, mu, cal(A))$, then $L_b^p (X, mu) subset.eq L_b^q (X, mu)$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
For $1 <= p < q$, show that $L^p ([0, 1], m) subset.not L^q ([0, 1], m)$.
#line(length: 100%)

We construct a function $f in L^p ([0, 1], m) without L^q ([0, 1], m)$. Since $p < q$, we have $1/q < 1/p$, so there exists $beta$ such that $1/q < beta < 1/p$. Define
$
  f(x) = x^(-beta)
$
on $(0, 1]$ and $f(0) = 0$.

We first recall that for $r > 0$,
$
  integral_0^1 x^(-r) dif x = lim_(epsilon -> 0^+) lr([frac(x^(-r + 1), -r + 1)]|)_(x=epsilon)^(x=1)
$
which converges if and only if $r < 1$.

We argue $f in L^p ([0, 1], m)$.
#pad(x: 20pt)[
  $
    integral_0^1 abs(f)^p dif m = integral_0^1 x^(-beta p) dif x
  $
  Since $beta < 1/p$, we have $beta p < 1$, so this integral converges. Thus $f in L^p$.
]

We argue $f in.not L^q ([0, 1], m)$.
#pad(x: 20pt)[
  $
    integral_0^1 abs(f)^q dif m = integral_0^1 x^(-beta q) dif x
  $
  Since $beta > 1/q$, we have $beta q > 1$, so this integral diverges. Thus $f in.not L^q$.
]

Therefore $L^p ([0, 1], m) subset.not L^q ([0, 1], m)$.

#set page(
  margin: 0.75in,
)

#set text(
  size: 12pt
)

= Analysis Fall 2025 - Homework 1
*Definition 1*. A _norm_ on a vector space $V$ is a function $norm(dot): V -> RR$ such that
#enum(
  numbering: "(i)",
  [$norm(v) >= 0$ for all $v in V$, with equality if and only if $v = 0$],
  [$norm(lambda v) = abs(lambda) dot norm(v)$ for all $lambda in RR$ and $v in V$],
  [$norm(v + w) <= norm(v) + norm(w)$ for all $v, w in V$],
)

*Definition 2*. If $[a, b] subset RR$, define
$
  C^r ([a, b]) = {f: [a, b] -> RR "such that" f^\(k\) "is continuous for all" 0 <= k <= r}
$
and
$
  norm(f)_(C^0) = sup_(x in [a, b]) abs(f(x)) wide norm(f)_(C^r) = sum_(k=0)^r norm(f^\(k\))_(C^0)
$
#pagebreak()

== Problem 1
If $V$ is a fixed vector space, show that the equivalence of norms is an equivalence relation on the space of norms on $V$. 
#line(length: 100%)

Recall that for $norm(dot) ~ norm(dot)'$, then $~$ is an equivalence relation if
1. _Reflexivity_: for each norm $norm(dot)$, it is true that $norm(dot) ~ norm(dot)$.
2. _Symmetry_: $norm(dot) ~ norm(dot)'$ implies $norm(dot)' ~ norm(dot)$
3. _Transitivity_: $norm(dot) ~ norm(dot)'$ and $norm(dot)' ~ norm(dot)''$ implies $norm(dot) ~ norm(dot)''$.

Recall that a norm $norm(dot)$ on $V$ is equivalent to $norm(dot)'$ if
$
  exists C in RR space forall v in V : 1/C norm(v) <= norm(v)' <= C norm(v)
$

Denote norm equivalence with the operator $=$. We argue this is an equivalence relation.

We argue $=$ follows the reflexivity property.
#pad(x: 20pt)[
  Let $norm(dot)$ be an arbitrary norm on a vector space $V$, and let $v in V$. Let $C = 1$. Then
  $
    norm(v) <= norm(v) <= norm(v) & => \
    1 / 1 dot norm(v) <= norm(v) <= 1 dot norm(v) & => \
    1 / C dot norm(v) <= norm(v) <= C dot norm(v)
  $

  Thus $norm(dot)$ is equal to itself, and thus reflexive.
]

We argue $=$ follows the symmetric property.
#pad(x: 20pt)[
  Let $norm(dot)$ and $norm(dot)'$ be arbitrary norms on a vector space $V$, and let $v in V$. Then $exists C in RR$ such that
  $
    1 / C dot norm(v) <= norm(v)' <= C dot norm(v)
  $

  Then note that basic algebra shows us
  $
    1 / C dot norm(v)' <= norm(v) <= C dot norm(v)
  $
]

We argue $=$ follows the transitive property.
#pad(x: 20pt)[
  Let $norm(dot)$, $norm(dot)'$ and $norm(dot)''$ be arbitrary norms on a vector space $V$, and let $v in V$. Then $exists C_1, C_2 in RR$ such that
  $
    1/C_1 norm(v) <= norm(v)' <= C_1 norm(v) quad quad 1/C_2 norm(v)' <= norm(v)'' <= C_2 norm(v)'
  $
  Let $C_3 = C_1 dot C_2$. Then basic algebra shows us
  $
    1 / C_3 dot norm(v) <= norm(v)'' <= C_3 dot norm(v)
  $
]
#pagebreak()

== Problem 2
Show that $K := {v in RR^n : sum_(i=1)^n abs(v_i) = 1}$ is compact. Conclude that for all norms on $RR^n$, \ ${v in RR^n : norm(v) = 1}$ is compact. [_Hint_: you may use the fact that all norms on $RR^n$ are equivalent]
#line(length: 100%)
#pagebreak()

== Problem 3
Show that $norm(dot)_(C^r)$ is a norm on $C^r ([a, b])$. [_Hint_: First show it for $r = 0$, and use this to prove it for other values of $r$].
#line(length: 100%)
#pagebreak()

== Problem 4
Show that if $X$ is a compact metric space, $f_n in C^0 (X)$ and $f_n -> f$ with respect to $norm(dot)_(C^0)$ for some function $f$ on $X$, then $f in C^0 (x)$. [_Hint_: Fix an $epsilon > 0$ then fix a large $n$ such that $norm(f_n - f)_(C^0)$ is small. Choose a $delta$ based on the continuity of $f_n$. You should use the triangle inequality three times.]
#line(length: 100%)
#pagebreak()

== Problem 5
Show that the $C^1$-norm and $C^0$-norm on $C^infinity ([0, 1])$ are not equivalent. [_Hint_: Find a sequence of nonzero $C^infinity$ functions $f_n$ such that the ratio of the two norms either goes to $infinity$ or $0$]
#line(length: 100%)
#pagebreak()

== Problem 6
Show that ${f in C^0 ([0, 1]): norm(f)_(C^0) <= 1}$ is closed and bounded in $C^0 (X)$ with respect to $norm(dot)_(C^0)$, but not compact.
#line(length: 100%)
#pagebreak()

== Problem 7
For $d in NN$, let $cal(P)_d ([0, 1])$ be the polynomials of degree $d$, considered as functions defined on $[0, 1]$.
#enum(
  numbering: "(1)",
  [Show that $cal(P)_d ([0, 1])$ is a vector space. What is its dimension?],
  [Show that $norm(dot)_(C^0)$ is a norm on $cal(P)_d ([0, 1])$.],
  [Show that $p(x) = a_d x^d + a_(d-1) x^(d-1) + ... + a_0$ is a polynomial, $norm(p) := max{abs(a_d), ..., abs(a_0)}$ defines a norm on $cal(P)_d ([0, 1])$],
  [
    Show that for all $d in NN$, there exists $C_d$ with the following property: for all polynomials $p(x) = a_d x^d + a_(d-1) x^(d-1) + ... + a_0$ there exists $x in [0, 1]$ such that for every $i in {0, ..., d}$,
    $
      abs(a_i) <= C_d abs(p(x))
    $
  ],
)
#line(length: 100%)

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
  norm(f)_(C^0) = sup_(x in [a, b]) abs(f(x)) wide norm(f)_(C^r) = sum_(k=0)^r norm(f^(\(k\)))_(C^0)
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

We first prove the second half, then prove the first half.

Let $norm(dot)$ be a norm on $RR^n$. We have previously proved several useful properties:
1. $norm(dot)$ is continuous.
2. If $f: X -> Y$ is continuous and $A subset Y$ is closed, then $f^(-1) (A)$ is closed in $X$.
3. _Heine-Borel Theorem_: a subset $U subset RR^n$ is compact if and only if it is closed and bounded.

We argue that $S = {v in RR^n : norm(v) = 1}$ is compact. Since it is a subset of $RR^n$, it suffices to show it is closed and bounded.

Let $A = {x in RR : x = 1}$. Note that since this is a singleton set, it is obviously closed. Furthermore, it is obviously bounded in $RR^n$. Therefore, since $S$ is the inverse image of $A$, then $S$ is closed.

Furthermore, $S$ is obviously bounded. The value norm is constant within the set, which means that the distance metric defined by the norm is also constant within the set.

Therefore, $S$ is compact.

Note, additionally, that the set $K$ as defined in the problem half is a special-case of $S$ on the $L_0$ norm. Therefore, all findings apply, and $K$ is compact.
#pagebreak()

== Problem 3
Show that $norm(dot)_(C^r)$ is a norm on $C^r ([a, b])$. [_Hint_: First show it for $r = 0$, and use this to prove it for other values of $r$].
#line(length: 100%)

We prove via induction on $r$.

We first argue that $norm(dot)_(C^0)$ is a norm on $C^0 ([a, b])$.
#pad(x: 20pt)[
  1. #block[
    We argue that $norm(dot)_(C^0) >= 0$ for all $v in C^0 ([a, b])$, with equality if and only if $v = 0$.

    Let $f in C^0 ([a, b])$. Then $norm(f)_(C^0) = sup_(x in [a, b]) abs(f(x))$. Note that $abs(f(x)) >= 0$.

    Suppose $g(x) = 0 in C^0 ([a, b])$. Then $norm(g)_(C^0) = sup_(x in [a, b]) abs(g(x)) = sup_(x in [a, b]) abs(0) = 0$.

    Suppose $h(x) in C^0 ([a, b])$ and $exists w in [a, b] space h(x) != 0$. Then $norm(h)_(C^0) = sup_(x in [a, b]) abs(h(x))$. Since $h(w) != 0$, then $abs(h(w)) > 0$, and $norm(h)_(C^0) >= abs(h(w)) > 0$.
  ]

  2. #block[
    We argue that $norm(lambda v)_(C^0) = abs(lambda) dot norm(v)_(C^0)$ for all $lambda in RR$ and $v in C^0 ([a, b])$.

    Let $f in C^0 ([a, b])$ and $lambda in RR$.

    Then $norm(lambda f)_(C^0) = sup_(x in [a, b]) abs(lambda dot f(x)) = abs(lambda) dot sup_(x in [a, b]) abs(f(x)) = abs(lambda) dot norm(f)_(C^0)$.
  ]

  3. #block[
    We argue $norm(v + w)_(C^0) <= norm(v)_(C^0) + norm(w)_(C^0)$ for all $v, w in C^0 ([a, b])$.

    Let $f, g in C^0 ([a, b])$. Then
    $
      norm(f + g)_(C^0) = sup_(x in [a, b]) abs(f(x) + g(x)) <= & sup_(x in [a, b]) (abs(f(x)) + abs(g(x))) <= \
      & sup_(x in [a, b]) abs(f(x)) + sup_(x in [a, b]) abs(g(x)) <= norm(f)_(C^0) + norm(g)_(C^0)
    $
  ]
]

We additionally argue that if $norm(dot)_(C^r)$ is a norm on $C^r ([a, b])$, then $norm(dot)_(C^(r+1))$ is a norm on $C^(r+1) ([a, b])$.
#pad(x: 20pt)[
  Note that $norm(f)_(C^(r+1)) = norm(f^(\(r+1\)))_(C^0) + norm(f)_(C^r)$. Additionally, note that our base case has proved the left operand is a norm, and by assumption, the right operand is a norm. It therefore suffices to show that the sum of two norms is a norm.

  Let $norm(dot)$ and $norm(dot)'$ be two norms on $C^r ([a, b])$. We argue that their sum, $norm(dot) + norm(dot)'$ is still a norm.
  1. Since $forall h in C^r ([a, b])$, then $norm(h) >=0$ and $norm(h)' >= 0$ with equality if and only if $h(x) = 0$, then $norm(h) + norm(h)' >= 0$ with equality if and only if $h(x) = 0$.

  2. Let $lambda in RR$ and $f in C^r ([a, b])$. Then $norm(lambda v) + norm(lambda v)' = abs(lambda) norm(v) + abs(lambda) norm(v)' = abs(lambda) (norm(v) + norm(v)')$.

  3. #block[
    Let $f, g in C^r ([a, b])$. We know $norm(f + g) <= norm(f) + norm(g)$ and $norm(f + g)' <= norm(f)' + norm(g)'$. Then obviously $norm(f + g) + norm(f + g)' <= (norm(f) + norm(f)') + (norm(g) + norm(g)')$.
  ]
]
#pagebreak()

== Problem 4
Show that if $X$ is a compact metric space, $f_n in C^0 (X)$ and $f_n -> f$ with respect to $norm(dot)_(C^0)$ for some function $f$ on $X$, then $f in C^0 (x)$. [_Hint_: Fix an $epsilon > 0$ then fix a large $n$ such that $norm(f_n - f)_(C^0)$ is small. Choose a $delta$ based on the continuity of $f_n$. You should use the triangle inequality three times.]
#line(length: 100%)

Let $epsilon > 0$. We argue that $exists delta in RR : forall x, y in X space d(x, y) < delta => abs(f(x) - f(y)) < epsilon$.

We know that $f_n -> f$; thus, $exists n$ such that $norm(f_n - f)_(C^0) < epsilon / 3$. Since the $C^0$ norm is the supremum of the absolute value of the function, then $forall x space abs(f_n (x) - f(x)) <= norm(f_n - f) < epsilon / 3$ as well.

We know that $f_n (x)$ is continuous; thus, $exists delta$ such that $d(x, y) < delta) => f(x) - f(y) < epsilon / 3$. We choose this delta as well.

Finally, we conclude that

$
  abs(f(x) - f(y)) <= & abs(f(x) - f_n (x) + f_n (x) - f_n (y) + f_n (y) - f(y)) <= \
  & abs(f(x) - f_n (x)) + abs(f_n (x) - f_n (y)) + abs(f(y) - f_n (y)) < \
  & epsilon / 3 + epsilon / 3 + epsilon / 3 < epsilon
$
#pagebreak()

== Problem 5
Show that the $C^1$-norm and $C^0$-norm on $C^infinity ([0, 1])$ are not equivalent. [_Hint_: Find a sequence of nonzero $C^infinity$ functions $f_n$ such that the ratio of the two norms either goes to $infinity$ or $0$]
#line(length: 100%)

Note that two norms $norm(dot), norm(dot)'$ are equivalent if
$
  exists C in RR space forall v in V : & 1/C dot norm(v) <= norm(v)' <= C dot norm(v)
$

We have already constructed the requested sequence in class. Let
$
  f_n (x) = 1/n sin(n^2 (x)) "on" [0, 1]
$

Since $1/n -> 0$ and $sin(n^2 (x))$ is bounded, then $f_n ->^(C^0) 0$. Since every convergent sequence is Cauchy, then $(f_n)$ is Cauchy on the $C^0$ norm.

However, note that
$
  (f_n)' = 1/n dot n^2 cos(n^2 x) = n cos(n^2 x)
$

This is obviously unbounded. Therefore, for $norm(f)_(C^1) = abs(f')_(C^0) + abs(f)_(C^0)$, the sequence $f_n$ cannot be Cauchy. (This is what we demonstrated in class.)

We have previously demonstrated via a theorem that if $norm(dot)$ and $norm(dot)'$ are equivalent, then they have the same set of Cauchy sequences. Since there exists a sequence that is Cauchy on the $C^0$ norm but not the $C^1$ norm, then the norms cannot be equivalent.
#pagebreak()

== Problem 6
Show that ${f in C^0 ([0, 1]): norm(f)_(C^0) <= 1}$ is closed and bounded in $C^0 (X)$ with respect to $norm(dot)_(C^0)$, but not compact.
#line(length: 100%)

We argue that $K = {f in C^0 ([0, 1]): norm(f)_(C^0) <= 1}$ is closed and bounded in $C^0 (x)$ with respect to $norm(dot)_(C^0)$.

Since the norm of all $f in K$ is less than or equal to $1$, then the set is obviously bounded.

Note that the $C^0$ norm is continuous, and therefore, if $A subset RR$ is closed, then $f^(-1) (A)$ is closed in $C^0 ([0, 1])$. Further note that $K = f^(-1) ([0, 1])$. The set $[0, 1] subset RR$ is obviously closed by the Heine-Borel Theorem, and thus $K$ is closed.

We argue that $K$ is not compact. Assume for the sake of contradiction that $K$ were compact. Then if $f: K -> RR$ is continuous, then $f(K)$ must also be compact.

Recall again the pathological sequence from Problem 5
$
  f_n (x) = 1/n sin(n^2 (x)) "on" [0, 1]
$

Note that since $1/n <= 1$ and $sin(n^2 (x)) <= 1$, then all $(f_n)$ are in $K$.

Furthermore, recall that the $C^1$ norm is continuous (as it is a norm), and furthermore, that under the $C^1$ norm, the sequence $norm(f_n)$ is unbounded. Since the image of $K$ under the $C^1$ norm is unbounded, it cannot be compact. Therefore, $K$ itself cannot be compact.
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

Recall that a vector space must support _addition_ and _scaling_. We argue $cal(P)_d ([0, 1])$ satisfies these.
1. We argue if $f, g in cal(P)_d ([0, 1])$, then $f + g in cal(P)_d ([0, 1])$. This is trivial; the sum of two polynomials will sum their corresponding coefficients, and produce another polynomial of degree $d$. Addition, as previously proved, is associative, commutative, and there exists an additive inverse.
2. We argue if $f in cal(P)_d ([0, 1])$ and $lambda in RR$, then $lambda f in cal(P)_d ([0, 1])$. This is similarly trivial; all coefficients are scaled, and thus normal properties apply.

We argue $norm(dot)_(C^0)$ is a norm on $cal(P)_d ([0, 1])$. Note that all polynomials are continuous. We have previously proven that $norm(dot)_(C^0)$ is a norm on $C^0$. Since $cal(P)_d ([0, 1]) subset.eq C^0$, then it is obviously also a norm on $cal(P)_d ([0, 1])$.

We argue $p(x) = a_d x^d + a_(d-1) x^(d-1) + ... + a_0$ is a polynomial, $norm(p) := max{abs(a_d), ..., abs(a_0)}$ defines a norm on $cal(P)_d ([0, 1])$.
1. #block[
  Since $norm(p)$ takes the max of absolute values, it is true that $norm(p) >= 0$.

  Suppose $p(x) = 0$. Then $norm(p) = max{0, ..., 0} = 0$.

  Suppose $p(x) != 0$. Then $norm(p)$ will take the max of a set containing at least one non-zero value. Then $norm(p) != 0$.
]

2. #block[
  Let $lambda in RR$. Then
  $
    norm(lambda p) = max{abs(lambda dot a_d), ..., abs(lambda dot a_0)} = max{abs(lambda) dot abs(a_d), ..., abs(lambda) dot abs(a_0)} = \ abs(lambda) dot max{abs(a_d), ..., abs(a_0)} = abs(lambda) dot norm(p)
  $
]

3. #block[
  Let $f = f_d x^d + ... + f_0$ and $g = g_d x^d + ... + g_0 in cal(P)_d ([0, 1])$.

  Then $norm(f + g) = max{abs(f_d + g_d), ..., abs(f_0 + g_0)}$. Recall that $abs(a + b) <= abs(a) + a(b)$. Therefore,
  
  $
    norm(f + g) <= max{abs(f_d) + abs(g_d), ..., abs(f_0) + abs(g_0)} <= max{abs(f_d), ..., abs(f_0)} + max{abs(g_d), ..., abs(g_0)} <= norm(f) + norm(g)
  $
]

We argue for all $d in NN$, there exists $C_d$ such that for all polynomials $p(x) = a_d x^d + a_(d-1) x^(d-1) + ... + a_0$ there exists $x in [0, 1]$ such that for every $i in {0, ..., d}$, then $abs(a_i) <= C_d abs(p(x))$.

Let $d in NN$. Furthermore, let $C_d = d$.

Let $p(x) = a_d x^d + a_(d-1) x^(d-1) + ... + a_0$ be an arbitrary polynomial.

Let $x in [0, 1]$ such that $abs(p(x)) = sup_(w in [0, 1]) abs(p(x))$ (i.e., select the $x$-coordinate at which $p$ achieves the highest magnitude.

Let $i in {0, ..., d}$. Note that because we sum $d$ digits, then the coefficient of any individual one cannot overpower the sum of the maximum value of $abs(p(x))$. Therefore, $abs(a_i) <= C_d abs(p(x))$.

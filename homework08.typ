#set page(margin: 0.75in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 8
  Henry Zheng
]
#pagebreak()

== Problem 1
Let $gamma : [0, 1] -> RR^2$ be a curve connecting $(0, 0)$ and $(1, 1)$ such that both components of $gamma$ are increasing and continuous. Show that $gamma ([0, 1])$ has 2-dimensional Lebesgue measure 0. _Hint_: Partition $[0, 1]$ with break points ${x_i}_(i = 0)^n$ so that $gamma_1 (x_(i+1)) - gamma_1 (x_i) = 1/n$ (you'll have to justify why they exist). Then cover the image by boxes induced by this choice of partition and estimate their size (you'll have to define the boxes).

_Remark 1_. You can replace increasing by differentiable and still be able to prove the image has measure 0.

On the other hand, Problem 1 fails without the increasing condition: there are continuous curves $gamma: [0, 1] -> [0, 1]^2$ which are onto (and hence their image has positive 2-dimensional Lebesgue measure). Look up _Peano curves_ or _space-filling curves_.
#line(length: 100%)

First, we partition $[0, 1]$ into break points ${x_i}_(i=0)^n$ such that $gamma_1 (x_(i+1)) - gamma_1 (x_i) = 1/n$. We argue such a partition exists.
#pad(x: 20pt)[
  We fix $n$, and prove via induction on $i$.

  First, suppose $i = 0$, and note that $gamma_1 (x_0) = gamma_1 (0) = 0$, and furthermore, $gamma_1 (x_n) = gamma_1 (1) = 1$. Therefore, by the intermediate value theorem, $exists i + 1$ such that $gamma_1 (x_(i+1)) - gamma_1 (x_i) = 1/n$.

  Secondly, suppose we have built the partition up to $i = m$. We argue that there exists a partition from $[m, n]$ which continues to obey the property. This again is a simple application of the intermediate value theorem; as we have partitioned the space up to $m$, then there exists $(n - m) / n$ area along $gamma_1$ which is yet to be partitioned.
]

Secondly, we calculate the sum of the area of the boxes defined by the previous partition.
#pad(x: 20pt)[
  The sum of the boxes must be, by definition,
  $
    & sum_(i=0)^(n) (gamma_1 (x_(i+1)) - gamma_1 (x_i)) (gamma_2 (x_(i+1)) - gamma_2 (x_i)) = \
    & sum_(i=0)^(n) (1/n) (gamma_2 (x_(i+1)) - gamma_2 (x_i)) = \
    & 1/n sum_(i=0)^(n) gamma_2 (x_(i+1)) - gamma_2 (x_i)
  $
  ...and note that because the curve is continuous and increasing from $(0, 0)$ to $(1, 1)$, then the sum of the $y$-coordinates must be equal to $1$. Therefore, the sum of the area of the boxes must be $1/n$. As $n$ approaches infinity, the sum of the area of the boxes approaches $0$.
]
#pagebreak()

== Problem 2
Let $(X, cal(A), mu)$ be a measure space and $pi : X -> Y$ be a surjective function. Show that $pi_* cal(A) := {B subset Y : pi^(-1) (B) in cal(A)}$ is a $sigma$-algebra on $Y$ and $pi_* mu$ defined by $pi_* mu (B) := mu (pi^(-1) B)$ is a measure defined on $pi_* cal(A)$ (called the _pushforward of_ $mu$).
#line(length: 100%)

We argue that $Y in pi_* cal(A)$. This is a condition for $pi_* cal(A)$ being a $sigma$-algebra.
#pad(x: 20pt)[
  It suffices to prove $pi^(-1) (Y) in cal(A)$. However, by the definition of a function, $pi^(-1) (Y) = X$, and $X in cal(A)$ by definition.
]

We argue that $B in pi_* cal(A) => Y without B in pi_* cal(A)$. This is a condition for $pi_* A$ being a $sigma$-algebra.
#pad(x: 20pt)[
  Let $pi^(-1) (B) in cal(A)$. Then $pi^(-1) (Y without B) = pi^(-1) (Y) without pi^(-1) (B) = X without pi^(-1) (B)$. By the definition of a $sigma$-algebra, $X without pi^(-1) (B) in cal(A)$.
]

We argue that $B_1, B_2, ... in pi_* cal(A) => union_(i=1)^infinity B_i in pi_* cal(A)$. This is a condition for $pi_* A$ being a $sigma$-algebra.
#pad(x: 20pt)[
  Let $B_1, B_2, ... in pi_* cal(A)$. Then
  $
    pi^(-1) (B_1 union B_2 union ...) = pi^(-1) (B_1) union pi^(-1) (B_2) union ...
  $
  ...and each $pi^(-1) (B_i) in cal(A)$, and thus their union is in $cal(A)$.
]

I'm going to assume that the problem statement is meant to define $pi_* mu(B) := mu(pi^(-1) (B))$, as it would make little sense to define it otherwise.

We argue that $pi_* mu(emptyset) = 0$. This is a condition for $pi_* mu$ being a measure.
#pad(x: 20pt)[
  $pi_* mu(emptyset) = mu(pi^(-1) (emptyset)) = mu(emptyset) = 0$
]

We argue that $pi_* mu(A) >= 0 space forall A in pi_* cal(A)$. This is a condition for $pi_* mu(B)$ being a measure.
#pad(x: 20pt)[
  Since the value of $pi_* mu(A) = mu(pi^(-1) (B))$, and $mu$ is a measure by assumption, it follows positivity.
]

We argue that if $B_1, ..., B_n in pi_* mu(B)$ are disjoint, then $pi_* mu(union_(i=1)^infinity B_i) = sum_(i=1)^infinity pi_* mu(B_i)$. This is a condition for $pi_* mu(B)$ being a measure.
#pad(x: 20pt)[
  $
    pi_* mu(union.big_(i=1)^infinity B_i) =
    mu(pi^(-1) (union.big_(i=1)^infinity B_i)) =
    mu(union.big_(i=1)^infinity pi^(-1) (B_i))
  $
  Since each $B_i$ are pairwise disjoing, then each $pi^(-1) (B_i)$ must also be pairwise disjoint. Therefore,
  $
    mu(union.big_(i=1)^infinity pi^(-1) (B_i)) = sum_(i=1)^infinity mu(pi^(-1) (B_i)) = sum_(i=1)^infinity pi_* mu(B_i)
  $
]
#pagebreak()

== Problem 3
Let $S$ be a finite set. Show that if $cal(P) = {P_1, ..., P_m}$ is a partition of $S$ (i.e., $S = P_1 union.sq P_2 union.sq ... union.sq P_m$), and
$
  cal(A)_cal(P) = {union.big_(i in F) P_i : F subset {1, ..., m}}
$
is the collection of unions of sets from $cal(P)$, then
$cal(A)_cal(P)$ is an algebra. _Hint_: It may be useful to
compute $cal(A)_cal(P)$ for some examples, e.g., $cal(P) = {S}$ and
$cal(P) = {{x} : x in S}$.
#line(length: 100%)

We argue that $S in cal(A)_cal(P)$.
#pad(x: 20pt)[
  Let $F = {1, ..., m}$. Then obviously $F subset.eq {1, ..., m}$. Finally, by the problem statement, $S = union_(i in F) P_i$. Therefore, $S in cal(A)_cal(P)$.
]

We argue that $A in cal(A)_cal(P) => S without A in cal(A)_cal(P)$.
#pad(x: 20pt)[
  Let $A in cal(A)_cal(P)$. Then, by definition, $exists F subset.eq {1, ..., m}$ such that $A = union_(i in F) P_i$.

  Recall that $S = union_(i in {1, ..., m}) P_i$. Thus, let $F' = {1, ..., m} without F$, and $F' subset.eq {1, ..., m}$. Finally, note that $S without A = union_(i in F') P_i$, which by definition must be within $cal(A)_cal(P)$.
]

We argue that $A_1, A_2, ..., in cal(A)_cal(P) => union_(i=1)^infinity cal(A)_cal(P)$.
#pad(x: 20pt)[
  Let $A_1, A_2, ..., in cal(A)_cal(P)$. Then by definition, $exists F_1, F_2, ... subset.eq {1, ..., m}$. Thus, by definition, $union_(i=1)^infinity F_i subset.eq {1, ..., m}$. Then
  $
    & A_1 union A_2 union ... = \
    & (union.big_(i in F_1) P_i) union (union.big_(i in F_2) P_i) union ... = \
    & union.big_(i in F_1 union F_2 union ...) P_i
  $
  ...which must be in $cal(A)_cal(P)$ by definition.
]
#pagebreak()

== Problem 4
Let $S$ be a finite set. Show that every algebra of subsets of $S$ comes from the previous problem. _Hint_: Show that the relation $x ~ y <==>$ for all $A in cal(A)$, $y in A$ implies that $x in A$ is an equivalence relation, and the equivalence class of $x$ is $[x] = inter.big_(A in cal(A)) A$.
#line(length: 100%)

We define the relation $tilde$ on $S$ by $x tilde y <==>$ for all $A in cal(A)$, $y in A => x in A$. We argue that $tilde$ is an equivalence relation.
#pad(x: 20pt)[
  _Reflexive_: For all $A in cal(A)$, $x in A => x in A$. This is trivially true.

  _Symmetric_: Suppose $x tilde y$, so for all $A in cal(A)$, $y in A => x in A$. We must show $x in A => y in A$. Suppose $x in A$ but $y in.not A$. Then $y in S without A$, and since $cal(A)$ is an algebra, $S without A in cal(A)$. By hypothesis, $y in S without A => x in S without A$, contradicting $x in A$.

  _Transitive_: Suppose $x tilde y$ and $y tilde z$. Then $forall A in cal(A)$, $z in A => y in A => x in A$.
]

We argue that $[x] = inter.big_(A in cal(A), x in A) A$.
#pad(x: 20pt)[
  ($subset.eq$): Let $y in [x]$, so $x tilde y$. By symmetry, for every $A in cal(A)$ with $x in A$, we have $y in A$. Thus $y in inter.big_(A in cal(A), x in A) A$.

  ($supset.eq$): Let $y in inter.big_(A in cal(A), x in A) A$, so $y$ is in every $A in cal(A)$ containing $x$. Suppose for contradiction that $y in B$ but $x in.not B$ for some $B in cal(A)$. Then $x in S without B in cal(A)$, so $y in S without B$, contradicting $y in B$. Thus $x tilde y$, so $y in [x]$.
]

We argue that each equivalence class $[x] in cal(A)$.
#pad(x: 20pt)[
  Since $S$ is finite, $cal(A)$ is finite. Thus $[x] = inter.big_(A in cal(A), x in A) A$ is a finite intersection of sets in $cal(A)$. An algebra is closed under finite intersections (by closure under complementation and finite unions, via De Morgan's laws), so $[x] in cal(A)$.
]

Let $cal(P) = {[x] : x in S}$. Since the equivalence classes partition $S$, $cal(P)$ is a partition of $S$. We argue that $cal(A) = cal(A)_cal(P)$.
#pad(x: 20pt)[
  ($supset.eq$): Every element of $cal(A)_cal(P)$ is a union of equivalence classes. Each equivalence class is in $cal(A)$, and $cal(A)$ is closed under finite unions, so $cal(A)_cal(P) subset.eq cal(A)$.

  ($subset.eq$): Let $A in cal(A)$. For any $x in A$, if $y tilde x$ then $y in A$ by the definition of $tilde$. Thus $[x] subset.eq A$ for all $x in A$, and so $A = union.big_(x in A) [x]$. This is a union of partition elements, so $A in cal(A)_cal(P)$.
]
#pagebreak()

== Problem 5
Let $X$ be a set (not necessarily finite) and $X = P_1 union.sq P_2 union.sq P_3 union.sq ...$ be a partition of $X$ into finitely or countably many subsets and $(p_1, p_2, p_3, ...)$ be a countable or finite tuple of nonnegative numbers such that $sum p_i < infinity$. Define a premeasure on the collection of unions of subcollections of the $P_i$'s by
$
  nu_0 (union.big_(i in F) P_i) = sum_(i in F) p_i
$

You may take for granted that $nu_0$ is a measure on the $sigma$-algebra of unions of the $P_i$'s. Determine which sets satisfy the Caratheodory measurability criterion for $nu_0$, and prove that your answer is correct. _Hint_: The answer will depend on which of the $p'_i s$ are 0. Which measure do you get when you use $RR = {0} union.sq (bb(R) without {0})$ and $(p_1, p_2) = (1, 0)$?
#line(length: 100%)

We first compute the outer measure $nu_0^*$. We argue that for any $E subset.eq X$,
$
  nu_0^* (E) = sum_(i : E sect P_i != emptyset) p_i
$
#pad(x: 20pt)[
  For the upper bound, take the single covering set $A = union.big_(i : E sect P_i != emptyset) P_i$. Then $A in cal(A)$, $E subset.eq A$, and $nu_0 (A) = sum_(i : E sect P_i != emptyset) p_i$.

  For the lower bound, let ${A_j}$ be any cover of $E$ by sets in $cal(A)$, and let $B = union_j A_j in cal(A)$. Since $nu_0$ is a measure, $nu_0 (B) <= sum_j nu_0 (A_j)$. Since $E subset.eq B$ and $B$ is a union of partition elements, every $P_i$ intersecting $E$ must appear in $B$, so $nu_0 (B) >= sum_(i : E sect P_i != emptyset) p_i$. Taking the infimum over all covers gives the result.
]

We argue that $E subset.eq X$ satisfies the Caratheodory measurability criterion if and only if for all $i$ with $p_i > 0$, either $P_i subset.eq E$ or $P_i sect E = emptyset$. In other words, $E$ may only split partition elements whose weight is $0$.

We argue the forward direction by contrapositive.
#pad(x: 20pt)[
  Suppose there exists $i$ with $p_i > 0$ such that both $P_i sect E != emptyset$ and $P_i sect (X without E) != emptyset$. Take $A = P_i$ as a test set. Since $P_i sect E subset.eq P_i$ and is nonempty, the only partition element it intersects is $P_i$ itself, so $nu_0^* (P_i sect E) = p_i$. Similarly, $nu_0^* (P_i sect (X without E)) = p_i$. Therefore,
  $
    nu_0^* (A sect E) + nu_0^* (A sect (X without E)) = 2 p_i > p_i = nu_0^* (A)
  $
  ...so $E$ does not satisfy the Caratheodory criterion.
]

We argue the reverse direction.
#pad(x: 20pt)[
  Suppose that for all $i$ with $p_i > 0$, either $P_i subset.eq E$ or $P_i sect E = emptyset$. Let $A subset.eq X$ be arbitrary. We must show $nu_0^* (A) = nu_0^* (A sect E) + nu_0^* (A sect (X without E))$.

  Define $I = {i : A sect P_i != emptyset}$, $I_1 = {i : A sect E sect P_i != emptyset}$, and $I_2 = {i : A sect (X without E) sect P_i != emptyset}$. Note that $I = I_1 union I_2$, so
  $
    & nu_0^* (A sect E) + nu_0^* (A sect (X without E)) = sum_(i in I_1) p_i + sum_(i in I_2) p_i = \
    & sum_(i in I) p_i + sum_(i in I_1 sect I_2) p_i
  $

  If $i in I_1 sect I_2$, then $P_i$ intersects both $E$ and $X without E$, so by our assumption $p_i = 0$. Therefore the second sum vanishes, and we conclude
  $
    nu_0^* (A sect E) + nu_0^* (A sect (X without E)) = sum_(i in I) p_i = nu_0^* (A)
  $
]
#pagebreak()

== Problem 6 \*
 This problem uses ideas and notation from
Problem 2. Let $Omega_2^+$ denote the set of one-sided sequences in
$0$'s and $1$'s,
$
  Omega_2^+ = {(x_n)_(n in NN) : x_n = 0 "or" 1 "for all" n in NN}
$

The $(p, 1 - p)$-Bernoulli measure is also defined on $Omega_2^+$ in the same way. Show that if $mu$ denotes the $(1/2, 1/2)$-Bernoulli measure, and $pi : Omega_2^+ -> [0, 1]$ is defined by $pi((x_n)) = sum_(n=1)^infinity 2^(-n) x_n$, then $pi_* cal(A)$ contains the Borel $sigma$-algebra on $[0, 1]$, and $pi_* mu = m$ on $pi_* cal(A)$. _Hint_: Establish equality first for a certain class of sets, then express an arbitrary open set as a union of such sets which overlap in sets of measure 0.

_Remark 2_. This shows that there are many different measures on $[0, 1]$, since any Bernoulli measure, not just the $(1/2, 1/2)$, can be pushed forward by $pi$ onto $[0, 1]$. In fact, this is a very small glimpse into how big the space of measures is on $[0, 1]$. There are some other very interesting ones to put there!
#line(length: 100%)

I did not complete this problem, as it was not required.

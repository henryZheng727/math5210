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
// todo
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
// todo
#pagebreak()

== Problem 5
Let $X$ be a set (not necessarily finite) and $X = P_1 union.sq P_2 union.sq P_3 union.sq ...$ be a partition of $X$ into finitely or countably many subsets and $(p_1, p_2, p_3, ...)$ be a countable or finite tuple of nonnegative numbers such that $sum p_i < infinity$. Define a premeasure on the collection of unions of subcollections of the $P_i$'s by
$
  nu_0 (union.big_(i in F) P_i) = sum_(i in F) p_i
$

You may take for granted that $nu_0$ is a measure on the $sigma$-algebra of unions of the $P_i$'s. Determine which sets satisfy the Caratheodory measurability criterion for $nu_0$, and prove that your answer is correct. _Hint_: The answer will depend on which of the $p'_i s$ are 0. Which measure do you get when you use $RR = {0} union.sq (bb(R) without {0})$ and $(p_1, p_2) = (1, 0)$?
#line(length: 100%)
// todo
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

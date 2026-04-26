#show math.equation.where(block: false): set math.frac(style: "skewed")

#set page(
  "us-letter",
  flipped: true,
  margin: 0.25in,
  columns: 3,
)

#set text(
  size: 7.5pt
)

#let ip(a, b) = $lr(chevron.l #a, #b chevron.r)$

#show heading: set align(center)

== Metric Spaces
*Definition 1*. A _metric space_ is a pair $(X, d)$, where $d: X times X -> RR$,
1. $d(x, y) >= 0$ with equality if and only if $x = y$
2. $d(x, y) = d(y, x)$
3. $d(x, z) <= d(x, y) + d(y, z)$

*Definition 2*. A sequence $(x_n) = (x_1, x_2, ...)$ in a metric space $X$ is said to
- _converge to $x$_ (denoted $x_n -> x$) if for every $epsilon > 0$, then there exists some $N in NN$ such that if $n >= N$, $d(x_n, x) < epsilon$.
- _be Cauchy_ if for every $epsilon > 0$, there exists some $N in NN$ such that if $m, n >= N$, $d(x_n, x_m) < epsilon$.
- _have $x$ as a subsequential limit_ or _subconverge to $x$_ if there exists a subsequence $(x_n_k) = (x_n_1, x_n_2, x_n_3, ...)$ such that $x_n_k -> x$.
A metric space $X$ is _complete_ if every Cauchy sequence in $X$ converges.

*Theorem 1*. If $x_n -> x$, then all of its subsequences converges to $x$.

*Definition 3*. If $X$ and $Y$ are metric spaces with metrics $d_X$ and $d_Y$ respectively, a function $f: X -> Y$ is _continuous_ at $x in X$ if
$
  forall epsilon > 0 space exists delta > 0 "such that" d_X (x, y) < delta => d_Y (f(x), f(y)) < epsilon
$
$f$ is _continuous_ if it is continuous at every $x in X$. $f$ is _uniformly continuous_ if it is continuous and $delta$ can be chosen before knowing $x$.

*Theorem 2*. A function $f: X -> Y$ is continuous at $x in X$ if and only if for every sequence $x_n -> x$ in $X$, then $f_n (x) -> f(x)$ in $Y$.

*Theorem 3*. (Uniformly) continuous functions are closed under addition, multiplication, division (if the denominator is never $0$), and scaling.

*Definition 4*. A subset $A subset.eq X$ of a metric space is
- _closed_ if whenever $(a_n)$ is a sequence in $A$ and $a_n$ converges to $a in X$, then $a in A$.
- _open_ if for every $x in A$, there is some $epsilon > 0$ such that $B(x, epsilon) subset.eq A$.
- _bounded_ if $exists D > 0$ such that for every $x, y in A$, then $d(x, y) <= D$.
- _compact_ if whenever $(x_n)$ is a sequence in $A$, it has a subsequential limit in $A$. $X$ is called compact if it is a compact subset of itself.

*Theorem 4*. If $A subset.eq X$ is open, then $X without A$ is closed; and if $A subset.eq X$ is closed, then $X without A$ is open.

*Theorem 5*. If $X$ is a metric space, a subset $A subset.eq X$ is compact if and only if whenever ${U_alpha}_(alpha in cal(A))$ is a cover of $X$ by open sets, then there exists $alpha_1, ..., alpha_n in cal(A)$ such that ${U_alpha_1, ..., U_alpha_n}$ covers $X$.

*Theorem 6 (Heine-Borel)*. A subset $A subset.eq RR^n$ is compact if and only if it is closed and bounded.

*Theorem 7*. Every compact metric space is complete.

*Theorem 8*. A continuous function from a compact set is uniformly continuous, bounded, and achieves its minimum and maximum.

== Normed Spaces
*Definition 1*. If $V$ is a vector space, a _norm_ on $V$ is a function $norm(dot): V -> RR$,
1. $norm(v) >= 0$ and $norm(v) = 0 <==> v = 0$ for $v in V$
2. $norm(lambda v) = abs(lambda) dot norm(v)$ for $lambda in RR, v in V$
3. $norm(v + w) <= norm(v) + norm(w)$ for $v, w in V$

*Definition 2*. If $norm(dot)$ and $norm(dot)'$ are norms on $V$, they are said to be _equivalent_ if $exists C in RR space forall v in V quad norm(v) / C <= norm(v)' <= C norm(v)$.

*Definition 3*. A _Banach space_ is a complete normed vector space.

*Theorem 1*. If $dim(V) < infinity$, then all norms are equivalent.

*Theorem 2*. If $(v_n)$ is a sequence in $V$, and $norm(dot)$ and $norm(dot)'$ are equivalent,
1. $(v_n)$ is Cauchy for $norm(dot)$ $<==>$ $(v_n)$ is Cauchy for $norm(dot)'$
2. $v_n -> v$ with respect to $norm(dot)$ $<==>$ $v_n -> v$ with respect to $norm(dot)'$

== Arzela-Ascoli Theorem
*Definition 1*. If $X$ is a compact metric space, then we may define the space of functions $C^n (X) = {f : X -> RR, f^(\(n\)) "is continuous"}$.

*Definition 2*. The $C^0$ norm is defined $norm(f)_(C^0) = sup_(x in X) abs(f(x))$. The $C^n$ norm is defined $norm(f)_(C^n) = sum_(i=1)^n norm(f^(\(n\)))_(C^0)$.

*Theorem 1*. $(C^n (X), norm(dot)_(C^n))$ is a Banach space.

*Remark*. The $C^0$ and $C^1$ norms are not equivalent, and there exist sequences that converge in $C^0$ but not in $C^1$.

*Definition 2*. A subset $cal(F) subset.eq C^0 (X)$ is called _equicontinuous_ if
$
  & forall epsilon > 0 space
  exists delta in RR "such that"
  forall x, y in X "where" d(x, y) < delta "and" \
  & forall f in cal(F) "then"
  abs(f(x) - f(y)) < epsilon
$

*Definition 3*. $cal(F)$ is $C^n$-bounded if $exists B > 0$ such that $forall f in cal(F) space norm(f)_(C^n) <= B$.

*Theorem 2 (Arzela-Ascoli)*. Let $cal(F) subset.eq C^n (X)$.
1. The family of functions $cal(F)$ is _compact_ with respect to the $C^n$-norm if and only if $cal(F)$ is closed, $C^n$-bounded, and equicontinuous.
2. The family of functions $cal(F)$ is _precompact_ (i.e., $overline(cal(F))$ is compact) with respect to the $C^n$-norm if and only if $cal(F)$ is $C^n$-bounded and equicontinuous.

== $sigma$-Algebras and Measures
*Definition 1*. If $X$ is a set, a $sigma$-algebra on $X$ is a family of subsets $cal(A) subset.eq 2^X$ (where $2^X$ is the powerset of $X$) such that
1. $X in cal(A)$
2. If $A in cal(A)$, then $X without A in cal(A)$.
3. If $A_i in cal(A) space forall i = 1, 2, ...$, then $union_(i=1)^infinity A_i in cal(A)$.

*Lemma 1*. If $cal(A)$ is a $sigma$-algebra and $forall i in NN space A_i in cal(A)$, then $inter_(i=1)^infinity A_i in cal(A)$.

*Definition 2*. The _Borel $sigma$-algebra_ $cal(B)$ is the smallest $sigma$-algebra that contains all open sets.

*Definition 3*. A _measure_ on a $sigma$-algebra $cal(A)$ is a function $mu: cal(A) -> RR union {infinity}$,
1. $mu(emptyset) = 0$
2. $mu(A) >= 0 quad forall A subset.eq cal(A)$
3. If $A_1, ..., A_n in cal(A)$ are pairwise disjoint, then $mu(union_(i=1)^infinity A_i) = sum_(i=1)^infinity mu(A_i)$.

== Lebesgue Measure
*Definition 1*. The _Lebesgue pre-measure_ of the finite union of intervals $I_i$ of $RR$ with endpoints $a_i, b_i$ is defined by $m_0 (union_(i=1)^n I_i) = sum_(i=1)^n b_i - a_i$.

*Definition 2*. If $A subset.eq RR$, the _Lebesgue outer measure_ of $A$ is defined $m^* (A) = inf {sum_(j=1)^infinity m_0 (I_j) : union_(j=1)^infinity I_j = (a_j, b_j) "covers" A}$

*Theorem 1*. We list some properties of the Lebesgue outer measure.
1. If $A$ is countable, then $m^* (A) = 0$.
2. If $I$ is an interval, then $m^* (I) = m_0 (I)$.
2. $m^*$ is _monotonic_. If $A subset.eq B$, then $m^* (A) <= m^* (B)$.
3. $m^*$ is _subadditive_. If $A_1, A_2, ...$ is a countable collection of sets, then $m^* (union_(i=1)^infinity A_i) <= sum_(i=1)^infinity m^* (A_i)$.

*Definition 3*. We say that $A subset.eq RR$ is _Lebesgue measurable_ if $forall B subset.eq RR$, then $m^* (B) = m^* (B inter A) + m^* (B without A)$.

*Theorem 2*. Every Borel set (and notably, every interval) is measurable.

*Theorem 3*. The measurable sets $cal(A)$ form a $sigma$-algebra with measure $m^*$.

*Theorem 4 (Regularity)*. If $E$ is Lebesgue-measurable and $epsilon > 0$, $exists "closed" F "and open" O : F subset.eq E subset.eq O, m(O without E) < epsilon and m(E without F) < epsilon$.

*Definition 4*. _Almost every_ (a.e.) $x$ satisfies $P(n)$ if $m({x : not P(x)}) = 0$.

*Lemma 1 (Borel-Cantelli)*. Let ${A_i}$ be a collection of measurable subsets of $RR$ such that $sum_(i=1)^infinity m(A_i) < infinity$. Then almost every $x in RR$ belongs to at most finitely many $A_i$.

== Measurable Functions
*Definition 1*. A function $f: RR -> RR$ is _measurable_ if for every measurable set $A subset.eq RR$, then $f^(-1) (A)$ is measurable in $RR$.

*Theorem 1*. $f$ is measurable if and only if
1. $f^(-1) ((a, infinity))$ is measurable $forall a in RR$, or
2. $f^(-1) ([a, infinity))$ is measurable $forall a in RR$.

*Theorem 2*. If $c in RR$ and $f, g$ are measurable, so is $f + g$, $f dot g$, $c f$, $g compose f$, and $1 / f$ (provided $m(f^(-1) ({0})) = 0$).

*Theorem 2 (Simple Approximation)*. Let $E subset.eq RR$ be Borel; $f: E -> RR$ be measurable and non-negative. Then there exists an increasing sequence of simple functions $phi_n: E -> RR, 0 <= phi_n <= f$ such that $phi_n -> f$ pointwise.

*Theorem 3 (Egoroff)*. Let $m(E) < infinity$ and $f_n: E -> RR$ be a sequence of measurable functions with $f_n (x) -> f(x)$ for a.e. $x$. Then $forall epsilon > 0$, $exists "measurable" A subset.eq E : m(E without A) < epsilon$, and $f_n bar_A -> f bar_A$ uniformly.

== Lebesgue Integration
*Definition 1*. The integral of a simple function $phi.alt$ is
$
  integral_E phi.alt dif m = sum_(i=1)^n lambda_i dot m(E_i) "where each" E_i = phi.alt^(-1) ({lambda_i})
$

// If $m(E) < infinity$ and $f$ is bounded and measurable,
The integral of a bounded, measurable function on $E$ where $m(E) < infinity$ is
$
  integral_E f dif m = sup {integral_E phi dif m : phi <= f "and" phi " is simple"}
$

The integral of a non-negative, measurable function is
$
  integral_E f dif m = sup {integral_(E') h dif m : 0 <= h <= f "on" E' subset.eq E "with" m(E') < infinity}
$
where $h: E' -> RR$ is measurable, bounded. $f$ is _integrable_ if $integral_E f dif m < infinity$.

Let $f$ be measurable. Write $f = f_+ - f_-$ where both $f_+$ and $f_-$ are non-negative. Then $integral_E f dif m = integral_E f_+ dif m - integral_E f_- dif m$.

*Remark*. The Lebesgue integral is equal to the Riemann integral when defined. Many more functions are Lebesgue- than Riemann-integrable.

*Lemma 1*. If $f, g$ are integrable, then $integral_E f + g dif m = integral_E f dif m + integral_E g dif m$.

*Theorem 1 (Chebychev's Inequality)*. Let $f: E -> RR$ be measurable and non-negative. Then $lambda dot m({x in E : f(x) >= lambda}) <= integral_E f dif m$.

*Lemma 2*. If $f: V -> RR$ is measurable and non-negative, then $f(x) = 0$ almost everywhere if and only if $integral_E f dif m = 0$.

*Lemma 3 (Fatou)*. If $E subset.eq RR$ and $f_n: E -> RR$ and $forall f_n$ measurable, non-negative and $f_n (x) -> f(x)$ for a.e. $x$, $integral_E f dif m <= liminf_(h->infinity) integral_E f_n dif m$.

Recall that $liminf I_n = inf {lim I_n_k : I_n_k "converges"}$.

*Theorem 2 (Bounded Convergence)*. Let $m(E) < infinity$ and $f_n: E -> RR$ be a sequence of uniformly bounded, measurable, non-negative functions. If $f_n -> f$ pointwise almost everywhere, then $integral_E f_n dif m -> integral_E f dif m$.

== Caratheodory Construction
*Remark*. We generalize the notion of measure to spaces other than $RR$.

*Definition 1*. Let $X$ be a set. $cal(A)_0$ is an _algebra_ of sets on $X$ if
1. $emptyset in cal(A)_0$
2. $cal(A)_0$ is closed under complements.
3. $cal(A)_0$ is closed under finite unions.

*Definition 2*. Let $X$ be a set, and $cal(A)_0$ be an algebra of sets on $X$. A function $mu_0 : cal(A)_0 -> RR$ is a _pre-measure_ if
1. $mu_0 (emptyset) = 0$
2. $mu_0 (A_1 union ... union A_n) = sum_(i=1)^n mu_0 (A_i)$ if ${A_i}$ are pairwise disjoint.
3. $forall A in cal(A)_0 space mu_0 (A) >= 0$

*Remark*. When building $m$ on $RR$, we did _not_ have a proper pre-measure. Our "algebra" of sets was open intervals (not closed under complement).

*Definition 3*. Let $X$ be a set, $cal(A)_0$ be an algebra of sets, and $mu_0 : cal(A)_0 -> RR$ be a premeasure. Then the outer measure induced by $mu_0$ is $mu^* : 2^X -> RR$
$
  mu^* (A) = inf { sum_(i=1)^infinity mu_0 (A_i) : union.big A_i "cover" A }
$

*Remark*. Outer measure still satisfies
1. Monotonicity: $A subset.eq B => mu^* (A) <= mu^* (B)$.
2. Subadditivity: $mu^* (A union B) <= mu^* (A) + mu^* (B)$.

*Definition 4 (Caratheodory Condition)*. $A subset.eq X$ is called $mu$-measurable if $forall B subset.eq X$, then $mu^* (B) = mu^* (B inter A) + mu^* (B without A)$.

*Theorem 1*. If $cal(A)$ is a collection of $mu$-measurable sets, $cal(A)$ is a $sigma$-algebra.

*Theorem 2*. $cal(A)_0 subset.eq cal(A)$, and $forall A in cal(A)_0 space mu^* (A) = mu_0 (A)$.

*Definition 5*. A _probability space_ is a measure space where $mu(X) = 1$.

*Remark*. A measure on a finite space is exactly equivalent to the pre-measure, because every algebra is a $sigma$-algebra.

*Definition 6*. $x in "supp"(mu)$ if for all $epsilon > 0$, $mu((x - epsilon, x + epsilon)) > 0$.

// TODO
// define product measure
// define pushforward

== Bernoulli Measure
*Definition 1*. Define the space of sequences $Sigma_d$ where elements are bi-directional infinite sequences $(x_i)_(i in ZZ)$, where each $x_i in {0, 1, ..., d - 1}$.

*Remark*. We may easily define $Sigma_d^+$, where the sequences are not bi-directional (i.e., elements are $(x_i)_(i in NN)$).

*Definition 2*. Fix $w = w_(-n), w_(-(n-1)) ... w_(n-1) w_n$. The _cylinder set_ of $w$ is
$
  C_w = {(x_n)_(n in ZZ) : x_i = w_i space forall abs(i) <= n}
$

*Definition 3*. Fix $p = (p_0, ..., p_(lambda-1))$ such that $sum_(i=0)^(lambda-1) p_i = 1$ and $forall i space p_i >= 0$. Then define the _pre-measure_ as
$
  mu_0 (C_w) = product_(i=-n)^n p w_i
$

*Remark*. We may intuitionally think of each $p_i$ as _probability weight_.

*Remark*. From this pre-measure, we may follow the traditional Caratheodory construction to produce _Bernoulli measure_.

== $L^p$ Spaces
*Definition 1*. Define $f ~ g$ if and only if $f(x) = g(x)$ for almost every $x$.

*Remark*. If $f, g$ are continuous and $f ~ g$, then $f = g$.

*Definition 2*. Fix $p >= 1$. Let $L^p (X, mu)$ denote the space of _equivalence classes_ of integrable functions $f: X -> RR$ such that $integral_X abs(f)^p dif mu < infinity$.

*Definition 3*. Define the norm
$
  norm(f)_(L^p) = (integral_X abs(f)^p dif mu)^(1/p)
$

*Definition 4*. $f: RR -> RR$ is _convex_ if and only if $forall a, b in RR$ and $t in [0, 1]$, then $f(t a + (1 - t)) <= t f(a) + (1 - t) f(b)$.

*Lemma 1*. If $f in CC^2$ and $f'' (x) >= 0$, then $f$ is convex.

*Theorem 1 (Jensen's Inequality)*. Let $(X, mu, cal(A))$ be a probability space, $g: X -> RR$ be measurable, and $phi: RR -> RR$ be $CC^2$ and convex. Then
$
  phi(integral_X g dif mu) <= integral_X phi(g(x)) dif mu
$

*Theorem 2*. If $(X, mu, cal(A))$ is a measure space, then $L^p (X, mu)$ is complete.

*Theorem 3*. If $f_n -> f$ in $L^p$, then there exists a subsequence $f_n_k -> f$ almost everywhere.

*Remark*. There exists a sequence (the _typewriter sequence_) that _does_ converge in $L^p$, but _does not_ converge almost everywhere.

*Theorem 4 (Young's Inequality)*. For $1 < p < infinity$ and $1/p + 1/q = 1$, then for every $a, b >= 0$, then $a b <= a^p / p + b^q / q$.

*Theorem 5 (Holder's Inequality)*. Let $1 < p < infinity$ and $1/p + 1/q = 1$. Then if $f in L^p (X, mu)$ and $g in L^q (X, mu)$, then
$
  integral_X abs(f g) dif mu <= norm(f)_(L^p) norm(g)_(L^q)
$

// *TODO*: Cauchy-Schwartz inequality. Specific case of Holder.

== Hilbert Spaces and $L^2$ Spaces
*Definition 1*. $cal(H)$ is a Hilbert space if it is a vector space $X$ with an inner product $ip(dot, dot) : X times X -> CC$ such that
1. #block[
  $ip(dot, dot)$ is bilinear and symmetric.
  #enum(
    numbering: "a)",
    [$ip(f_1 + f_2, g) = ip(f_1, g) + ip(f_2, g)$],
    [$ip(f, g_1 + g_2) = ip(f, g_1) + ip(f, g_2)$],
    [$ip(lambda f, g) = lambda ip(f, g)$],
    [$ip(f, g) = overline(ip(g, f))$],
  )
]
2. $cal(H)$ is complete with respect to $norm(f) = sqrt(ip(f, f))$.

*Example*. $L^2 (X, mu)$ is a Hilbert space with $ip(f, g) = integral_X f overline(g) dif mu$.

*Definition 2*. The _orthogonal complement_ of $V subset.eq cal(H)$ (denoted as $V^perp$) is defined by ${h in cal(H) : ip(h, v) = 0 space forall v in V}$.

*Theorem 3 (Riesz Representation)*. Let $cal(H)$ be a Hilbert space and $f: cal(H) -> CC$ be a bounded linear functional. Then there exists a unique \ $w = sup_(v != 0) abs(f(v)) / norm(v) in cal(H)$ where $f(v) = ip(v, w)$ for all $v in cal(H)$.

== Orthonormal Sets
*Definition 1*. Let $cal(H)$ be a Hilbert space. Then ${phi_n} subset.eq cal(H)$ is _orthonormal_ if
$
  ip(phi_n, phi_m) = cases(
    0 & "if" m != n,
    1 & "if" m = n
  )
$

*Definition 2*. ${phi_n}$ is _complete orthonormal_ if it is orthonormal and $ip(psi, phi_n) = 0 space forall n$ if and only if $phi = 0$.

*Remark*. An alternative characterization defines ${phi_n}$ as complete orthonormal if $overline("span"{phi_n}) = cal(H)$.

*Theorem 1 (Bessel's Inequality)*. If ${phi_n}$ is orthonormal, then
$
  norm(psi) >= (sum_n abs(ip(psi, phi_n))^2)^(1/2)
$
...where $norm(psi) = (ip(psi, psi))^(1/2)$.

*Theorem 2 (Parseval)*. If ${phi_n}$ is complete orthonormal, and $psi in cal(H)$,
$
  psi = sum_n ip(psi, phi_n) phi_n
$

*Corollary*. Equality holds in Theorem 1 if ${phi_n}$ is complete orthonormal.

*Example 1*. The _Fourier basis_ $phi_n (x) = e^(2 pi i n x)$ for $n in ZZ$ is a complete orthonormal set for $L^2 ([0, 1), m)$.

== Ergodic and Spectral Theory
*Definition 1*. Let $(X, cal(A), mu)$ be a probability space. $T: X -> X$ is called _$mu$-preserving_ if for every measurable set $A subset.eq X$, then $mu(T^(-1) (A)) = mu(A)$.

*Definition 2*. Let $T: X -> X$ be $mu$-preserving on $(X, cal(A), mu)$. Then the operator $U_T : L^2 (X, mu) -> L^2 (X, u)$ defined by $U_T (f) := f compose T$ is called the _Koopman operator_ associated to $T$.

*Lemma 1*. For all $f, g in L^2 (X, mu)$, then $ip(f, g) = ip(U_T (f), U_T (g))$.

*Definition 3*. Let $cal(H)$ be a Hilbert space and $phi.alt: cal(H) -> cal(H)$ be an operator. $phi.alt$ is _unitary_ if $ip(v, w) = ip(phi.alt(v), phi.alt(w))$ for all $v, w in cal(H)$.

*Definition x*. If $phi.alt in cal(B)(cal(H))$, then $lambda in "Spec"(phi.alt)$ if and only if $phi.alt - lambda I d$ does _not_ have a bounded inverse.

*Definition x*. $A subset.eq X$ is called $T$-invariant if $A = T^(-1) (A)$.

*Definition x*. $T$ is called _ergodic_, or _irreducible_, if every $T$-invariant subset $A$ has $mu(A) = 0$ or $mu(A) = 1$.

*Theorem (Von Neumann Ergodicity Criterion)*. $T$ is ergodic if and only if $cal(U)_T$ has $1$ as an eigenvalue with multiplicity $1$.

*Theorem (Von Neumann)*. Let $cal(I) (T)$ denote the vector space of $T$-invariant functions. TODO

*Definition x*. $T$ is called _mixing_ if $forall A, B subset.eq X$, then $mu(A inter T^(-1) (B))$ converges to $mu(A) mu(B)$.

*Lemma*. If $T$ is mixing, then $T$ is ergodic.
TODO

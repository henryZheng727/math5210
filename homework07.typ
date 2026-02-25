#set page(margin: 0.75in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 6
  Henry Zheng
]
#pagebreak()

== Problem 1
If $f$ and $g$ are measurable functions, show that $h(x) := max{f(x), g(x)}$ is measurable. Conclude that if $f: E -> RR$ is measurable, then there exist nonnegative measurable functions $f_+$ and $f_-$ such that $f = f_+ - f_-$. Hint: Write $f_+ = max{f(x), 0}$ and find a similar expression for $f_-$.
#line(length: 100%)

We argue if $f$ and $g$ are measurable, $h(x) := max{f(x), g(x)}$ is measurable.
#pad(x: 20pt)[
  Let $a in RR$. Note that it suffices to prove that $h^(-1) ((a, infinity))$ is measurable. Further note that
  $
    h^(-1) ((a, infinity)) = {x : max{(f(x), g(x))} > a} = \
    f^(-1) ((a, infinity)) union g^(-1) ((a, infinity))
  $
  ...and as both are measurable, and the finite union of measurable sets is measurable, then $h^(-1) ((a, infinity))$ is measurable.
]

We argue if $f$ is measurable, there exist nonnegative measurable functions $f_+$ and $f_-$ such that $f = f_+ - f_-$.
#pad(x: 20pt)[
  Note that the zero function is de-facto measurable.

  Let $f_+ = max{f(x), 0}$. Let $f_- = max{-f(x), 0}$. We argue $f = f_+ - f_-$.

  We exhaustively handle all cases (i.e., $f(x) < 0$ and $f(x) >= 0$).

  Suppose $f(x) < 0$. Then
  $
    f_+ (x) - f_- (x) = max{f(x), 0} - max{-f(x), 0} = 0 - (-f(x)) = f(x)
  $

  Suppose $f(x) >= 0$. Then
  $
    f_+ (x) - f_- (x) - max{f(x), 0} + max{-f(x), 0} = f(x) - 0 = f(x)
  $
]
#pagebreak()

== Problem 2
Show that the set of simple functions on a measurable set $E$ is closed under addition and multiplication, and that
$
  integral_E phi.alt + psi dif m = integral_E phi.alt dif m + integral_E psi dif m
$
#line(length: 100%)

We argue the set of simple functions on a measurable set $E$ is closed under addition.
#pad(x: 20pt)[
  Let $f$ and $g$ be simple functions on $E$. Then ${f(x) : x in E}$ and ${g(x) : x in E}$ both take finitely many values. Consequently,
  $
    abs({f(x) + g(x) : x in E}) <= abs({f(x) : x in E} times {g(x) : x in E})
  $
  ...which is also finite.
]

We argue the set of simple functions on a measurable set $E$ is closed under multiplication.
#pad(x: 20pt)[
  Let $f$ and $g$ be simple functions on $E$. Then ${f(x) : x in E}$ and ${g(x) : x in E}$ both take finitely many values. Consequently,
  $
    abs({f(x) dot g(x) : x in E}) <= abs({f(x) : x in E} times {g(x) : x in E})
  $
  ...which is also finite.
]

We argue that $integral_E phi.alt + psi dif m = integral_E phi.alt dif m + integral_E psi dif m$.
#pad(x: 20pt)[
  Let
  $
    phi.alt = sum_(i=1)^n a_phi.alt_i chi_A_i
    quad quad
    psi = sum_(i=1)^n a_psi_i chi_B_i
  $

  We've previously defined integration of a simple function.
  $
    integral_E sum a_i chi_i dif m = sum a_i m(A_i)
  $

  Finally, note that
  $
    integral_E phi.alt + psi = sum phi.alt(x) + psi(x) dot m(C_i)
  $
  ...where $C_i$ is the interval at which $phi.alt + psi$ retains its respective value for $i$. Because of the additivity of the summation, it thus suffices to prove that
  $
    & sum phi.alt(x) m(C_i) = sum phi.alt(x) m(A_i) <==> \
    & sum m(C_i) = sum m(A_i) <==> \
    & union C_i = union A_i
  $
  ...which is definitionally true, as they both cover $E$.
]
#pagebreak()

== Problem 3
If $(X, cal(A), mu)$ is a measure space such that $mu(X) < infinity$, similarly define the class of simple functions as finite combinations of characteristic functions of measurable sets, and the upper and lower integral of a nonnegative, bounded function $f$ as
$
  inf{integral_E phi.alt dif mu : phi.alt "simple", phi.alt >= f}
  wide
  sup{integral_E phi.alt dif mu : phi.alt "simple", phi.alt <= f}
$
Then say that $f$ is $mu$-integrable if these values agree.
+ Show that every bounded, nonnegative function $f: RR -> RR$ is integrable with respect to the Dirac-$delta$ measure $delta_x$ on the $sigma$-algebra of all subsets of $RR$. What is $integral_RR f dif delta_x$?
+ Show that if $f: [a, b] -> RR$ is $m$-integrable, then $f$ is $mu_A$ integrable for any subset $A subset [0, 1]$ with $m(A) > 0$ (recall the conditional measures from the previous homework). Express $integral_[a, b] f dif mu_A$ in terms of $integral_[a, b] f dif m$ and $m(A)$.
+ If the set $X = {1, ..., n}$ is given the counting measure $c$ on the $sigma$-algebra of all subsets of ${1, ..., n}$, show that every bounded nonnegative function is integrable, and compute $integral_X f dif c$.
#line(length: 100%)

1. #block[
  For any simple function $phi.alt = sum_(i=1)^n a_i chi_(A_i)$, we have
  $
    integral_RR phi.alt dif delta_x = sum_(i=1)^n a_i delta_x (A_i) = sum_(i : x in A_i) a_i = phi.alt(x)
  $
  since $delta_x (A_i) = 1$ if $x in A_i$ and $0$ otherwise. Thus integrating a simple function against $delta_x$ evaluates it at $x$.

  Now let $f: RR -> RR$ be bounded and non-negative, with upper bound $M$. For any simple $phi.alt >= f$ we have $phi.alt(x) >= f(x)$, so the upper integral is $>= f(x)$. Conversely, for any $epsilon > 0$, the simple function
  $
    phi.alt^* = (f(x) + epsilon) chi_({x}) + M chi_(RR without {x})
  $
  satisfies $phi.alt^* >= f$ and $integral phi.alt^* dif delta_x = f(x) + epsilon$. Thus the upper integral equals $f(x)$.

  For any simple $psi <= f$ we have $psi(x) <= f(x)$, so the lower integral is $<= f(x)$. For any $epsilon > 0$ (with $epsilon < f(x)$; otherwise use $psi = 0$), the simple function
  $
    psi^* = (f(x) - epsilon) chi_({x})
  $
  satisfies $psi^* <= f$ (since $psi^*(y) = 0 <= f(y)$ for $y != x$ and $psi^*(x) = f(x) - epsilon <= f(x)$) and $integral psi^* dif delta_x = f(x) - epsilon$. Hence the lower integral equals $f(x)$.

  Since both agree, $f$ is $delta_x$-integrable and $integral_RR f dif delta_x = f(x)$.
]

2. #block[
  Recall that the conditional measure is defined $mu_A (B) = m(A inter B) / m(A)$ for a measurable set $B subset.eq [a, b]$. For a simple function $phi.alt = sum_(i=1)^n a_i chi_(C_i)$:
  $
    integral_([a, b]) phi.alt dif mu_A = sum_(i=1)^n a_i mu_A (C_i) = 1/m(A) sum_(i=1)^n a_i m(A inter C_i) = 1/m(A) integral_A phi.alt dif m
  $

  For $mu_A$-integrability: given $epsilon > 0$, since $f$ is $m$-integrable there exist simple functions $phi.alt <= f <= psi$ on $[a, b]$ with $integral_([a, b]) (psi - phi.alt) dif m < epsilon dot m(A)$. Then
  $
    integral_([a, b]) psi dif mu_A - integral_([a, b]) phi.alt dif mu_A = 1/m(A) integral_A (psi - phi.alt) dif m <= 1/m(A) integral_([a, b]) (psi - phi.alt) dif m < epsilon
  $
  so the upper and lower $mu_A$-integrals agree, and $f$ is $mu_A$-integrable. The formula is:
  $
    integral_([a, b]) f dif mu_A = 1/m(A) integral_A f dif m
  $
]

3. #block[
  Since $X = {1, ..., n}$ is finite, any function $f: X -> [0, infinity)$ takes at most $n$ values and is therefore simple (and thus integrable). Explicitly, $f = sum_(k=1)^n f(k) chi_{k}$, so:
  $
    integral_X f dif c = sum_(k=1)^n f(k) c({k}) = sum_(k=1)^n f(k)
  $
]
#pagebreak()

== Problem 4
Show that if $f_n: E -> RR$ is a sequence of functions defined on a Lebesgue measurable set $E subset RR$ with $m(E) < infinity$, and $f_n (x) -> f(x)$ almost everywhere with $f$ measurable #footnote[In fact, $f$ will always be measurable], then for every $epsilon, delta > 0$, there is some $A subset E$ and $N in NN$ such that $m(E \\ A) < epsilon$ and if $n >= N$ and $x in A$, $abs(f_n (x) - f(x)) < delta$. Hint: The set of points for which $f_n (x) -> f(x)$ can be written as
$
  inter_delta union_N inter_(n >= N) {x : abs(f_n (x) - f(x)) < delta}
$
For every $delta$, the union must have full measure in $E$.
#line(length: 100%)
Fix $epsilon, delta > 0$. For each $N in NN$, define
$
  E_(N, delta) = inter_(n >= N) {x in E : abs(f_n (x) - f(x)) < delta}
$
Note that $E_(N, delta)$ is increasing in $N$. The set of points where $f_n -> f$ equals $inter_delta union_N E_(N, delta)$. Since $f_n -> f$ almost everywhere on $E$, for each fixed $delta$ the set $union_N E_(N, delta)$ contains all but a null set of $E$, so $m(E without union_N E_(N, delta)) = 0$.

By continuity of measure from below (applicable since $m(E) < infinity$):
$
  m(E_(N, delta)) -> m(union_N E_(N, delta)) = m(E) quad "as" N -> infinity
$
Thus $m(E without E_(N, delta)) = m(E) - m(E_(N, delta)) -> 0$, so $exists N in NN$ with $m(E without E_(N, delta)) < epsilon$.

Set $A = E_(N, delta)$. Then $m(E without A) < epsilon$, and by definition of $E_(N, delta)$, for all $x in A$ and all $n >= N$, $abs(f_n (x) - f(x)) < delta$.
#pagebreak()

== Problem 5
If $f$ is a complex valued-function, define the integral of $f$ to be the integral of its real part plus $i$ times the integral of its imaginary part. Show that if $f, g: [a, b] -> CC$ are bounded measurable functions, then
$
  chevron f, g chevron.r := integral_([a, b]) f macron(g) dif m
$
satisfies
+ $chevron f_1 + f_2, g chevron.r = chevron f_1, g chevron.r + chevron f_2, g chevron.r$
+ $chevron f, g chevron.r = overline(chevron g \, f chevron.r)$
+ $chevron c f, g chevron.r = c chevron f, g chevron.r$ for all $c in CC$
+ $chevron f, f chevron.r >= 0$ and equality holds if and only if $f = 0$ almost everywhere
What is the formula for $chevron dot, dot chevron.r$ in the case of the counting measure on ${1, ..., n}$?
#line(length: 100%)
We verify each property.

+ *Additivity.* By linearity of the integral:
  $
    chevron f_1 + f_2, g chevron.r
    = integral_([a, b]) (f_1 + f_2) macron(g) dif m
    = integral_([a, b]) f_1 macron(g) dif m + integral_([a, b]) f_2 macron(g) dif m
    = chevron f_1, g chevron.r + chevron f_2, g chevron.r
  $

+ *Conjugate symmetry.* Complex conjugation commutes with integration for bounded measurable functions (since $overline(integral (u + i v) dif m) = integral u dif m - i integral v dif m = integral macron((u + i v)) dif m$). So:
  $
    overline(chevron g \, f chevron.r)
    = overline(integral_([a, b]) g macron(f) dif m)
    = integral_([a, b]) macron(g macron(f)) dif m
    = integral_([a, b]) macron(g) f dif m
    = chevron f, g chevron.r
  $

+ *Homogeneity.* By linearity of the integral:
  $
    chevron c f, g chevron.r = integral_([a, b]) c f macron(g) dif m = c integral_([a, b]) f macron(g) dif m = c chevron f, g chevron.r
  $

+ *Positive-definiteness.* Since $f macron(f) = abs(f)^2 >= 0$:
  $
    chevron f, f chevron.r = integral_([a, b]) abs(f)^2 dif m >= 0
  $
  Equality holds iff $abs(f)^2 = 0$ almost everywhere, iff $f = 0$ almost everywhere.

For the counting measure on ${1, ..., n}$ (using the result of Problem 3.3):
$
  chevron f, g chevron.r = sum_(k=1)^n f(k) overline(g(k))
$

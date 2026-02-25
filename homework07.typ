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
    f^(-1) ((a, infinity)) union g^(-1) ([a, infinity))
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
    f_+ (x) - f_- (x) = max{f(x), 0} + max{-f(x), 0} = 0 + f(x) = f(x)
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
// todo
#pagebreak()


== Problem 4
Show that if $f_n: E -> RR$ is a sequence of functions defined on a Lebesgue measurable set $E subset RR$ with $m(E) < infinity$, and $f_n (x) -> f(x)$ almost everywhere with $f$ measurable #footnote[In fact, $f$ will always be measurable], then for every $epsilon, delta > 0$, there is some $A subset E$ and $N in NN$ such that $m(E \\ A) < epsilon$ and if $n >= N$ and $x in A$, $abs(f_n (x) - f(x)) < delta$. Hint: The set of points for which $f_n (x) -> f(x)$ can be written as
$
  inter_delta union_N inter_(n >= N) {x : abs(f_n (x) - f(x)) < delta}
$
For every $delta$, the union must have full measure in $E$.
#line(length: 100%)
// todo
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
// todo



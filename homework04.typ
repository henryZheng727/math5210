#set page(margin: 0.75in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Fall 2025: Homework 3
  Henry Zheng
]

If $X$ is a metric space, say that a function $f: X -> RR$ is _$theta$-Holder_ if and only if there exists $C > 0$ such that $abs(f(x) - f(y)) <= C d(x, y)^theta$. $theta$ is called a _Holder exponent_ and $C$ is called a _Holder constant_ for $f$.
#pagebreak()

== Problem 1
Give an example of a function on $[0, 1]$ which is $theta$-Holder for some $theta > 0$ but not Lipschitz continuous. Prove that your answer satifies both properties.
#line(length: 100%)
// todo
#pagebreak()

== Problem 2
Fix $theta, C > 0$. Show that the set of functions which are $theta$-Holder and for which $C$ is a Holder constant is equicontinuous.
#line(length: 100%)
// todo
#pagebreak()

== Problem 3
Show that if $f: [0, 1] -> RR$ is $theta$-Holder for some $theta > 1$, then $f$ is a constant function. _Hint_: Can you characterize constant functions using derivatives?

Let $Omega_m$ be the sequence space on $m$ symbols ${0, 1, ..., m-1}$, $ell$ be the function $ell((x_i), (y_i)) = inf {abs(i): x_i != y_i}$ and $d$ be the metric
$
  d((x_i), (y_i)) = 2^(-ell((x_i), (y_i))
$
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Show that if $f: Omega_m -> RR$ is a function, and
$
  "var"_n (f) = sup_(ell((x_i), (y_i)) >= n) abs(f((x_i)) - f((y_i)))
$
then $f$ is continuous if and only if $"var"_n (f) -> 0$ as $n -> infinity$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
Show that $f$ is $theta$-Holder for some $theta > 0$ if and only if there exists some $0 < lambda < 1$ and $C > 0$ such that $"var"_n (f) <= C lambda^n$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 6
If $cal(F)$ is a family of functions and $"var"_n (cal(F)) := sup {"var"_n (f) : f in cal(F)}$, show that $cal(F)$ is equicontinuous if and only if $"var"_n (cal(F)) -> 0$ as $n -> infinity$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 7
For simplicity, assume $m = 2$. Show that if $f_i ((x_n)) = (1 / i) dot sum_(n=0)^(i-1) x_n$, then $f_i$ is continuous for every $i$ and $(f_i)$ is $C^0$-bounded, but $(f_i)$ has no convergent subsequence.
#line(length: 100%)
// todo

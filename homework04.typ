#set page(margin: 0.75in)
#set text(size: 13pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Fall 2025: Homework 4
  Henry Zheng
]

If $X$ is a metric space, say that a function $f: X -> RR$ is _$theta$-Holder_ if and only if there exists $C > 0$ such that $abs(f(x) - f(y)) <= C d(x, y)^theta$. $theta$ is called a _Holder exponent_ and $C$ is called a _Holder constant_ for $f$.
#line(length: 100%)

Let $Omega_m$ be the sequence space on $m$ symbols ${0, 1, ..., m-1}$, $ell$ be the function $ell((x_i), (y_i)) = inf {abs(i): x_i != y_i}$ and $d$ be the metric
$
  d((x_i), (y_i)) = 2^(-ell((x_i), (y_i))
$
#pagebreak()

== Problem 1
Give an example of a function on $[0, 1]$ which is $theta$-Holder for some $theta > 0$ but not Lipschitz continuous. Prove that your answer satisfies both properties.
#line(length: 100%)

Let $f(x) = sqrt(x)$.

We argue $f$ is $theta$-Holder for some $theta > 0$.
#pad(x: 20pt)[
  Let $theta = 1/2$ and $C = 1$. Then we seek to prove for all $x, y in [0, 1]$
  $
    abs(sqrt(x) - sqrt(y)) <= sqrt(abs(x - y))
  $

  Assume, without loss of generality, that $x > y$. Note further that squaring preserves order. Thus, it suffices to prove
  $
    (sqrt(x) - sqrt(y))^2 <= sqrt(x - y)^2 & <==> \
    x - 2sqrt(x y) + y <= x - y & <==> \
    y <= sqrt(x y)
  $

  Since $y <= 1$, then $y <= sqrt(y)$ and thus obviously $y <= sqrt(x y)$.
]

We argue $f$ is not Lipschitz-continuous.
#pad(x: 20pt)[
  Suppose, for the sake of contradiction, $sqrt(x)$ were Lipschitz-continuous. Then
  $
    exists M > 0 : forall x, y in [0, 1] space abs(sqrt(x) - sqrt(y)) <= M dot abs(x - y)
  $

  Set $y = 0$ and fix $x > 0$. Then it must be true that $sqrt(x) <= M dot x$; i.e., $1/sqrt(x) <= M$.

  However, this does not hold. As $x -> 0$, then $1/sqrt(x) -> infinity$. Therefore, it cannot be bounded above by $M$.
]
#pagebreak()

== Problem 2
Fix $theta, C > 0$. Show that the set of functions which are $theta$-Holder and for which $C$ is a Holder constant is equicontinuous.
#line(length: 100%)

Name such a set $S$, for convenience.

Let $epsilon > 0$. Choose $delta = (1/C dot epsilon)^(1/theta)$.

Let $x, y in X$ such that $d(x, y) < delta$. Let $f in S$. Then
$
  abs(f(x) - f(y)) & <= C d(x, y)^theta \
  & < C ((1 / C dot epsilon)^(1/theta))^theta \
  & = epsilon
$
#pagebreak()

== Problem 3
Show that if $f: [0, 1] -> RR$ is $theta$-Holder for some $theta > 1$, then $f$ is a constant function. _Hint_: Can you characterize constant functions using derivatives?
#line(length: 100%)

If $f$ is $theta$-Holder for some $theta > 1$, then $exists epsilon$ such that for $x, y in [0, 1]$
$
  abs(f(x) - f(y)) <= C dot abs(x - y) dot abs(x - y)^epsilon => & \
  abs(f(x) - f(y)) / abs(x - y) <= C dot abs(x - y)^epsilon => & \
  lim_(x -> y) abs((f(x) - f(y))/(x - y)) <= C dot lim_(x -> y) abs(x - y)^epsilon => & \
  lim_(x -> y) abs((f(x) - f(y))/(x - y)) <= 0 &
$

By the Mean Value Theorem, then $f'$ is bounded above by $0$, and thus, $f$ is a constant function.
#pagebreak()

== Problem 4
Show that if $f: Omega_m -> RR$ is a function, and
$
  "var"_n (f) = sup_(ell((x_i), (y_i)) >= n) abs(f((x_i)) - f((y_i)))
$
then $f$ is continuous if and only if $"var"_n (f) -> 0$ as $n -> infinity$.
#line(length: 100%)

We argue if $f$ is continuous, then $n -> infinity$ implies $"var"_n (f) -> 0$.
#pad(x: 20pt)[
  By the sequential definition of continuity, if $x_n -> x$, then $f(x_n) -> f(x)$.

  Let $(x_i), (y_i) in Omega_m$. We are given that $n -> infinity$, and thus, $(x_i)$ and $(y_i)$ both converge to some sequence $(x)$.

  By the sequential definition of continuity, then, $"var"_n (f)$ as $n -> infinity$ will be $sup_(ell((x_i), (y_i)) >= n) abs(f((x)) - f((x))) = 0$.
]

We argue if $n -> infinity$ implies $"var"_n (f) -> 0$, then $f$ is continuous.
#pad(x: 20pt)[
  We again apply the sequential definition of continuity.

  Let $(x_i), (y_i)$ be sequences in $Omega_m$ converging to $(x)$. We then know that $ell((x_i), (y_i)) = infinity$. By assumption, then $"var"_n (f) -> 0$. This must mean that $abs(f((x_i)) - f((y_i))) -> 0$, i.e., $f((x_i))$ and $f((y_i))$ both converge to the same value.

  Finally, it is impossible for $f((x_i))$ and $f((y_i))$ to be anything other than $f((x))$. We have made no assumptions about $(x_i)$ and $(y_i)$, which demonstrates that _all_ sequences converging to $(x)$ will have their image converge. Take the constant sequence consisting only of $(x)$. Obviously, then its image must converge to $f((x))$. Therefore, _every_ such sequence also converges to this point. Therefore, $f$ is continuous.
]
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

#set page(margin: 0.75in)
#set text(size: 11.5pt)
#show math.equation.where(block: false): set math.frac(style: "skewed")

#align(center)[
  = Analysis Spring 2026: Homework 11
  Henry Zheng
]
#pagebreak()

#set enum(numbering: "(a)", start: 1)

== Problem 1
Let $pi : {0, ..., n - 1} -> {0, ..., n - 1}$ be a cyclic permutation (i.e., $pi(k) = k + 1 med (mod n)$), so $pi$ preserves the counting measure $gamma$. Find the spectrum of $U_pi$ acting on $L^2 ({0, ..., n - 1}, gamma)$. _Hint_: You can express this operator as a finite-dimensional matrix.
#line(length: 100%)
// todo
#pagebreak()

== Problem 2
Let $ell^2 (ZZ) = L^2 (ZZ, gamma)$ be the set of square summable sequences, and recall that $delta_n (k) := 1$ if $k = n$ and $0$ otherwise is a complete orthonormal set as $n$ ranges over $ZZ$. Define the operator $phi.alt ((v_n))_k = v_(k + 1)$.
+ Show that $phi.alt$ is unitary and invertible.
+ Compute how $phi.alt$ acts on the complete orthonormal set ${delta_n}$.
+ Use this to compute the spectrum of $phi.alt$. _Hint_: Show that if $abs(lambda) = 1$ and $(phi.alt - lambda I d)(v) = delta_0$ for some $v$, then infinitely many components of $v$ have modulus 1 (a contradiction of square summability).
#line(length: 100%)
// todo
#pagebreak()

== Problem 3
Show using direct calculation that if $f in L^2 ([0, 1), m)$ and $R_alpha (x) = x + alpha med (mod 1)$ is the rotation transformation by an irrational angle $alpha$, then $1 / N sum_(n=0)^(N-1) U_(R_alpha)^n f -> integral f dif m$ in $L^2 ([0, 1], m)$. _Hint_: Use the Fourier decomposition of $f$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 4
Let $phi.alt$ be an invertible unitary operator on a Hilbert space $cal(H)$. A subspace $V$ is called _bi-invariant_ if $phi.alt (V) = V$. Show that if $V$ is bi-invariant, then so is $V^tack.t$.
#line(length: 100%)
// todo
#pagebreak()

== Problem 5
Consider $Sigma_2$ to be the 2-sided shift space on the symbols $0$ and $1$, and let $mu$ be the $(1/2 , 1/2)$-Bernoulli measure. Define $phi_n : Sigma_2 -> RR$ by $phi_n ((x_k)) = (- 1)^(x_n)$. Show that ${phi_n}$ together with the constant function $bold(1)$ form an orthonormal set for $L^2 (Sigma_2 , mu)$. \*Show that it is not complete.
#line(length: 100%)
// todo
#pagebreak()

== Problem 6 \*
Combine problems 2, 4 and 5 to compute the spectrum of the shift operator $sigma : Sigma_2 -> Sigma_2$ as a measure-preserving transformation of $Sigma_2$ with the $(1/2, 1/2)$-Bernoulli measure.
#line(length: 100%)

I did not complete this question, as it was not required.

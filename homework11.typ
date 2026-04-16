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

Since $gamma$ is counting measure, $L^2({0,...,n-1}, gamma) tilde.equiv CC^n$ with the standard inner product. The operator $U_pi$ acts by composition: $(U_pi f)(k) = f(pi(k)) = f(k + 1 med (mod n))$.

We compute how $U_pi$ acts on the standard basis $e_j (k) = delta_(j k)$.
#pad(x: 20pt)[
  $(U_pi e_j)(k) = e_j(k + 1 med (mod n)) = delta_(j, k+1 med (mod n)) = e_(j-1 med (mod n))(k)$, so $U_pi e_j = e_(j-1 med (mod n))$. Thus $U_pi$ is a cyclic shift matrix on $CC^n$.
]

We find the eigenvalues.
#pad(x: 20pt)[
  If $U_pi v = lambda v$, then $v(k + 1) = lambda v(k)$ for all $k$ (indices mod $n$), giving $v(k) = lambda^k v(0)$. Periodicity requires $v(n) = v(0)$, hence $lambda^n = 1$. Conversely, for each $n$-th root of unity $lambda_m = e^(2 pi i m slash n)$ ($m = 0, ..., n-1$), the vector $v^((m))(k) = e^(2 pi i m k slash n)$ is a nonzero eigenvector (and these give $n$ linearly independent eigenvectors).

  Therefore $sigma(U_pi) = {e^(2 pi i m slash n) : m = 0, 1, ..., n-1}$, the $n$-th roots of unity.
]
#pagebreak()

== Problem 2
Let $ell^2 (ZZ) = L^2 (ZZ, gamma)$ be the set of square summable sequences, and recall that $delta_n (k) := 1$ if $k = n$ and $0$ otherwise is a complete orthonormal set as $n$ ranges over $ZZ$. Define the operator $phi.alt ((v_n))_k = v_(k + 1)$.
+ Show that $phi.alt$ is unitary and invertible.
+ Compute how $phi.alt$ acts on the complete orthonormal set ${delta_n}$.
+ Use this to compute the spectrum of $phi.alt$. _Hint_: Show that if $abs(lambda) = 1$ and $(phi.alt - lambda I d)(v) = delta_0$ for some $v$, then infinitely many components of $v$ have modulus 1 (a contradiction of square summability).
#line(length: 100%)

1. #block[
    We argue $phi.alt$ is isometric. For any $v in ell^2(ZZ)$,
    $
      norm(phi.alt v)^2 = sum_(k in ZZ) abs(v_(k+1))^2 = sum_(j in ZZ) abs(v_j)^2 = norm(v)^2
    $
    so $phi.alt$ is an isometry. We argue $phi.alt$ is surjective. Given $w in ell^2(ZZ)$, define $v_k = w_(k-1)$; then $norm(v) = norm(w) < infinity$ and $(phi.alt v)_k = v_(k+1) = w_k$. Since $phi.alt$ is a surjective isometry on a Hilbert space, it is unitary, and its inverse is the right shift $(phi.alt^(-1) w)_k = w_(k-1)$.
  ]

2. #block[
    We compute $(phi.alt delta_n)(k) = delta_n (k + 1) = cases(1 & "if" k + 1 = n, 0 & "otherwise") = delta_(n-1)(k)$. Hence $phi.alt delta_n = delta_(n-1)$: the left shift sends each basis element one step to the left.
  ]

3. #block[
    Since $phi.alt$ is unitary, $sigma(phi.alt) subset.eq {abs(lambda) = 1}$ by the spectral theorem for unitary operators.

    We argue every $lambda$ with $abs(lambda) = 1$ lies in $sigma(phi.alt)$.
    #pad(x: 20pt)[
      Suppose for contradiction that $abs(lambda) = 1$ and $lambda in.not sigma(phi.alt)$, so $(phi.alt - lambda op("Id"))$ is surjective. Then there exists $v in ell^2(ZZ)$ with $(phi.alt - lambda op("Id"))v = delta_0$, i.e., $v_(k+1) - lambda v_k = delta_0(k)$ for all $k$.

      For $k != 0$ this gives $v_(k+1) = lambda v_k$. Thus for $k >= 1$: $v_(k+1) = lambda^k v_1$, so $abs(v_(k+1)) = abs(v_1)$ for all $k >= 1$ (since $abs(lambda) = 1$). If $v_1 != 0$, then infinitely many components satisfy $abs(v_(k+1)) = abs(v_1) > 0$, contradicting $v in ell^2(ZZ)$. Hence $v_1 = 0$.

      At $k = 0$: $v_1 - lambda v_0 = 1$, so $v_0 = (v_1 - 1)/lambda = -lambda^(-1)$, giving $abs(v_0) = 1$. For $k <= -1$: $v_0 = lambda v_(-1)$, $v_(-1) = lambda v_(-2)$, etc., so $v_(-m) = lambda^(-m) v_0$ for all $m >= 0$, giving $abs(v_(-m)) = 1$ for all $m >= 0$. This again contradicts $v in ell^2(ZZ)$.

      In either case we reach a contradiction, so $lambda in sigma(phi.alt)$.
    ]

    Therefore $sigma(phi.alt) = {lambda in CC : abs(lambda) = 1}$.
  ]
#pagebreak()

== Problem 3
Show using direct calculation that if $f in L^2 ([0, 1), m)$ and $R_alpha (x) = x + alpha med (mod 1)$ is the rotation transformation by an irrational angle $alpha$, then $1 / N sum_(n=0)^(N-1) U_(R_alpha)^n f -> integral f dif m$ in $L^2 ([0, 1], m)$. _Hint_: Use the Fourier decomposition of $f$.
#line(length: 100%)

Let $e_k (x) = e^(2 pi i k x)$ for $k in ZZ$ be the standard Fourier basis of $L^2([0, 1), m)$. Write $f = sum_(k in ZZ) hat(f)(k) e_k$ in $L^2$.

We first compute how $U_(R_alpha)$ acts on the Fourier basis.
#pad(x: 20pt)[
  $(U_(R_alpha) e_k)(x) = e_k(x + alpha) = e^(2 pi i k(x + alpha)) = e^(2 pi i k alpha) e_k(x)$, so each $e_k$ is an eigenvector with eigenvalue $e^(2 pi i k alpha)$. Thus $U_(R_alpha)^n e_k = e^(2 pi i k n alpha) e_k$.
]

We now show $norm(1/N sum_(n=0)^(N-1) U_(R_alpha)^n f - integral f dif m)_2 -> 0$.
#pad(x: 20pt)[
  By linearity and Parseval's theorem,
  $
    norm(1/N sum_(n=0)^(N-1) U_(R_alpha)^n f - hat(f)(0))_2^2
    = sum_(k != 0) abs(hat(f)(k))^2 abs(A_(N,k))^2
  $
  where $A_(N,k) = 1/N sum_(n=0)^(N-1) e^(2 pi i k n alpha)$. (Here we used that the $k = 0$ term gives $hat(f)(0) = integral f dif m$ and $A_(N,0) = 1$.)

  For $k != 0$, since $alpha$ is irrational, $e^(2 pi i k alpha) != 1$, and the geometric series formula gives
  $
    abs(A_(N,k)) = 1/N abs((1 - e^(2 pi i k N alpha))/(1 - e^(2 pi i k alpha))) <= 2/(N abs(1 - e^(2 pi i k alpha))) -> 0 quad "as" N -> infinity
  $
  so for each fixed $k != 0$, $abs(hat(f)(k))^2 abs(A_(N,k))^2 -> 0$.

  Since $abs(A_(N,k)) <= 1$ for all $N, k$, each term is bounded by $abs(hat(f)(k))^2$, and $sum_(k != 0) abs(hat(f)(k))^2 <= norm(f)_2^2 < infinity$. By the dominated convergence theorem for sums,
  $
    sum_(k != 0) abs(hat(f)(k))^2 abs(A_(N,k))^2 -> 0 quad "as" N -> infinity
  $
  and thus $1/N sum_(n=0)^(N-1) U_(R_alpha)^n f -> integral f dif m$ in $L^2$.
]
#pagebreak()

== Problem 4
Let $phi.alt$ be an invertible unitary operator on a Hilbert space $cal(H)$. A subspace $V$ is called _bi-invariant_ if $phi.alt (V) = V$. Show that if $V$ is bi-invariant, then so is $V^tack.t$.
#line(length: 100%)

We argue $phi.alt(V^tack.t) subset.eq V^tack.t$.
#pad(x: 20pt)[
  Let $w in V^tack.t$ and $v in V$. Since $phi.alt$ is unitary, $phi.alt^* = phi.alt^(-1)$. Because $V$ is bi-invariant, $phi.alt^(-1)(V) = V$, so $phi.alt^(-1) v in V$. Thus
  $
    chevron.l phi.alt w, v chevron.r = chevron.l w, phi.alt^* v chevron.r = chevron.l w, phi.alt^(-1) v chevron.r = 0
  $
  since $w perp V$. Hence $phi.alt w in V^tack.t$.
]

We argue $V^tack.t subset.eq phi.alt(V^tack.t)$, i.e., $phi.alt^(-1)(V^tack.t) subset.eq V^tack.t$.
#pad(x: 20pt)[
  Let $w in V^tack.t$ and $v in V$. Since $phi.alt(V) = V$, we have $phi.alt v in V$, so $chevron.l w, phi.alt v chevron.r = 0$. As $phi.alt^(-1)$ is also unitary (with $((phi.alt^(-1))^*) = phi.alt$), we get
  $
    chevron.l phi.alt^(-1) w, v chevron.r = chevron.l w, phi.alt v chevron.r = 0
  $
  so $phi.alt^(-1) w in V^tack.t$, i.e., $w in phi.alt(V^tack.t)$.
]

Therefore $phi.alt(V^tack.t) = V^tack.t$, so $V^tack.t$ is bi-invariant.
#pagebreak()

== Problem 5
Consider $Sigma_2$ to be the 2-sided shift space on the symbols $0$ and $1$, and let $mu$ be the $(1/2 , 1/2)$-Bernoulli measure. Define $phi_n : Sigma_2 -> RR$ by $phi_n ((x_k)) = (- 1)^(x_n)$. Show that ${phi_n}$ together with the constant function $bold(1)$ form an orthonormal set for $L^2 (Sigma_2 , mu)$. \*Show that it is not complete.
#line(length: 100%)

We verify that ${bold(1)} union {phi_n}_(n in ZZ)$ is an orthonormal set.
#pad(x: 20pt)[
  Under the $(1/2, 1/2)$-Bernoulli measure, the coordinate functions $x_n$ are i.i.d. Bernoulli$(1/2)$, and coordinates at different indices are independent.

  *$norm(bold(1))_2 = 1$.* $chevron.l bold(1), bold(1) chevron.r = mu(Sigma_2) = 1$.

  *$phi_n perp bold(1)$.* $chevron.l phi_n, bold(1) chevron.r = integral (-1)^(x_n) dif mu = EE[(-1)^(x_n)] = 1/2 (1) + 1/2(-1) = 0$.

  *$norm(phi_n)_2 = 1$.* $chevron.l phi_n, phi_n chevron.r = integral (-1)^(2x_n) dif mu = integral 1 dif mu = 1$.

  *$phi_m perp phi_n$ for $m != n$.* By independence of coordinates,
  $
    chevron.l phi_m, phi_n chevron.r = EE[(-1)^(x_m + x_n)] = EE[(-1)^(x_m)] dot EE[(-1)^(x_n)] = 0 dot 0 = 0.
  $
]

We argue the set is not complete.
#pad(x: 20pt)[
  Fix distinct indices $m, n in ZZ$ and consider $psi = phi_m phi_n$, i.e., $psi((x_k)) = (-1)^(x_m + x_n)$. Then $norm(psi)_2 = 1$ (since $psi^2 = 1$ $mu$-a.e.), so $psi != 0$ in $L^2$.

  We check $psi$ is orthogonal to every element of ${bold(1)} union {phi_k}$.

  $chevron.l psi, bold(1) chevron.r = EE[(-1)^(x_m + x_n)] = EE[(-1)^(x_m)] dot EE[(-1)^(x_n)] = 0$.

  For any $k != m, n$: by independence, $chevron.l psi, phi_k chevron.r = EE[(-1)^(x_m + x_n + x_k)] = EE[(-1)^(x_m + x_n)] dot EE[(-1)^(x_k)] = 0$.

  For $k = m$: $chevron.l psi, phi_m chevron.r = EE[(-1)^(2x_m + x_n)] = EE[1 dot (-1)^(x_n)] = EE[(-1)^(x_n)] = 0$.

  Likewise for $k = n$. Hence $psi$ is orthogonal to every element of the set but is nonzero, so the set is not complete.
]
#pagebreak()

== Problem 6 \*
Combine problems 2, 4 and 5 to compute the spectrum of the shift operator $sigma : Sigma_2 -> Sigma_2$ as a measure-preserving transformation of $Sigma_2$ with the $(1/2, 1/2)$-Bernoulli measure.
#line(length: 100%)

I did not complete this question, as it was not required.

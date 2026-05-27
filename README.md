# Binomial Coefficient Sums

Pascal's rule, symmetry, `Σ C(n, k) = 2ⁿ` and the alternating sum identity.

Formalised in Lean 4 with Mathlib. No `sorry`.

## Proof outline

1. Pascal's rule and symmetry are the defining recursions of `Nat.choose`.
2. The binomial theorem at `x = y = 1` gives `Σ C(n, k) = 2ⁿ`.
3. At `x = -1, y = 1` the left side is `0ⁿ = 0` for `n > 0`.

## Contents

- [`BinomialSums/Basic.lean`](BinomialSums/Basic.lean): the main development
- [`BinomialSums/Examples.lean`](BinomialSums/Examples.lean): small worked examples

Declarations:

- `BinomialSums.pascal`
- `BinomialSums.choose_symm_sub`
- `BinomialSums.sum_choose`
- `BinomialSums.alternating_sum_choose`

## Build

```
lake exe cache get
lake build
```

Toolchain: `leanprover/lean4:v4.33.0-rc1`.

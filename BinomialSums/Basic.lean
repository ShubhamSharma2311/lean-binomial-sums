import Mathlib

/-!
# Sums of binomial coefficients

Both sums come from the binomial theorem, with `x = y = 1` and with `x = -1, y = 1`.
-/

namespace BinomialSums

open Finset

/-- **Pascal's rule.** -/
theorem pascal (n k : ℕ) : (n + 1).choose (k + 1) = n.choose k + n.choose (k + 1) :=
  Nat.choose_succ_succ n k

/-- Symmetry of the binomial coefficients. -/
theorem choose_symm_sub {n k : ℕ} (h : k ≤ n) : n.choose (n - k) = n.choose k :=
  Nat.choose_symm h

/-- The `n`-th row of Pascal's triangle sums to `2ⁿ`. -/
theorem sum_choose (n : ℕ) : ∑ k ∈ range (n + 1), n.choose k = 2 ^ n := by
  have h := (add_pow (1 : ℕ) 1 n).symm
  simpa using h

/-- The alternating sum of a row vanishes for `0 < n`. -/
theorem alternating_sum_choose {n : ℕ} (hn : 0 < n) :
    ∑ k ∈ range (n + 1), (-1 : ℤ) ^ k * n.choose k = 0 := by
  sorry

end BinomialSums

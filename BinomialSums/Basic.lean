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
theorem choose_symm_sub {n k : ℕ} (h : k ≤ n) : n.choose (n - k) = n.choose k := by
  sorry

end BinomialSums

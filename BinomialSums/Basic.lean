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

end BinomialSums

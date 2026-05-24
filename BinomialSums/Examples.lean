import BinomialSums.Basic

namespace BinomialSums

open Finset

example : (5 : ℕ).choose 2 = 10 := by decide

example : ∑ k ∈ range 5, (4 : ℕ).choose k = 16 := sum_choose 4

end BinomialSums

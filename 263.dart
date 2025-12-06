class Solution {
  bool isUgly(int n) {
    if (n == 0) return false;

    for (int prime in [2, 3, 5]) {
      while (n % prime == 0) {
        n ~/= prime;
      }
    }

    return n == 1;
  }
}

void main() {
  Solution s = Solution();
  print(s.isUgly(6));   // true
  print(s.isUgly(8));   // true
  print(s.isUgly(14));  // false
}


// This Dart program checks whether a number is an ugly number — a positive integer whose only prime factors are 2, 3, or 5.

// Here’s how it works:

// If n is 0, it immediately returns false, since 0 is not considered an ugly number.

// Then, the program iterates through the list of prime factors [2, 3, 5].

// For each prime factor, it repeatedly divides n by that prime as long as n is divisible by it (n % prime == 0).
// This step removes all occurrences of 2, then 3, then 5 from n.

// After removing all factors of 2, 3, and 5, if the remaining number n equals 1, it means no other prime factors exist — hence, 
// it’s an ugly number.

// 💡 Examples:

// 6 = 2 × 3 → ✅ Ugly number (only uses 2 and 3)

// 8 = 2 × 2 × 2 → ✅ Ugly number (only uses 2)

// 14 = 2 × 7 → ❌ Not ugly (contains 7, which isn’t 2, 3, or 5)

// This algorithm efficiently determines “ugliness” in O(log n) time by continuously dividing the number.
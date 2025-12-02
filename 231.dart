class Solution {
  bool isPowerOfTwo(int n) {
    if (n <= 0) return false;
    return (n & (n - 1)) == 0;
  }
}

void main() {
  Solution s = Solution();
  print(s.isPowerOfTwo(1));   // true
  print(s.isPowerOfTwo(16));  // true
  print(s.isPowerOfTwo(3));   // false
}

// This Dart program checks whether a given integer n is a power of two using a clever bit manipulation trick.

// Here’s how it works:

// First, it ensures that n is positive — because powers of two are always greater than zero.

// Then, it applies the expression (n & (n - 1)) == 0.
// This works because in binary, a power of two has exactly one bit set to 1 (for example, 1 → 0001, 2 → 0010, 4 → 0100).
// When you subtract 1 from such a number, all the bits after the single 1 flip, and performing a bitwise
// AND (&) clears all bits to zero.
// If the result is 0, it confirms that n had only one set bit — meaning it’s a power of two.
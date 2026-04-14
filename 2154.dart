class Solution {
  int findFinalValue(List<int> nums, int k) {
    int bits = 0;

    for (int n in nums) {
      if (n % k != 0) continue;

      n = n ~/ k; // integer division

      // check if power of 2
      if ((n & (n - 1)) == 0) {
        bits |= n;
      }
    }

    bits += 1;

    return k * (bits & -bits);
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findFinalValue([5, 10, 20, 40], 5)); // Example
}
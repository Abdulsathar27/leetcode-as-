class Solution {
  List<int> countBits(int n) {
    List<int> ans = List.filled(n + 1, 0);

    for (int i = 1; i <= n; i++) {
      ans[i] = ans[i >> 1] + (i & 1);
    }

    return ans;
  }
}

void main() {
  var sol = Solution();
  print(sol.countBits(5)); 
}

// This Dart code efficiently counts the number of set bits (1s)
// in the binary representation of all integers from 0 to a given number n.
// The countBits method initializes a list ans of size n + 1 with zeros.
// It then uses a dynamic programming approach: for each number i from 1 to n,
// it calculates the number of set bits by adding the count for i >> 1 (which is i shifted right by one,
// effectively i / 2) to the least significant bit of i (i & 1). This method leverages the fact that ans[i] is related to ans[i / 2].
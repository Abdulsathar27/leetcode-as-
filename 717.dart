class Solution {
  bool isOneBitCharacter(List<int> bits) {
    int n = bits.length;
    int i = 0;

    while (i < n - 1) {
      if (bits[i] == 0) {
        i += 1;
      } else {
        i += 2;
      }
    }

    return i == n - 1;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.isOneBitCharacter([1, 0, 0])); // true
  print(sol.isOneBitCharacter([1, 1, 1, 0])); // false
}

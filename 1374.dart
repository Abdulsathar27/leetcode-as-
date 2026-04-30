class Solution {
  String generateTheString(int n) {
    // create string with all 'a'
    String s = List.filled(n, 'a').join();

    if (n % 2 == 0) {
      // replace last character with 'b'
      s = s.substring(0, n - 1) + 'b';
    }

    return s;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.generateTheString(4)); // aaab
  print(sol.generateTheString(5)); // aaaaa
}
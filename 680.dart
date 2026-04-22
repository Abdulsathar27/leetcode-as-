class Solution {
  bool validPalindrome(String s) {
    int l = 0;
    int r = s.length - 1;

    while (l < r) {
      if (s[l] != s[r]) {
        return isPalindrome(s, l + 1, r) ||
            isPalindrome(s, l, r - 1);
      }

      l++;
      r--;
    }

    return true;
  }

  bool isPalindrome(String s, int l, int r) {
    while (l < r) {
      if (s[l] != s[r]) {
        return false;
      }

      l++;
      r--;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.validPalindrome("aba"));    // true
  print(sol.validPalindrome("abca"));   // true
  print(sol.validPalindrome("abc"));    // false
}
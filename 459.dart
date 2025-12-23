class Solution {
  bool repeatedSubstringPattern(String s) {
    String ss = s + s;
    return ss.substring(1, ss.length - 1).contains(s);
  }
}

void main() {
  Solution sol = Solution();
  print(sol.repeatedSubstringPattern("abab")); // true
  print(sol.repeatedSubstringPattern("aba"));  // false
}

// This Dart program checks whether a string can be formed by repeating one of its substrings multiple times.
// The idea is based on a clever string trick: when you concatenate the string with itself (`s + s`),
// any repeating pattern inside the original string will appear again in the middle.
// By removing the first and last characters of this doubled string, 
// the code avoids matching the original string trivially at the edges.
// If the original string `s` still appears inside this trimmed version,
// it means `s` is made by repeating a smaller substring.
// If it does not appear, then no such repeating pattern exists, and the function returns false.

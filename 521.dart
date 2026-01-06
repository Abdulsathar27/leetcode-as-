class Solution {
  int findLUSlength(String a, String b) {
    return a == b ? -1 : (a.length > b.length ? a.length : b.length);
  }
}

void main() {
  Solution s = Solution();
  print(s.findLUSlength("aba", "cdc")); 
  print(s.findLUSlength("aaa", "aaa")); 
}

// This Dart program finds the length of the longest uncommon subsequence between two strings.
// The key idea is that if both strings are exactly the same, then no uncommon subsequence exists, so the function returns -1.
// If the strings are different, the longer string itself cannot be a subsequence of the shorter one,
// making it the longest uncommon subsequence by default. Therefore,
// the function simply returns the length of the longer string. 
// This logic avoids complex comparisons and works because subsequences must preserve order and length.
// For example, "aba" and "cdc" are different, so the answer is 3, while "aaa" and "aaa" are identical, resulting in -1.
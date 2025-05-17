class Solution {
  int longestPalindrome(String s) {
     final freq = <String, int>{};
  for (var ch in s.split('')) freq[ch] = (freq[ch] ?? 0) + 1;

  int len = 0;
  bool odd = false;

  for (var c in freq.values) {
    len += c ~/ 2 * 2;
    if (c.isOdd) odd = true;
  }

  return odd ? len + 1 : len;

    
  }
}
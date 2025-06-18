class Solution {
  bool checkPal(String s, int low, int high) {
    while (low < high) {
      if (s[low] != s[high]) return false;
      low++;
      high--;
    }
    return true;
  }

  String longestPalindrome(String s) {
    int n = s.length;
    int maxLength = 1;
    int start = 0;

    for (int i = 0; i < n; i++) {
      for (int j = i; j < n; j++) {
        if (checkPal(s, i, j) && (j - i + 1) > maxLength) {
          start = i;
          maxLength = j - i + 1;
        }
      }
    }

    return s.substring(start, start + maxLength);
  }
}

void main() {
  String s = "babad";
  Solution sol = Solution();
  print(sol.longestPalindrome(s));
}

// This Dart code aims to find the longest palindromic substring within a given string s. 
// It uses a helper function checkPal to efficiently determine if a substring is a palindrome by comparing characters from both ends inwards.
// The longestPalindrome function then iterates through all possible substrings using nested loops, checking each one with checkPal.
// If a substring is found to be a palindrome and is longer than the current maxLength, 
// it updates maxLength and the start index of the longest palindrome found so far. Finally, 
// it returns the substring of s starting from start with the calculated maxLength.
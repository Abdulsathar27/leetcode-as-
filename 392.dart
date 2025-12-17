class Solution {
  bool isSubsequence(String s, String t) {
    if (s.isEmpty) return true;

    int i = 0;
    for (int j = 0; j < t.length; j++) {
      if (s[i] == t[j]) {
        i++;
        if (i == s.length) return true;
      }
    }

    return false;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.isSubsequence("abc", "ahbgdc")); 
  print(sol.isSubsequence("axc", "ahbgdc")); 
}

// This Dart program checks whether one string is a subsequence of another by preserving character 
// order without requiring them to be consecutive. 
// If the string s is empty, it immediately returns true because an empty string is always a subsequence.
// The program uses a pointer i to track the current position in s and loops through each character in t.
// Whenever a matching character is found, the pointer moves forward to look for the next character in s.
// If the pointer reaches the end of s, it means all characters were found in order, so the function returns true;
// otherwise, it returns false after the loop ends.
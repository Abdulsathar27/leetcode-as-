class Solution {
  String truncateSentence(String s, int k) {
    for (int i = 0; i < s.length; i++) {
      if (s[i] == ' ' && --k == 0) {
        return s.substring(0, i);
      }
    }
    return s;
  }
}
void main() {
  Solution sol = Solution();
  String input = "Hello world this is Dart";
  int k = 3;
  print(sol.truncateSentence(input, k)); 
}

// This Dart code defines a Solution class with a truncateSentence method that truncates a string s to contain only the first k words.
// It iterates through the string, and each time it encounters a space, it decrements k.
// When k becomes zero, it means it has found the end of the k-th word, 
// and the method returns the substring from the beginning of the string up to the current position.
// If the loop completes without k reaching zero (i.e., the string has fewer than k words), the entire original string is returned.
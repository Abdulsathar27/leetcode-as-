class Solution {
  int scoreOfString(String s) {
    int answers = 0;
    for (int i = 1; i < s.length; i++) {
      answers += (s.codeUnitAt(i) - s.codeUnitAt(i - 1)).abs();
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.scoreOfString("hello")); // 13
}

// This Dart program computes a score for a string based on the absolute differences
// between the ASCII values of consecutive characters. It loops through the string starting from the second
// character and compares each character with the one before it.
// For each pair, it calculates the absolute difference of their ASCII codes and adds
// that value to a running total. This process continues until all adjacent character pairs have been evaluated.
// The final total represents the string’s score, so for "hello", these differences add up to 13.
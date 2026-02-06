class Solution {
  int reverseDegree(String s) {
    int answers = 0;
    for (int i = 0; i < s.length; i++) {
      int reverse = 26 - (s.codeUnitAt(i) - 'a'.codeUnitAt(0));
      answers += reverse * (i + 1);
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.reverseDegree("abc")); 
}


// This Dart program calculates a custom “reverse degree” score for a lowercase string by assigning each letter
// a reversed alphabetical value and weighting it by its position. 
// For each character, it computes 26 - (current letter position), so 'a' becomes 26, 'b' becomes 25, and 
// so on until 'z' becomes 1. It then multiplies this reversed value by the character’s 1-based index in 
// the string (i + 1) to give more weight to characters that appear later.
// All these weighted values are added together to produce the final score.
// For example, in "abc", the contributions are 26×1, 25×2, and 24×3, which sum up to 148.
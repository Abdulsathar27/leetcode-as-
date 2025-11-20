class Solution {
  String convertToTitle(int columnNumber) {
    String result = "";
    int num = columnNumber;

    while (num > 0) {
      num -= 1;
      int charIndex = num % 26;
      result = String.fromCharCode(65 + charIndex) + result;
      num ~/= 26;
    }

    return result;
  }
}

void main() {
  Solution s = Solution();
  print(s.convertToTitle(1));   
  print(s.convertToTitle(28));   
  print(s.convertToTitle(701));  
}

// This Dart program converts a given column number (like in Excel) into its corresponding column title using English alphabets.
// The logic is similar to converting a number into base-26, but with letters A–Z instead of digits 0–9. 
// Inside the loop, num is first decreased by 1 to adjust for 1-based indexing (since ‘A’ corresponds to 1, not 0).
// Then, it finds the remainder when divided by 26 — this gives the position of the current letter. The ASCII value of ‘A’ is 65,
// so String.fromCharCode(65 + charIndex) converts the remainder into the correct letter. The process continues until the number becomes zero, 
// and letters are added to the front of the result string to build the title in reverse order. For example:

// 1 → "A"

// 28 → "AB"

// 701 → "ZY"
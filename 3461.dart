class Solution {
  bool hasSameDigits(String s) {
    while (s.length > 2) {
      String store = "";
      for (int i = 0; i < s.length - 1; i++) {
        int sum =
            ((s.codeUnitAt(i) - '0'.codeUnitAt(0)) +
             (s.codeUnitAt(i + 1) - '0'.codeUnitAt(0))) % 10;
        store += String.fromCharCode(sum + '0'.codeUnitAt(0));
      }
      s = store;
    }
    return s[0] == s[1];
  }
}

void main() {
  Solution s = Solution();
  print(s.hasSameDigits("3902")); 
  print(s.hasSameDigits("34789"));
}

// This Dart program repeatedly transforms a numeric string by replacing it with 
// a new string formed from the sum of every pair of adjacent digits modulo 10.
// Inside the loop, it takes each neighboring digit pair, converts them to numbers,
// adds them, applies % 10, and converts the result back into a character to build a shorter string. 
// This process continues until the string is reduced to exactly two characters.
// At that point, the program simply checks whether the two remaining digits are the same.
// If they match, the function returns true; otherwise, it returns false, 
// indicating whether the original string eventually reduces to equal digits.

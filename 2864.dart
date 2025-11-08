class Solution {
  String maximumOddBinaryNumber(String s) {
    int zeros = s.split('').where((c) => c == '0').length;
    int ones = s.length - zeros;
    return '1' * (ones - 1) + '0' * zeros + '1';
  }
}

void main() {
  Solution s = Solution();
  print(s.maximumOddBinaryNumber("010")); 
}


// This Dart program rearranges a binary string to form the largest possible odd binary number using the same digits.
// In binary, an odd number always ends with a 1, so the goal is to place one 1 at the end and arrange 
// the rest of the digits to make the number as large as possible.
// The program counts how many 0s and 1s are in the string. 
// Then it builds the result by placing all remaining 1s at the start 
// (except one for the end), followed by all 0s, and finally a single 1 at the end. For example, with "010",
// there are two 1s and one 0, so the result becomes "1" + "0" + "1" = "101", 
// which is the maximum odd binary number that can be formed.
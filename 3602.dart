class Solution {
  String concatHex36(int n) {
    int square = n * n;
    int cube = n * n * n;

    return _convertToBase(square, 16) +
           _convertToBase(cube, 36);
  }

  String _convertToBase(int number, int base) {
    if (number == 0) return "0";

    const chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    String result = "";

    while (number > 0) {
      int remainder = number % base;
      result += chars[remainder];
      number ~/= base;
    }

    return result.split('').reversed.join();
  }
}

void main() {
  Solution s = Solution();
  print(s.concatHex36(10)); 
}


// This Dart program generates a combined string by converting the square of a number to hexadecimal (base 16) 
// and the cube of the same number to base 36, then concatenating both results. 
// Inside concatHex36, it first computes n² and n³, then calls a helper method to convert each value into the required base.
// The _convertToBase function performs standard base conversion by repeatedly dividing the number by the base, 
// collecting the remainders, and mapping them to characters using the string "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ". 
// Since remainders are collected in reverse order, the result is reversed at the end to produce the correct representation. 
// Finally, the hexadecimal version of the square and the base-36 version of the cube are joined together and returned as a single string.
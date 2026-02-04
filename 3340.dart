class Solution {
  bool isBalanced(String num) {
    int balance = 0;
    int sign = 1;

    for (int i = 0; i < num.length; i++) {
      int digit = num.codeUnitAt(i) - '0'.codeUnitAt(0);
      balance += sign * digit;
      sign *= -1;
    }

    return balance == 0;
  }
}

void main() {
  Solution s = Solution();
  print(s.isBalanced("1210")); 
  print(s.isBalanced("123"));  
}

// This Dart program checks whether a numeric string is balanced by comparing the alternating sum of its digits.
// It starts with a positive sign and adds the first digit to a running total, then flips the sign and subtracts the next digit, 
// continuing this pattern for the entire string. The variable balance keeps track of this alternating addition and subtraction, 
// while sign switches between +1 and -1 on each step. 
// Each character in the string is converted to its integer value before being applied to the balance. 
// If the final balance is zero, the function returns true, indicating the number is balanced; otherwise, it returns false.
class Solution {
  int addDigits(int num) {
    if (num == 0) return 0;
    return 1 + (num - 1) % 9;
  }
}

void main() {
  Solution s = Solution();
  print(s.addDigits(38));
  print(s.addDigits(0));  
}

// This Dart program finds the digital root of a number — that is, repeatedly adds 
// the digits of a number until only a single digit remains.
// Instead of using loops, it uses a smart mathematical shortcut based on number theory.

// Here’s how it works:

// If the number is 0, it directly returns 0 because the digital root of zero is zero.

// Otherwise, it applies the formula:

// Digital Root = 1 + (num - 1) % 9 

// This formula works because every number’s digital root follows a repeating pattern modulo 9. 
// It effectively mimics the process of repeatedly summing digits without explicitly looping through them.
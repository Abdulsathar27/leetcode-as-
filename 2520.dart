class Solution {
  int countDigits(int num) {
    int answers = 0;
    for (int n = num; n > 0; n ~/= 10) {
      int digit = n % 10;
      if (digit != 0 && num % digit == 0) {
        answers++;
      }
    }
    return answers;
  }
}

void main() {
  Solution s = Solution();
  print(s.countDigits(1248));
}

// This Dart code, defined within the countDigits method, calculates how many of an integer's
// own digits can evenly divide the original number. 
// It works by converting the process of digit extraction into an iterative loop that preserves the original number.
// Specifically, the loop uses a temporary variable to repeatedly 
// check the last digit using the modulo operator ($\% 10$) and then removes 
// that digit by performing integer division ($\sim/= 10$). In each step,
// the isolated digit is checked against two conditions: that it is not zero
// (to prevent division by zero) and that the original number is perfectly divisible by that digit.
// A counter is incremented for every digit that meets both criteria, and 
// this final count is returned once all digits have been processed.
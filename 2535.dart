import 'dart:math';

class Solution {
  int differenceOfSum(List<int> nums) {
    int element = 0;
    int digit = 0;

    for (int i in nums) {
      element += i;
      int n = i;
      while (n > 0) {
        digit += n % 10;
        n ~/= 10;
      }
    }

    return (element - digit).abs();
  }
}

void main() {
  Solution s = Solution();
  print(s.differenceOfSum([1, 15, 6, 3]));
}


// This Dart program calculates the difference between the sum of the numbers in a list and the sum of all their digits.
// Inside the differenceOfSum function, it loops through each number, adds it to a total called element,
// and then separates each digit of that number using the modulus and integer division operators to calculate another total called digit.
// After processing all numbers, it finds the absolute difference between element and digit using the 
// .abs() method from dart:math. In the example list [1, 15, 6, 3], the total of numbers is 25 and the total of digits is 16,
// so the absolute difference returned is 9. This shows how you can use loops and arithmetic operations in 
// Dart to break down and analyze numbers effectively.
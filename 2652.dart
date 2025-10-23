class Solution {
  int sumOfMultiples(int n) {
    int sum = 0;
    for (int i = 1; i <= n; i++) {
      if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0) {
        sum += i;
      }
    }
    return sum;
  }
}

void main() {
  Solution s = Solution();
  print(s.sumOfMultiples(10));
}

// This Dart program finds the sum of all numbers from 1 to n that are divisible by 3, 5, or 7.
// Inside the sumOfMultiples function, a loop runs from 1 up to n, and for each number, 
// it checks whether it’s a multiple of 3, 5, or 7 using the modulus operator (%). 
// If the condition is true, that number gets added to the sum variable. After the loop ends,
// the total sum is returned as the result. For example, when n = 10, 
// the numbers divisible by 3, 5, or 7 are 3, 5, 6, 7, 9, and 10, and their total is 40, which is the output.
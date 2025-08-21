import 'dart:math';

class Solution {
  int findGCD(List<int> nums) {
    int smallest = nums.reduce(min);
    int largest = nums.reduce(max);

    
    return smallest.gcd(largest);
  }
}

void main() {
  var sol = Solution();
  print(sol.findGCD([2, 5, 6, 9, 10]));
}

// This Dart code calculates the greatest common divisor (GCD) of the smallest and largest numbers in a given list.
// It first finds the smallest and largest elements in the nums list using the reduce method.
// Then, it uses Dart's built-in gcd method on the smallest number to compute the greatest common divisor with the largest number.
// The main function demonstrates this by printing the GCD of the smallest and largest numbers from the provided list.
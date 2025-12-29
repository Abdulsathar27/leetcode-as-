
class Solution {
  String convertToBase7(int num) {
    if (num < 0) {
      return '-' + convertToBase7(-num);
    }
    if (num < 7) {
      return num.toString();
    }
    return convertToBase7(num ~/ 7) + (num % 7).toString();
  }
}

void main() {
  Solution s = Solution();
  print(s.convertToBase7(100)); 
  print(s.convertToBase7(-7)); 
}


// This Dart program converts an integer into its base-7 representation using recursion.
// It first checks if the number is negative, and if so,
// it converts the positive version and simply adds a minus sign in front of the result.
// For numbers smaller than 7, it directly returns the number as a string because single-digit base-7 values are 
// the same as base-10. For larger numbers, the function recursively divides the number by 7 and appends 
// the remainder (num % 7) to build the base-7 digits in the correct order.
// This recursive breakdown continues until the base case is reached,
// resulting in an accurate base-7 conversion for both positive and negative numbers.
class Solution {
  int minimumSum(int num) {
    var s = num.toString().split('')..sort();

    
    int first = int.parse(s[0] + s[2]);
    int second = int.parse(s[1] + s[3]);

    return first + second;
  }
}
void main() {
  final sol = Solution();

  int num = 2932;
  print(sol.minimumSum(num)); 
}

// This Dart code calculates the minimum possible sum of two two-digit numbers formed from the four digits of the input number num.
// It first converts the number to a string, splits it into individual digits, and sorts them in ascending order.
// Then, it combines the smallest and third smallest digits (s[0] and s[2]) to form the first two-digit number,
// and the second and fourth smallest digits (s[1] and s[3]) to form the second two-digit number. Finally,
// it returns the sum of these two new numbers, which guarantees the minimum possible sum.
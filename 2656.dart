class Solution {
  int maximizeSum(List<int> nums, int k) {
    int x = nums.reduce((a, b) => a > b ? a : b);
    return x * k + k * (k - 1) ~/ 2;
  }
}

void main() {
  Solution s = Solution();
  print(s.maximizeSum([1, 2, 3, 4], 3));
}

// This Dart program calculates the highest possible sum you can get by repeatedly 
// selecting the current maximum number from a list and then increasing that 
// number after each selection. First, it finds the maximum value in the list using reduce,
// storing it in x. Instead of repeatedly modifying the list in a loop, 
// the logic uses a mathematical formula to optimize the calculation: since each time you pick x, 
// the next time its value becomes x+1, then x+2, and so on, for k times. The total can be expressed as
// x*k + k*(k-1)/2, where k*(k-1)/2 represents the sum of the increasing increments.
// For example, with [1, 2, 3, 4] and k = 3, the values picked are 4, 5, 6, and the resulting sum is 15, 
// which is returned as the output.
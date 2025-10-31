class Solution {
  int theMaximumAchievableX(int num, int t) {
    return num + 2 * t;
  }
}

void main() {
  Solution s = Solution();
  print(s.theMaximumAchievableX(3, 2));
}

// This Dart program calculates the maximum possible value of x that can be achieved based on two numbers,
// num and t. The idea is that in each operation,
// you can increase num by 1 and simultaneously increase x by 1, 
// and this can be done t times in both directions — effectively adding 2 * t to num. 
// The function simply returns num + 2 * t, representing this total change.
// It’s a direct mathematical formula without using any loops, making it very efficient.
// For example, if num = 3 and t = 2, the maximum achievable value of x is 3 + 2*2 = 7, which is the output.
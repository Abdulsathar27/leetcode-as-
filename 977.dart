import 'dart:math';

class Solution {
  List<int> sortedSquares(List<int> nums) {
    int n = nums.length;

    List<int> ans = List.filled(n, 0);

    int i = n - 1;

    int l = 0;
    int r = n - 1;

    while (l <= r) {
      if (nums[l].abs() > nums[r].abs()) {
        ans[i] = nums[l] * nums[l];
        l++;
      } else {
        ans[i] = nums[r] * nums[r];
        r--;
      }

      i--;
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.sortedSquares([-4,-1,0,3,10]));
  // [0,1,9,16,100]

  print(sol.sortedSquares([-7,-3,2,3,11]));
  // [4,9,9,49,121]
}
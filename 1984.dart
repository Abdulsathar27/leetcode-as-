import 'dart:math';

class Solution {
  int minimumDifference(List<int> nums, int k) {
    nums.sort(); 
    int minVal = nums[k - 1] - nums[0];
    for (int i = 1; i <= nums.length - k; i++) {
      minVal = min(minVal, nums[i + k - 1] - nums[i]);
    }
    return minVal;
  }
}
void main() {
  var sol = Solution();
  print(sol.minimumDifference([9, 4, 1, 7], 2)); 
}

// This Dart code calculates the minimum difference between the highest and lowest scores of any k students from a given list of nums.
// The minimumDifference method first sorts the nums list in ascending order.
// It then initializes minVal with the difference of the first k elements.
// A loop then iterates through the remaining possible subarrays of size k,
// calculating the difference between the largest and smallest elements in each subarray and updating minVal with the smallest difference found. 
// Finally, the minimum difference is returned.
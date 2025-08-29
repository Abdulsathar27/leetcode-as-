class Solution {
  int countKDifference(List<int> nums, int k) {
    int n = nums.length;
    int ans = 0;

    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if ((nums[i] - nums[j]).abs() == k) {
          ans++;
        }
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();
  List<int> nums = [1, 2, 2, 1];
  int k = 1;
  print(sol.countKDifference(nums, k)); 
}

// This Dart code counts pairs of numbers in a list whose absolute difference is equal to a given integer k. 
// The countKDifference method uses two nested loops to iterate through all possible pairs of indices (i, j) where i < j.
// For each pair, it checks if the absolute difference between nums[i] and nums[j] is equal to k.
// If the condition is met, it increments a counter ans. Finally, it returns the total count of such pairs.
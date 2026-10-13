class Solution {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    List<List<int>> ans = [];

    for (int i = 0; i < nums.length - 2; i++) {
      if (i > 0 && nums[i] == nums[i - 1]) continue;

      int j = i + 1, k = nums.length - 1;

      while (j < k) {
        int sum = nums[i] + nums[j] + nums[k];

        if (sum < 0) {
          j++;
        } else if (sum > 0) {
          k--;
        } else {
          ans.add([nums[i], nums[j], nums[k]]);
          j++;
          k--;

          while (j < k && nums[j] == nums[j - 1]) j++;
          while (j < k && nums[k] == nums[k + 1]) k--;
        }
      }
    }
    return ans;
  }
}
void main() {
  Solution solution = Solution();

  List<int> nums = [-1, 0, 1, 2, -1, -4];

  print(solution.threeSum(nums));
  // Output: [[-1, -1, 2], [-1, 0, 1]]
}
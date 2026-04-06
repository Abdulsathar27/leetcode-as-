class Solution {
  List<int> sortArrayByParity(List<int> nums) {
    int l = 0;
    int r = nums.length - 1;

    while (l < r) {
      if (nums[l] % 2 == 1 && nums[r] % 2 == 0) {
        // swap
        int temp = nums[l];
        nums[l] = nums[r];
        nums[r] = temp;
      }

      if (nums[l] % 2 == 0) {
        l++;
      }

      if (nums[r] % 2 == 1) {
        r--;
      }
    }

    return nums;
  }
}
void main() {
  Solution sol = Solution();

  print(sol.sortArrayByParity([3, 1, 2, 4])); 
}
class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 0;

    for (int ele in nums) {
      if (i < 2 || nums[i - 2] != ele) {
        nums[i] = ele;
        i++;
      }
    }

    return i;
  }
}

void main() {
  List<int> nums = [1, 1, 1, 2, 2, 3];

  int k = Solution().removeDuplicates(nums);

  print(k); // 5
  print(nums.sublist(0, k)); // [1, 1, 2, 2, 3]
}
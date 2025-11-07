class Solution {
  int sumIndicesWithKSetBits(List<int> nums, int k) {
    int ans = 0;
    for (int i = 0; i < nums.length; i++) {
      if (i.toRadixString(2).split('').where((c) => c == '1').length == k) {
        ans += nums[i];
      }
    }
    return ans; 
  }
}

void main() {
  Solution s = Solution();
  print(s.sumIndicesWithKSetBits([5, 10, 1, 5, 2], 1)); 
}

// This Dart program finds the sum of elements in a list whose index positions have exactly k set bits (1s) 
// in their binary representation. Inside the sumIndicesWithKSetBits function,
// it loops through each index i of the list. The expression i.toRadixString(2)
// converts the index into its binary form (for example, 3 becomes "11"),
// and then it counts how many '1' bits appear. If that count equals k,
// the element at that index (nums[i]) is added to the total ans.
// Finally, the total sum is returned. For example, 
// in [5, 10, 1, 5, 2] with k = 1, indices 1 (01) and 2 (10)
// have one set bit, so their elements 10 and 1 are added to 5 from index 0, giving a total of 13.
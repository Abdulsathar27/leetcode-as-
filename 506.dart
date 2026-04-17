class Solution {
  List<String> findRelativeRanks(List<int> nums) {
    int n = nums.length;

    List<String> ans = List.filled(n, "");
    List<int> indices = List.generate(n, (index) => index);

  
    indices.sort((a, b) => nums[b].compareTo(nums[a]));

    for (int i = 0; i < n; i++) {
      if (i == 0) {
        ans[indices[i]] = "Gold Medal";
      } else if (i == 1) {
        ans[indices[i]] = "Silver Medal";
      } else if (i == 2) {
        ans[indices[i]] = "Bronze Medal";
      } else {
        ans[indices[i]] = (i + 1).toString();
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.findRelativeRanks([5, 4, 3, 2, 1]));
  

  print(sol.findRelativeRanks([10, 3, 8, 9, 4]));
 
}
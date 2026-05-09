class Solution {
  int sumOfUnique(List<int> nums) {
    const int kMax = 100;

    int ans = 0;

    List<int> count = List.filled(kMax + 1, 0);

    // Count frequency
    for (int num in nums) {
      count[num]++;
    }

    // Add only unique numbers
    for (int i = 1; i <= kMax; i++) {
      if (count[i] == 1) {
        ans += i;
      }
    }

    return ans;
  }
}

void main() {
  Solution sol = Solution();

  print(sol.sumOfUnique([1,2,3,2])); // 4
  print(sol.sumOfUnique([1,1,1,1,1])); // 0
  print(sol.sumOfUnique([1,2,3,4,5])); // 15
}